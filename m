Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EB84C65
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717856243; cv=none; b=mLkPHTFNcD0xeF/O/8/cGaHq9ZQAhMG30rnOa0kwPPfOx0WKy1m8JcUxTm5Da7JeK4TeQ2lYyN7VpP45SBMwyO9SWLs6kMtTvPcEILAXGHmGkUXdIlmpGuJOw6x1k4Qz0FD8rkj7vK1eHxv9SFhPEQ8dmCi/kGb1XL5EfZiF5cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717856243; c=relaxed/simple;
	bh=HhnEMMI6QCQAZ6wCkQeIHRCTa2ucYAOXagi9qsgmNA0=;
	h=To:Subject:From:Message-Id:Date; b=jsBWQAPkiNJZSWI674PAvkfGHmvY0UHV83CdN13tJxfYXOV7rPJZUlc5cm6EumyF45KWfIe9mHCwANWDgcyRt4l/lFiLATE+z1Ha7gOuMjfR6cc3u3H75oF3m1AOll+vQvIp6Kgv9S6LnEwvhsn3gqAMfrxyxjFvy5r3O6h7Ix0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSrkTENU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSrkTENU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78C3C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717856242;
	bh=HhnEMMI6QCQAZ6wCkQeIHRCTa2ucYAOXagi9qsgmNA0=;
	h=To:Subject:From:Date:From;
	b=SSrkTENUpfiFm2UAUUmQjr5K4I9xxUtBihK45Dn5Cv4qvZ6XOC4YXXsWiNdQYvHGG
	 pZkcE1vk29fSWl6SwolcmluHOr2ONh20caqj3EveV5JIXVmNgyiom7gRQMA/6mYUtt
	 Fb2H+pfJWyaf5dEy0+syYYgSVb1pecsnVtKTVrZr8J3Nna3ujgqL8Iy7I5DPUirPfo
	 SS5mgCjrYGutcz20Oi5Z1Z3kUcBBKnKH0D6x6SAcS6B5T31y8pK3rU2+lndLWjoePc
	 S5qqTwLFSNKuRZ6sAG+kGlAsI8ZrEeq4LCznV+pGyKy2bdjw0RWaPH05QHYoIkhI/F
	 /vt6i8i0DspQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A8DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785624280.19283.3194384350904337481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095a3449c2d12362920c90adb4390e2e58054de8828dc0c21026e41c043bf8d4
Date: Sat, 08 Jun 2024 14:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717856242
