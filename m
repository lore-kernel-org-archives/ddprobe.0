Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE2B17721
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718852363; cv=none; b=Qix4JpeU5qpw4oyAnASNTsn2HnWePqNrSQ5WTVz/HngmJMo02GL173RPchViA2V2z9J/GQKn2bCF44V0qEywQCeuQ5/OPc/cX29HZji0PQxXD8G/vahQQtKWWZXZ2EWqmvXCc5ln42K23xTfwWGO7Snu1QldkRO63RbXxMXEBR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718852363; c=relaxed/simple;
	bh=KelzyP9/W+1/IbVcRT/7OCsSPnJnsxNpUOaRUzo16VQ=;
	h=To:Subject:From:Message-Id:Date; b=af+EiqaWQzbx8jMneEIl5Sk8BO0U/67rZdSidU+QSYXd+k6e5hHBqMAk66qFb+hiJD6MbwraknK6tqCxZ3iwyInls4eDYgeKiGx5Fy63IWDS+1jxCTnH7d5PWvcRGD4TWVkceVNJ/Rcdx0ziW556EG989jaBZEhGkt+bCXU42+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pyn9AOFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pyn9AOFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 005A9C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718852363;
	bh=KelzyP9/W+1/IbVcRT/7OCsSPnJnsxNpUOaRUzo16VQ=;
	h=To:Subject:From:Date:From;
	b=Pyn9AOFp3EX/rfLUnk2WrHZ+29YcPVQhPga+LS+2XsiwzzkDeDf5zkgkaibA+bnIj
	 uu8MNzBWqXifCC2f8BerU41NsiQw4YO7hHP3Ukg0Fqcdx5KC19wk1hHRwvLsx6+3eo
	 X3UFm3jPatw9tufOM9X8po2JzCKI2MJV3J7VxW/MT2ExwMN+kgKRQnDuP/dPi0aLU6
	 Oppf1vhNFAKY97wSlurSnJdgBzj2sVzT5tpjV6QRZTAXnsYwoQFuAkCUcBe93MQAUd
	 0+7EBbdG+N7A+w1Fc2kwykKcWx+wEhPWG546wn7NmdqCLICeXWB/OdvOM+WzYXTB+P
	 QoQnPNEyc250w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD6D3C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885236285.2936.8521890465866950204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b404b224583a058cfcc3c96edbb7b1e37a2a836be3753b5e9648d648190f12
Date: Thu, 20 Jun 2024 02:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718852362
