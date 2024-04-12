Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6C381AB7
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712953163; cv=none; b=fcP59QPYX9IorPMaBKysI0YF5w3w78+3iL5StkoeWZbuViTSIdGJpudi7v4imH6N7P4Wio60cfDwNkZbNi73gykGmuKQOpwEhw7nmz/b0jiFXFzzCwxj0ljOv0ka6GWHZgzTWswzfhkbtjrtYaFNKS/Y106NcdmacaDUdur+1eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712953163; c=relaxed/simple;
	bh=2Iy4uGzGUquRIRrUf2JFjkpDIvT9C3JdchRRkLNItAg=;
	h=To:Subject:From:Message-Id:Date; b=Skz1swQsp/dDNg6G4SlNHJdf+PWtLSJNJUiygZirYHOqjUISdW3vd9sL0iCtu9ci6yXmdAB5aiYfBxsb6SXw/MvZvgrldhM5eV8zY2vnYIyk0Ijt6K+IYGr85mRJUgiFwpIb10ppAohu/HEmtWirnZJoaQkvovAsaEcgKm7Bnko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTC613Wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTC613Wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8B4C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712953162;
	bh=2Iy4uGzGUquRIRrUf2JFjkpDIvT9C3JdchRRkLNItAg=;
	h=To:Subject:From:Date:From;
	b=tTC613WyeFZuMMy4rcIycF+Vht83XWawQqcM0vBkkyEsZ9xRy3jhBR3fWyIvVWaez
	 nC5ZIKFTK58OXGAqkMwX/ciUDFHPi9/OQ3rXFlOljD4Z0IrOsoEJFvGtSSDwg6ZOlT
	 MmOCCeTZhVYR5Vi3aSNR7D15Uo6UKJRLgrP2/JJFRF9eRhh3xGUJyIUHndBGrF4oi1
	 O+1YSPfK92b9urVqpKwz75ur3CDTJCz/V/NGsj7JJyCLBy+jgxggGzOiQTJC+ZyzNU
	 js6iJt5o+RhxnPVDREf6yoyTg8xKRlb7O3i9XRRmtuzg6iUXGMJOMNw4IQRv5fmjAd
	 xxcUPWCkkVUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB553C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295316276.13746.17856811225389994953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b7bc851dc4c0ea492e5fb7c5b87f0c2df15125b40a32e339600e8bfb2c17e2
Date: Fri, 12 Apr 2024 20:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712953162
