Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB45136672
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791507634; cv=none; b=hrFFnpv8QIijZSJRp+FBYgOp8QKwXWjWi9rGssKgQrOchrrX7OWu0L3aSfJ7OQRgH79f8mRalxyFYj+zUtn1KYSH1sAOLWtGB5R6VkWnFucAVOJghWT5C8cyBVDk+4wK2ovJfDB0KElIhFAeIb1sgs94z2ETI9U76rwtUkecFkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791507634; c=relaxed/simple;
	bh=OyBANRK6JRSA2IHYqNE4/9Oyll0rfuJv5r5MXKWg4r4=;
	h=To:Subject:From:Message-Id:Date; b=KHPaXpSsweRBOtM21ACrR0GSdV0lPXxzA4a3xkCPYY9rCMYc7845hF6sCrZLZsgIvKxETNbp9B8RFH4qSNhsNkoR5r6CbOYbs99rKIm9ZiBEQcKcsIhJ/2SxDcYA7DFIOmBtzujI55hDg1G0edvz56VANBLkmTdLDpqdFsH1Ipk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHE0E1Z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHE0E1Z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D193BC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791507633;
	bh=OyBANRK6JRSA2IHYqNE4/9Oyll0rfuJv5r5MXKWg4r4=;
	h=To:Subject:From:Date:From;
	b=sHE0E1Z6holQqtkru1OTi7d8OJyelf+zoiAS/Xlqv4rvI7r8zlo51NJ60mfDA7P2s
	 sNZ/YQS2ovpPEtZaFTaq14S5ELyZCvC4ABNMHCZ5KquHuI3PKH61V9HMyIa5BXgtKy
	 3I6eaP0jsc97wbJD/DNT8TL5HTpSL0cvBFVnN7eqzo6KOgswCy9kqV55Bx+jE0w49M
	 Yy8tnjv4vuWfEi0TCI/cuclIBcYp5sOTo38pvrHaCG1kKlrpK0o47KzInZs4E4eAD4
	 3w5mBxz316M8eUFGS5dDbLBSKaU1ebYVdLQYVotj1gTva+MCvQ1LzxxHWwvLf3i2Nb
	 yuU1Z4xeOumOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB8FCA6018
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150763368.2495.9572529612128102809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d1476f74a78ab680ac690ea33739ffd6d1d665cba0e9b45942601180cab267
Date: Fri, 09 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791507633
