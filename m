Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D964C98
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758686394; cv=none; b=spwfMsuH1cyAsl+AEn2qONCGf3ZvcEcKsptbZTpdf+1yEkSKwI5I2ssslvq8LOtzFsNIm6wzP8xKcnlM7bKwI7YUkJL0HDqqnEjeOJjA5L4X65AbW4Kg9dDcKAV/YEzswAZsdYnGnqBmKA5l/qTLdfBDcT2RUm+P2V+4mBVyrk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758686394; c=relaxed/simple;
	bh=nHnLlS89iXZWro47Bihsk5rpBjNvNLF78BE8WvPl/Fw=;
	h=To:Subject:From:Message-Id:Date; b=lOOgPtPlYTF8ZI2jfjAmDBmhpxOD759ShSH4B7YH5p0amepIrSZXnsi3gaQbjJaHkHeRtMHiEVzwyqgsUCxJv41jWedPxU5alx94MxABma7x/35CvqnkUwZUshKQyt56BpWHW1jOTx0M5WUhxTfZnPcVyTFviicp9ONT0/4WfuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuqASuMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuqASuMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758686393;
	bh=nHnLlS89iXZWro47Bihsk5rpBjNvNLF78BE8WvPl/Fw=;
	h=To:Subject:From:Date:From;
	b=cuqASuMYdTpE2ApaQAEsOOL89DR4s+q/bjX48sLKBD5yOG870/tiOKkzFx1czW0tu
	 qSQ5yfqF3Iz4HTiIB0LcYIOLrNkT++RRv4ecPkdnDn+oPmHV/aRauK+aF7Ehp0/O6x
	 g1hWui+Bv88n4QTFYpX60v1N5mbTnBn04+GT8M/7OrbSPHK/pKiVcsBGtkNFtmzuFk
	 gcYsw9DseSMXQCBGoGeaclOhpKf459I+sWtU3rZ9zCOnsvPDbDFkE2ymjdmgdvqxLI
	 LODAhFfwlHb/irSljekl4H7vdk8+SJyfVPRIUks3s3i31mjP/ILzICxdZ9D1jSnl+m
	 jwieq2c99B/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904EFCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868639358.27544.12704399502089616739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9d2d9ba1d0c4afd4f233d73173f99bdd6963000931c41fc707eadd8a172ca0
Date: Wed, 24 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758686393
