Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DEB379EDF
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786693; cv=none; b=f5UWMAaym53Z3jD1P7iCknCZuu/N7GKpOZblFOAMkPmmOEUxApdqsypR9gSMKwCjuPekmIMLs1SihaTXcBGdgM6mQ2HdNj2AVDAo1DKWYgOm4FFdr/7RNVKyojX4nsf2jg+NMUGZPLSLjbLsruLtd1WfZ4vl3DN2R5ji1BLzcOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786693; c=relaxed/simple;
	bh=5X2Eczu22BVeCc2V0ItqOOKoUxvTRozmRP6Mf0w0OkY=;
	h=To:Subject:From:Message-Id:Date; b=Cdg0FLZHyb42Zrndi3xVJtsS99AxBWHOIFtiN+u/5brxE3JYQVGVmp96Nd71zTarDmrSiFZuVmVLkZmCN4CeAbJqoPGn1VCOAFr4lhZw+/PKvY1MaxRLT/2hRegSYZi3ToVTfHxe1PkVpsIpMYsHCAi957ODR4nIADUMABT86eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WU+6XDfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WU+6XDfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2671C2BC9E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772786693;
	bh=5X2Eczu22BVeCc2V0ItqOOKoUxvTRozmRP6Mf0w0OkY=;
	h=To:Subject:From:Date:From;
	b=WU+6XDfPDJulpeJavE7zlV7p/NUKJRNM2lSgH9WdRh73Z/oAtaCHSpglZvIwvogrh
	 oLQzc96wK+OfE3YSgjr6T0rqnyhNXXOGTy7B+QGLAfJDth8iIfmV1AaXNbi+Tr1n0F
	 00rDhNvVemLYFdCWrDQxi3XpYJz9UcqmtuWZnHJxo4R8vbWVcB09Cdxa1VJfMPwg56
	 TZsaaw5t81K5DktfBRmelDNzWaVPtlKeHIuf5j5CLVH4RK8+KbyR+HVvILNi9bV0Y/
	 XokNdLY64IoRRlefdk6mgWWsyF+zEptdKrlRaeYPaFTFA1+BR4JcrtFyHdq1a30jc7
	 rvg+WcP1VaiJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC48F01812
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278669363.10286.8691491534139809049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748222c8f24c56acf85c8dca2e066f03a8ddc02abef46f048348d7885842154b
Date: Fri, 06 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772786693
