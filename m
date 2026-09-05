Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E47F30EF68
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788582634; cv=none; b=pEO+T5hnbXDqMgX3HdZED0hQpUGvm1E8vYTKJf61WwDrfBQfywCNa5W2YNkksJncq2No6ashR3h+mFr3kLe15e8/AN9OTPEEbSqIo24mw4CH/mU91+An2CwXIiHNC5eYy952Te86xb1MzkknTVaGgGvFPVOIQCxY44AY/1POD34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788582634; c=relaxed/simple;
	bh=9zWlcviMnP+HI2Xvr0BFaqJfLGpWWZNWbWXqERjklE4=;
	h=To:Subject:From:Message-Id:Date; b=eJ/CPymn42dsFs/B22WaI37wLiodOrgKxOBsX3hge+v5cP3ii9q88lzAytNk6Zdztgx7W/bRhgG/wkW7SeXbEpSeNPwFj5o8Oy4X6/EiECYhD1CS4WMSyiGRr1QxqaIxQXPc/BUsNAfmUrfBSomTiB1cCnjapy6mzta8DbDu92w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eohLcP+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eohLcP+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7805C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788582633;
	bh=9zWlcviMnP+HI2Xvr0BFaqJfLGpWWZNWbWXqERjklE4=;
	h=To:Subject:From:Date:From;
	b=eohLcP+UR9Hn9slw+dP43d1dsypxBcsSJbEolkKhQQ+Utp8Cb1OXqHl8vP921x+Fo
	 XDqK899zvetuh8dFl3JWvb8IBKFrfZW2FJK6djhxlTEpgCYJjn1/GsNJWzY5jgyvMX
	 BkLhOkE19EXQ769v65bZLb9Uj3u7JjKvnmgXUvoTikz+044zKxWP/tEYF7grGefewN
	 evegD/yzb8XPGBzT/svXorqukwGXxDd3l+vKJNYZII0RvK+4YeKjKiVdal9XGMQp2A
	 LV/AsgdwvHErO/s6ES1Ch2Q6bmULIbiqZq2nG7fquWG+jU2NqvkOSPsAsBO+cjkJXh
	 sKHqEojOsOzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9921C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858263373.4621.2705192358477638451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14940a6f0a8278e3a960ae54afda9aae4f1b83f0d2a4ed893fedbf0af5a72849
Date: Sat, 05 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788582633
