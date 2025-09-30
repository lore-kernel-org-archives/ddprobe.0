Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C04C42049
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759249194; cv=none; b=BJqbMP8P3Z1+UglneQpD5aekMpBcjrEnhaG38/0raJt6Tk1lD6mOb8GIusBLVGixIft79V0eO0OV0OyQNjB3z+Y5mqQtzpjwsCKOv4l9uOOXOtefVzHw9QSJ5oeE/iKzut+EzlUnUwueak834d49fzTDfz2Vgo+iLRMEtr8bSyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759249194; c=relaxed/simple;
	bh=Hak7unuK8guGols9Ax7eviPZi96uWHCRrm2hmEaev1c=;
	h=To:Subject:From:Message-Id:Date; b=XFS7LBrGDFCOUWKkWn97eMpXOPu/vmYCAYHdZi7WLF2Jq30x996WQwcoszqkG6434UuAD9MaLrD0N/SmQkvfEMGzb6PEqPooM5om6dPCI1ooWzcOo/xHKdnsIMs+YPQb9Vao5TjAr+pTGqmbRp/35VI24lNA71EU6AfXVWqmRn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV+wg4qB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV+wg4qB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D3C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759249193;
	bh=Hak7unuK8guGols9Ax7eviPZi96uWHCRrm2hmEaev1c=;
	h=To:Subject:From:Date:From;
	b=XV+wg4qBt5PiBeOwXfdzmoRTmfejaPW5hOGyA7MOe1A0HabkBgZX7kQXjhiagBoWV
	 CxREHjq3CpV0J9QY1oHxTDdN1nmARbPnPgk85FJM2P4aKYMZftyDRdb4tlJ9LPPS6v
	 g4PpFMbOrWk68Rue8VQ0X6PE6xdkk5Gk6lPUW69GruPAK9BMV/33SdcwDvzhmytenO
	 zku4bOvuR2S8jdE3O+V+CsJxE64IEY3rusBqFZ2O1krz2tZaF1SbPux36RpI93id4O
	 Y0ZPDYN1oBbZeWQeJx5hw7UPRMR70QB4uNTdef7px2SPjropK6AscRYsx9oMQWWUyJ
	 2DfXY9DDKbfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCBCCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924919358.4464.7330520811224510778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1781f46ccc93a67812a22e4986d4826f85d161fda57526d4e4c1d7f3f7231416
Date: Tue, 30 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759249193
