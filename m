Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580CA5CDF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787187034; cv=none; b=hUcFCTuZfadQhNLGR6UaWAxIR8B+mGWi1MENd6j22V/5UXZQW7ptZQ/dTZO9pBX2iyGEzE3/pEcAXzhIvfup2oCaBSRiD1JyrTZ415mKGw0oIsfVSImPE/vqS3uYwkWldFseiM07S20CT9Kj/JwyPWAKdBO7qiJJob4hdzopuAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787187034; c=relaxed/simple;
	bh=gOig7mJuljK08gt8phEq8koFigAnHUQQeAh40AYIb70=;
	h=To:Subject:From:Message-Id:Date; b=OSeyduR7jQSa4fi+vfDZnvtJO9GOMV8boyzElGW7UxbEq05iK/d3Z8NTcPGyaw+xWFqmpFJ1CYkpuCBCDabUXSrwgKinsc5hMkllPuqG1ANc2laHWi4OtvHI4qdE2r3ZGSZzm6O6ZIZnfEV1QJ8Ikj2ubEj4rwSsK253IpAkX6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rf6uka2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rf6uka2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30B2C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787187033;
	bh=gOig7mJuljK08gt8phEq8koFigAnHUQQeAh40AYIb70=;
	h=To:Subject:From:Date:From;
	b=Rf6uka2YpSWFboVyQtwwGsjUQmG4ZcKQhhh3dd2sQgLY4q5vCj1x55OmWaeEcGlO1
	 AYITwFSJGISUa8GSP2KIy/2O21uSVjaAnWVc2ArW58aP4md8z3LMZhVwmocObrR3nf
	 VJXL/IuOIz4exl+mygzIIP3S3V2vj2LcxSIV5hINIOCdW+9d6wRhrjo4c93lNzO1Z9
	 utibgC5rTt86e8A96Ptg3PbOAijurG+GluaiIxCvylQJkSX09uLsr8j7R/NOAjv5Cn
	 XPlS6AzzxkOBy8aAo14/rIba4OiRbyV4dg2SRqYtdmB0QTdh3UtAM+APyuTVK3X0pi
	 x6wusdbvhFp4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D11C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718703368.7636.5076922796484966475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fb423a03f9f63d5b5a8466d542de6108a68ba86b451919424d3dd96b6220e9
Date: Thu, 20 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787187033
