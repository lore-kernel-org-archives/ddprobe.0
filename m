Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C3F1E2858
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751342994; cv=none; b=cfBy6m661SAo8mYsTr0vF7SQjKXlJuFoYbn6SIy4oYm2vXCSwhnqZ+EUVbM3AGAHIHlUtRxW9/T+o/i9wsIlvYs+sE49lhlAlrF8LOzK4xH7jOs4Zxxz7VM2KKc4bKzlkHl11v5CjKYRFrQEDD4xZ4qlWHbgXfx4i8fnfvU24H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751342994; c=relaxed/simple;
	bh=0IYGNkSlmbfjsabH3LfvtUuOSRYVbNxbZLsoy4Bh5J8=;
	h=To:Subject:From:Message-Id:Date; b=FuGTfiiQQb2Y9jHDc39s1xaooTV89Ui7pNtdu76H1qCyxQxKCvX49h0QRcnkMC3NxHJOliaHKUoYgspTEXgDT/Khak5cZX4LiY54+0KgBz1ntDOifI894W0hPptaQMNWc2uXcgNrTCTKtZ9I7oe92+N+6as8svKsuWYr0Ll03UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsEmaj7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsEmaj7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F6AC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751342993;
	bh=0IYGNkSlmbfjsabH3LfvtUuOSRYVbNxbZLsoy4Bh5J8=;
	h=To:Subject:From:Date:From;
	b=LsEmaj7VAOjckxrHcRAHJPhV/1ccDor/cKOdTI9w/pwZ1s7UBr+4B+R6kpHoJWXhu
	 8yLGcbaLrhNr5q5LtrjiKLG66by7v6ZBMmioPIZYeAxMIfi4QZp57cY6v2gvIRAQFT
	 pe0zXakV5lTFDEOAVRDruOr9Uz2ggYt0XVDixujp2vh0IbjHwl4yqUARnvdfZb7EVY
	 U+oXV6ItrP1h+6pE1KwypmUQBkgh0iPGWGRceZ4rV6YeJH6FG1NrED1stvm9C7idHv
	 5qki6jKWRYJBHHs13/i/RipbQcIFplaqwv5fdKdObYeAhCyAkMY+fTp+l/gfIXYpc4
	 4+LiXR3O+dwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAAC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134299358.18564.5194110243574738225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ddc24f2189f1c712d2b7a0f08186edf6dd60a99107b303a0bfd182ab330059
Date: Tue, 01 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751342993
