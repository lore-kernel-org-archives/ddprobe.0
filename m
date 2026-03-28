Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D492AEF5
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774659894; cv=none; b=IJdNsqDzDTy9F0FplPyyRquqBgr1eBLUW4kimm13WMXn53Y8mCCec/GyciPWd97grNOnQLPNc7v0yCPicsdyzY1iAZN/2JHo3hfC+dxwOLha3cemg1VAyO9hsuBAUKS2zucA7ACuBGyIsY+hB1x0MCEqHtSiMG+3TTn/ij5k7Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774659894; c=relaxed/simple;
	bh=HXThnXkS1o/LN/Bk3vzcl7gPQWVbBljxrt/gKXd/o0g=;
	h=To:Subject:From:Message-Id:Date; b=YE0XHVWRwTp7ltGLRPKFcG6f/Dy2isZE6hBAAiKpXBU3m02C2F6QPjFdsfOoKrD6MovkOj9jmEp2swAEzPYRpRDn0L4VquKODu+haTeVjkIGA+gZFEbk3HT9HsogC+n0zKsARlj+cTUnXQH0zm7nzc0orkYbfFCb8jUi3dz3/7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb8VHN3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb8VHN3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDECC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774659893;
	bh=HXThnXkS1o/LN/Bk3vzcl7gPQWVbBljxrt/gKXd/o0g=;
	h=To:Subject:From:Date:From;
	b=Tb8VHN3m/B7Pp1DLs9mupLgRQz3uKsr+X8V+yyf4BSxmwo2E6kb8UoEu69IW8ILkQ
	 U0Fy38OiNWxUCZJ3NZ1ee8Utubrs7y8LljEHhgn6po36FIvliwyBBTuTKtKjo4onfZ
	 ANnG+CZihw8FMc9jz8+moTZnolrirfYAK3+XKY3ISDjVRZ+PRy5QEXHuwri7DGW/V7
	 t15UTt48kto7NC7x5/OSa0lLJNPg20ghIur5VfrULyr3Pd0+PM2i9K65CC+lEJr1KP
	 mMIkQ601m/h1CPScIOO9i8okU/kWSs7ETaWsgLCMSFooJcngCJKdLdJLJuVfre0QuV
	 XKj5PAqVnCMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FED10F3DC2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465989358.25358.14097715342571102709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06fac8de802b55870995a1acc1288f97ced1cba6eec68edb34103ebe14a98ae
Date: Sat, 28 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774659893
