Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4486B6EB5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728803754; cv=none; b=QffGeKw4mAFTLfkODwud4z2dCsmO01MfcfYtkyRxeWYdy/P0WMJ9PMPo4Yz296ueZRb8WIhXeWS1Bk0CJYEG1HQcZBL9IEGilssx8nMG5FDWfeNcEDmTiHmqE47XtyAwZN+b4qa7VA6WkoJnnmD2gapPN2CEi0Lz2miCmM2nHpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728803754; c=relaxed/simple;
	bh=zfNrIuvFntxOn24lq47Q+lR5F35tgbov8PJ17l8HPsE=;
	h=To:Subject:From:Message-Id:Date; b=evCniWl4vjhuOms3xfk8PKvRP6leMFRT5WihgrqBCIyMUGK637d38FkthFo3hwpTKN0jPJAUm3Q5hrUq0WPx1zaGKrFbmrPoxm0V/QwlsmRNvrqQQTGDEfDBgwv9xMCTCHHmSl01laeX2DX6T61aVCrqUnBKHjwkzokSc/TJlhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIJdVKqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIJdVKqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E4C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728803753;
	bh=zfNrIuvFntxOn24lq47Q+lR5F35tgbov8PJ17l8HPsE=;
	h=To:Subject:From:Date:From;
	b=pIJdVKqKpo6xINvK7oDoU+u916cQQKBjIqfzqLCeoK1rbPdkrabOo8qi69YXN16yE
	 7JAGY+8TF6t9QhfDBU+aelyIuefTBmGvlx8YSAgrjDYSKxQHuiOYMSo6XZ28ImVZ4r
	 hg52ZZ1ItQB2F0B4zT3VNJpTpjLVjWOAPTK7fcWOmxtXX1bcmi296Woq2UkAXPlnim
	 ZVPqa/uRtnAl9dHvJy9M+wRaGDhWnERQufjm6oy/OJozHHyTqQ/LJT3y+M0St4op0u
	 saCkJhirJh1GJ6FteUg70N0wFb+rA6lyWzys4e5I48Z//OiMTZxpAbWoqtQo41XFGJ
	 LVJtv+uD1IXHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961F8CF258D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880375359.12059.1813581311632001811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b9ae368fd0ad604fbe8f45cea4ff686d0acefdcad36fa2401117a61df6be48
Date: Sun, 13 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728803753
