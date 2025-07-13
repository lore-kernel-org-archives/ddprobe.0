Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB9623A6
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752428394; cv=none; b=gSSe5v8dalqi3zi4LbrjaJ4b6tRCYhn44MjnFdMxC/TszRCaI30DmfOe6Qr5U1pkIRm3CPWd7KQtl/+yPMZrECJFvw1kZnRv/GQX7Ai+k/nYpAwN9uz4xGSHIycNw9tSxLnhG5WR6wvnE9487fGbeOdC9EYTlpVHBA9xTJT8xRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752428394; c=relaxed/simple;
	bh=UDEb+h5FhU+RK0Botov2hVYLFQ6obuC5Vr4Wz0Kkqyg=;
	h=To:Subject:From:Message-Id:Date; b=sXT7KySLxSnzqdVWGd+OuqK5PUhyZEyxmW/6veBFYgJEcm/9N9/zKq8gxunH2fl0EHYyEr3EzWlrVV/cUPLKX0UEPlCUKoof8pJASpd974rc/wqPCOZOgjfo3GNX8dQlKoFQ19rwI2CrMeDD8/3Z844pIt3iqmeRrLNxsAShoyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvvhEzIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvvhEzIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A77C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752428393;
	bh=UDEb+h5FhU+RK0Botov2hVYLFQ6obuC5Vr4Wz0Kkqyg=;
	h=To:Subject:From:Date:From;
	b=kvvhEzIBnVEnkJRh/Erzm7MHDIWCtqsSzZkZt0GF8WqfClpggSqPSrPKH5VloNU3U
	 YUT0qjlr4D843PVfIYS+oDdr9ch8kcZkd5yvJoNfjQl9mfsNPfIXqG1EtHgfTGHZlc
	 ehHPl5l0IDhMqXR32Y3nh59Ukx5ZZkCZogmg1kqO2sKPsj3oxmCc8q/4ziSA4u+WB6
	 1uvsdYKoLFhFSQVGa6MnOBgqnHV7rrFDHSXq9NaohPjpZZ2lsZ1NMAxYE6cAhom/X4
	 XuY5pL+BE2i0ku1/FhHg1VKqF6iREExi8Z/1eLJ3WMtTQ2YSk98rdBrkSyRMbzp6P6
	 kw7FiY/NgIIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F664C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242839357.9870.5566614443382600702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfbdae23b04d8f61e4c0e6b91cafe59d2bb32f2b0724d2c3cf207235c7a023c
Date: Sun, 13 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752428393
