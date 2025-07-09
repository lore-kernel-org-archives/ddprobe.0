Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A39A21D018
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752101394; cv=none; b=Xs1WX8jgu2Eo2BMWJLRIT72LFYUWth8d2HM9T0ahipkCFOnn98kyBJRmqD3BsC1TWRzSID277zPO7kLGpYVR33gI0eiDGXO6BHF0JnCmzz3ljlkiVrEl0IunYaj6iq9c7ytQEOoJ5JFPEMYaCFwz6O9gc5NA3peCBMj2gUJIIu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752101394; c=relaxed/simple;
	bh=QhuiU6ybQ2EQh7Tg7Boy9RGcYVo/uLydJKjROoSGBN4=;
	h=To:Subject:From:Message-Id:Date; b=DBSmRdfS9K2+WikWrRmeAaLtkLSPrqH14+kGPICJkwmpgTrpFVpo3MSaJ2TjDs1jFwlLw53OBQdi8ODHrA2lv9pwqUZ2tfzh1vSmXwxKpp4DDfORtsyJJZ+h5SUhRGGhmryytd8YTgKtsCL75O55AP731qRU3Gucu1wzivpNfIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqiKaVDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqiKaVDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B53C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752101393;
	bh=QhuiU6ybQ2EQh7Tg7Boy9RGcYVo/uLydJKjROoSGBN4=;
	h=To:Subject:From:Date:From;
	b=rqiKaVDYd2XVEXsR+fPjTHIPrAsZxZGml834qqFt7vCRm3JI+M8BPBRNCVqUOYSUV
	 DJmFhY+DA5dRQy8xQrHC0ZFGRKJD+0wDZiNA/LB8nw1LO9n6GBwpWHWdJvb8uONJ+C
	 5S/7OX6nGnTOnOdqODHYLVdmz7Jtr9YeyxYIgWGyD4BM6is7E+9J2xUsydviv6lLKf
	 nK1OK4nbn8JCL3bcdgMu6cQ6DAB9ujTsFm0NBGBud3G7znsXDYmFDLlxQBuDbRu4lC
	 ARuMzr7A4xBRy16xFUPwGQxAJustbSh0BW8Q9A4wQ81zyGqLO0BGBZn1d/keVOwy4W
	 9GMmtVhePcLnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9345BC83F17
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210139357.27116.14740140738483493109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15714d7dd44ae016f8b1cd5d10cd27c2550ad187a1a07668158b92b3e0b5206
Date: Wed, 09 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752101393
