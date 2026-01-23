Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB4328B41
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769180034; cv=none; b=uxdi8rZWvsh3XvVmUC5KGRDjHR69mQ8Vrf6Za8n6ItmApWckCsJoVF2/OsBKmnypNiGi1WIT8zG62XLjH0TMDBmcrudC/mAB7okwc/1sLVgDH12gimHatHvDfSWZkxuBDrl3EM0jzTgh7a8JSD3Kwxr3yt5JQBJZ4ONU1DUbxy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769180034; c=relaxed/simple;
	bh=MoiWQkyxqakgqBLc+fmQmYT0n18qB/YMqBozkrpC5Uc=;
	h=To:Subject:From:Message-Id:Date; b=RcVcVQsHrFeshn/qYVhBs8FGnx6GP1Olno8Jg0nEyMJg5twlxn4EVdy/icytfzsLOt8upX/udbJ+qN6pZo7PYgvqe22jaMGtLhigvAJEtdXZZbK0cS4Ljn++O3u+NG/uzILVE/sFdxMa6o3B5aExYddJlBi1VZ0jEUP8XBt8BDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLW0PVdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLW0PVdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECFCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769180033;
	bh=MoiWQkyxqakgqBLc+fmQmYT0n18qB/YMqBozkrpC5Uc=;
	h=To:Subject:From:Date:From;
	b=OLW0PVdHaERx7z4B21glAm6BCo3HBO4PllYLkuh9qBjNty3L0aj75Zho04N6P3cUa
	 PHhAbPrOVKr9nk9yewPs4oSCIL7nAM1jnOPqK8J/JGIDy9YlxYZiadjXlApGsunKzE
	 7SXXNbOWmu5V1SvkcKfhosNj/ND/+JvALiX99lriBH6irnsSs9O4l6mgj/rKBBNSk6
	 dGIUYnNpv2K7eHfakdGGS6Lnw717LtwBhDzEVxh2XGvn97QP51oYe25XeCXyhKi6Ie
	 SufisRhxd//542Nyf1ef7xmc55SMMDzbkW7lpb9iEnI6kmr8x6jI/xP4wNnstI+yHY
	 gzk/lkLXN0IEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3CD74EDE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918003358.19792.18200320969552921033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9661b25647835ffb224c9fdfbb28eded7e9d50c6c60feaf942c1a63fde3af908
Date: Fri, 23 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769180033
