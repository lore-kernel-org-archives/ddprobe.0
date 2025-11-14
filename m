Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0667021C16E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763128794; cv=none; b=qVZlU0liIqe0ifv5Cy/iiSfKgUeGOaUNL1BWfvZjz9s++cA88sq9B6FWepFvlzzt09AIT8s6pJ/YfbsM+8W+bgjnQC+xSx93/WUwWjF4iPxe0Ic8lWFNkFkvtBgG/R2O5hu4kt0/hxBX1u5oU+TzQk9JqoSeJ604PenVbwGcY8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763128794; c=relaxed/simple;
	bh=BPH+IK2RydXHsefLrnweGqbZbxc1ok9op7N2zvS3B90=;
	h=To:Subject:From:Message-Id:Date; b=qQfIOGafOPBn4JqZ8py4inBqGApJ4MIWedDyXXL/QNn4vxjZquVUIFyCdFwJphVGGosNbGhSbr5bmSq2Bhyz94RiM72aK7UOUyuTAvaHcRyHwiEncN0n9DOlM+uG9/hyCYps7i2MTv1Kyz8yv6pLJeb3BrXz8dwERhj8ZSrPgzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtRCFesQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtRCFesQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E33EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763128793;
	bh=BPH+IK2RydXHsefLrnweGqbZbxc1ok9op7N2zvS3B90=;
	h=To:Subject:From:Date:From;
	b=DtRCFesQGlFfhShhLPm9i73VaFQk3BXPRaC8pmaoMzTzq2xJoFGFokSIj+7J5q5Za
	 +ALSDNf+HPO6YHvXADz/l5L8hoZF0F1NRMmE0LWx29PtXQUDO/mvn7Og7qe3Vpe4y9
	 Y20HdlsYFA6eJnhk3uCZZCC8DxS5xPHv/DIoCGVrrU9O2zx8YWBnqA1g0/zi+rok77
	 DpOGaSx3Km9gM1sDX8Etr7bhG5L+dO0L7HYCIqOAxV4YmEiVReje2fJKNxmjybzFU/
	 3cYGkXIaHuqDeAuSVRmFuSUzeimXLRthpaAOODO7r9D8zgjJ7WA69f5rOCRGcCCtFB
	 bzkfPOU6tDAww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8FCE7B0E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312879358.4355.4294390888719419008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64a5c6cdbe732846ae7c61bfbd4aa048f6d2885ecf21dc23321d973ff787c4b
Date: Fri, 14 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763128793
