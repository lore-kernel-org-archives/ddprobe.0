Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF472D023
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742677194; cv=none; b=u3vq/mYNnOML5LY/SRuMvn7WlLt2U1lh1gH6/c3qZLyA8rRDZkjqoCwZBOaslIT9ypkUXEBL/jHqIKei1TVpCc84B1PR3zUdVBzIzrmHH28JnBC6J6II/+bzTUDsWWdvh5iUpRXmHPPmoVdo4oH+aRJl00mxUrFc8Qboydk/h38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742677194; c=relaxed/simple;
	bh=hd+P82Vu37sFshFSisX46wt2nuW+5GICCGeFtLxglh0=;
	h=To:Subject:From:Message-Id:Date; b=Qtfv1XL+6fJ5DCN8DEVS8prPWvxVHkmz2G8FR0+oVMDgJFXIMfLnRJm2E7SRuc7mjX03h108kvvFqr8ZSgIHSx03WhHh93EJYwnyg/e8vrnlnItAV3mvZmhYz3nFgahlaGeiaCpoKAkbX0g1f60/Ug9Rm/Iyoc3KM+FGyWt1wLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tmxbimxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tmxbimxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA5C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742677193;
	bh=hd+P82Vu37sFshFSisX46wt2nuW+5GICCGeFtLxglh0=;
	h=To:Subject:From:Date:From;
	b=TmxbimxxjR8C5RfycQDLAGheHKtcscqmwTGRicW+Io52E7FMyXAG+PVFqodw+dhFs
	 84f8qwcOdNu2/r9Y6vk8M0pSq+h2MFa3ZoEnjCApODNBwt/MjfgrhfO+cSmCKAbvFx
	 zA4n8rWxcy7MWb950Q2fqldy1QzGiVK2ENdc72e7rhV8dRmYSDBLfmhSIgGDlyTC6t
	 xhzNbjyaPyxdLS5eh1jOSCjZm5+PuySUujIj+PLMMvXUAOIXoGaZBSdpZ/7S3Fb3HC
	 bL9hbtcrtzXPMoOeMpMRlQHJSOuPEDhH0vuf43L+74ctX/w7FpNTaRFJPIy6n5eVEz
	 TP4JNN84DQuRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97316C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267719357.381.14398746947048799520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba0b5055677b9966441c4e1e1aa1625747943561588a4c9a0d9c49d1ee8dc90
Date: Sat, 22 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742677193
