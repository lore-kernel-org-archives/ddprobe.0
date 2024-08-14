Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ABA394
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723607154; cv=none; b=tYTONnQVOiFsJ7T44Xx4I2b1gUupyLqySFjpH7XlAcHTNdRpnnCvAilMcyg5ORgJjwEkUEHVUN67jSaZp8G58llpK8N2TRfbrjYzshdR4TWGVjSyI4XlOIIDleEZ5GwPGF1prbufEYWaJMWM/yQlIaqSNLk4ujzjm+fLhSPakS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723607154; c=relaxed/simple;
	bh=PDoljble3Bp4khE8KOqhCW0yj95m48sWy/sBhZen/Rg=;
	h=To:Subject:From:Message-Id:Date; b=WzPxmNO4LtKDxT+o9slTlE3jwlRr/dTdrvUoIFSOToMNUA+Ue1q9nPJCQ9pdxdimsIeEY3hcURRC6kUAA1pLgLszxlKa2YliU3rzT2bh5uk6/peSF32I+zfirCRFrIuk0Ew678RktzCArsbJwGTKaWzJyqxEhlLtHko71KgW+vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/AHYxUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/AHYxUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4747C32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723607153;
	bh=PDoljble3Bp4khE8KOqhCW0yj95m48sWy/sBhZen/Rg=;
	h=To:Subject:From:Date:From;
	b=n/AHYxUIxyVvCKI4sBn5I0ijGqxxaczX3aoT5mKIsMMM3fVHYdWhkxzbhnpxdiUTM
	 mS54G8HgwEXEYizJHPUliyEpXS5bJAeSiPAwpTGjUfN+YPk62hq9EM1oK5JqvSqOzp
	 hcbCyN1SQV0qQgGiD/3Dg3xvX+C5Ebhz+eslYn6e6a/gHUBphVinS+DUh92PYb0oex
	 UrCjHYvd7/tYiOBii/1balMWQDrp3hgbDKV62IU/5evlhxoJLai5GmWhUPGcweUHGf
	 ZBydNQLFYzSDZGL/ZuvOrY8uxZVFx/XygD1UweqKEb8qcZPMRxFgcNhBmsWWhcvOu4
	 gaJIt8n43JXJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A44C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360715358.30821.12649833567533642140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff419ebd6fd7ba733de3a5241098690cb8b7111c5fd875df5e234cc57bf7dbbd
Date: Wed, 14 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723607153
