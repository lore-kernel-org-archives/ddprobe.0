Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122BE2F7AC3
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760490594; cv=none; b=jYd/2lRGti58mX7qqx93s72CLf6SNjG316ulEee7M8J6u8+wlIzQ3bJfp/NBEdhMdVi2CrXxWM/zIdcRo+oaqheFd2EhnNvsXc1qxhPSYh5AYDyMU5j/YeirxmI4wzzgmy1rI/U92bRZKv7hpw1hMyDCrznTmF0jWFEcTnjj34M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760490594; c=relaxed/simple;
	bh=y/Iav1t6w9f7z+Bz5OS2Mgiw7voNouHtQ9qjgjCLxj0=;
	h=To:Subject:From:Message-Id:Date; b=lpTE05Pzk4M5yMZCni8e5unJoiGOdLdU0MNO/1qyWNJv0WMkXFIoRKLaNKS7RqP/fvTZwFEqsDHJ147D8cInZ3tKFs38sZ+3VKCh916PWGN98dkm0WOek8RMA6wIsv7aoCJQZelifIAmqSsfwggR116CaGM+00zTBAcMBriPiKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrPrf3f2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrPrf3f2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAF3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760490593;
	bh=y/Iav1t6w9f7z+Bz5OS2Mgiw7voNouHtQ9qjgjCLxj0=;
	h=To:Subject:From:Date:From;
	b=BrPrf3f28lnsCFxuBM0LSqvecAyOWg1J01ZPCx1RvzBo6oxeqDZwpDL3R4lLih00A
	 DozOHeBiopsZMQ/rq2b0giBOxd8bgPQkGiFHDO6c37pbfaH+vOB3YAnfadvQd/E1a2
	 GNOVjcH1/m+aP87JzeRWopXuflcBom2mhkd0X9qHHFB/5zFAIMyepZ4dqbTVckrieQ
	 RpXNcbn1YYom/68Lu91iQkqTeAXlRDa/PDrf36JbrY7UUkpQ4yQKm/WQ133hnkONTp
	 jroNVhFyS6tuwNQMxw3c6QBKSn6XCmykyUVGtD/ju3yv50W/MxRhasz85f83HEFWeg
	 Gwjgkx7EPI+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED87CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049059357.6930.17578573445451527312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d535e5aca2420e378d529b830bbd37add03ee68aa24a225af5c80d0b736a3a
Date: Wed, 15 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760490593
