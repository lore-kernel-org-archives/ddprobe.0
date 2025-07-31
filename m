Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B52E2CA6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753936794; cv=none; b=VHFb4PS34eBIctp8OLoI7buYmuWHkUmXBij2M3ufrRFJ2Bq6jmXnBwOHJuz4SQcAMLxDIsGcRVTNaRqy2aQiQ7p33aqOaL12m+OMvO2+jl0UjInPB85D0cJCdsjyXFWzGUbS1z/erMoftZSRAXhXSiEedrGXpRNehAwBHW0+IZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753936794; c=relaxed/simple;
	bh=9MToz7Gs63uiogluMW2h6gsVozwtW4a4g0RfjZyBZXc=;
	h=To:Subject:From:Message-Id:Date; b=cl2RXBXhNr0PfwR8PKlYj+obH+Rh9nak4jkN027eTocJ3ruTqPDCIQx/tfniiNGR3hWRlDlltkNx0rNY3+Q2p9Nr6HoxtBy00rDMngvPAcstxAsXrJVGOMx7zhsmgKcwBPhRw9uImyRo5DShbun8UqGNmA9eT5Wjj1u4Xy9BGg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K63tA7x9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K63tA7x9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3109C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753936793;
	bh=9MToz7Gs63uiogluMW2h6gsVozwtW4a4g0RfjZyBZXc=;
	h=To:Subject:From:Date:From;
	b=K63tA7x948u23VW83lq31vY+nA/dET9Fq+tNx2qysItQXtYcQOUzFXf71kM3oNBtI
	 zPbV8RWf7vtAZEEcX+t2EpFnLyK1QOIzr+/oEosVgD+Yor5pfYumkLcGknINUwwRb9
	 ynhSzJl5nCOOJGmylBhbLWQZOOxM7XnY6qMqbDtqZH3PEfkn46kDwKmpdWrlcJUj5d
	 3PSEB0VsuXRGYGTXL/8oKglzNaqaEe8kwuvwoM9qu8Aclnf8imAgsMJGtn8x0x6FDf
	 NqoRzxznKp+Pxs5O7ovMXIOnjEHUKAh2TYqaigdncKwvkwiU6bum5XcZgMoCBHq+P0
	 g4Vu6Hll7nlsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F73C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393679359.18831.11783590123173077420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2603bdc1bf90c123934dd8d09df5b7b01b607c35db1f80ddb8e536c9517ec1f3
Date: Thu, 31 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753936793
