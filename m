Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD18D25B083
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789252834; cv=none; b=bXcYPK8sw0dvh2nD7yBAep+v8Sj4Qd22UQ6peFyrXV5cSQz85LOd66H/7uZOhEMjtkqo6Q6TaNm4C2Kt42ErfMpbSOa4WAM3+nFUfxUkID0hGbgCqt/lk5W8fwlVQE7c+Hh7vQZyp0KnaUUsUzPw3OLEpmKnu4DoRpzeX7zth4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789252834; c=relaxed/simple;
	bh=0cKLXQscmbmcoI3qfYpmHwc98m1/JWaan2m3V4SFiJc=;
	h=To:Subject:From:Message-Id:Date; b=SbaK+BU6ifq0omz4zjhUi/ZGbxwGfd1wkXjHpBFBz4Xrk7/IaFjL7cbgSW92gEpObOwycN2xaNHmR1V5FZDe0vunXf4pvWijqSoho5KFVumHZv3UBPAIQ/0xsXP1MrGbtiYnUs5vAL7bAVKuVzOTkGqXfxKuWZzkW+e+2K0gWsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS6BuvcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS6BuvcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789252833;
	bh=0cKLXQscmbmcoI3qfYpmHwc98m1/JWaan2m3V4SFiJc=;
	h=To:Subject:From:Date:From;
	b=NS6BuvcIdawbOcmamwJPayidbJHgExPwo2NBA1ZSV9CTD3mbCIy0o4fb9X7MGuc3R
	 ymeOcaD30X5uBKrTSYyi+Frxi98o6XZ4PZqGdCVj9xfflYyninLA58NB6VNp1kKZ9f
	 9xQ5i0WPy7QgwmBB05XRCJ+2AYMaWtqQKAxuReiDREHNLZtOpGkaJ72OFyUn/kg1hS
	 zqUxHSRetCaghIoGbQjPe03U3PRElndjwtRv6nqMG31ESUsKbT9kV6UhYXRlH3w5EP
	 O/utWqKA/Zuiw8VRtqREHAY+fL+PP4z9cSHHJUfEhNWaCKCG0L1kogzfDu3ggwRMt5
	 5Q4fv307e689g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9DC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925283368.2132.8946831094781483097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8fb0f98a977daf624aaf1c038c89981a3b1a0675edb3a0f19d50ec2acd5134
Date: Sat, 12 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789252833
