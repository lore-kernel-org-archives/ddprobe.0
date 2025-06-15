Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D630190692
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749959994; cv=none; b=bEXgZdhQ1h88W/uxPP4YvJwCbGBp4FR7tC0za/sIECvFqDDLrfXVgVp9JoeURJ06a1PXCEv97SrBGAinMvfPEfaLQrXrmaImfag8jTHZN5GdHLpJmiF8fXuQXKU/eDRrKW7k9zYAAzBS/O+daYmoClNmaOPdfIoVqKzfmriejVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749959994; c=relaxed/simple;
	bh=GodeOqOMB5lleK4R5L3kDBNxS6KwarGSFFLbZvVekzs=;
	h=To:Subject:From:Message-Id:Date; b=OBN2E1GP5hMbWKT+w/kUx/5a8lHROTbo7KzLZVJbkUHqKSr9Jh6VP+9jiXNeiwkoLGhUrSb8lR2BcXOUx1Mad/EWwvT5QKaQ7cz64UBxxZFr3BBSHe47QsI66gWnlljkb8WoHu2dbJHNtVF5h9gjiPxwMTvoRWLM8Wagjlu4a50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtr3h+l9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtr3h+l9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2DEC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749959993;
	bh=GodeOqOMB5lleK4R5L3kDBNxS6KwarGSFFLbZvVekzs=;
	h=To:Subject:From:Date:From;
	b=dtr3h+l9ykAsrBxILGWzdks6zwvh72toV0J05jz2zjyBfuzIkqEGEwj8e5Gef2eHU
	 YepUHR3DfC1LzTgZKysmGEhqb53eWOKhKIzbaM2absXtMP4LWt/LreRDVNS4pW0V5B
	 rFAuG659Q/25B1sUZ7GIFB2ySSW5ii57O3y0H7k2h7iOBioR06HMxsb6JyGjIytT/E
	 vlZNDwp0mLqxzj3NmyFEvJ6kFpofxdf1kZ3Bxf9Mbvig9jg6lA7hFrLVSN2ZGJf5i9
	 /Ju/3pCghknax8KJg2Iuy1OYHYndapxIL6YSZpHLiEiD6AQpap7AbOFQ+UL9176Qbq
	 gTJyg1spQ8q3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977D4C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995999358.12473.6612761086817530515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a725ee50f7a1ab43eb0162cfe0eea9001de7610a24fead26fa1ec353f784284
Date: Sun, 15 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749959993
