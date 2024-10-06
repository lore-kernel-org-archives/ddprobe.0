Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5D2189F3F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728255354; cv=none; b=g1Q4VZTZpXolgcpmKUXjQqa8nsZFogaN292W2EDY755cBmUQVRcrz6+s3N1g2IJVXbxoWb3kL5U04fuAyWrnv1OL+cbLoj29cYu6PQzM8TIUrJKwLc33Wyx28N5itLcYhrNfL8/aE4mMYI8PPJ1XJM3xKWxMCFBdjnLE6Za5eq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728255354; c=relaxed/simple;
	bh=Nv0HL3ebDoZJyjWiJhS4tU+deZQj3l69mJFK7y0IUqE=;
	h=To:Subject:From:Message-Id:Date; b=pB0eFIFwNRWPFXmtTKvL5p3xa67pl1NxAANXUSnEdbJJwlnh8mqQ72GBCpYJNy8S1coZ1DU4O/UvymtNyVlKwCq9xlz8c+W72QUGNCQMf3pFSKRIoZXraAowtMMPP0xFf31olPM59nOAAutQwUeZnA6azyI2361ihgCEtzXpQt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qw/V3Xyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qw/V3Xyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C15C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728255353;
	bh=Nv0HL3ebDoZJyjWiJhS4tU+deZQj3l69mJFK7y0IUqE=;
	h=To:Subject:From:Date:From;
	b=qw/V3XyvRuHc6wEbh3YoXc2l+ldGo0hUdTF76uj0221ryiQeHixrqSdHC9TR1WMZ2
	 FxZseEKgpBh9UwbQtKfIhJ9RkAJTajZBKAGOwxMyt2wF81twYf7hl6O5sjgPh4bzpx
	 0brwaGgjMm56/48tXxFuU+fkfg9/UZDFCsYTf1KJLGKw1zlr0LHIEZis6dhAOqRMFC
	 HoedwXsBxJVDeyjY/vpYgxPvPtJF+B8RFMYQkeidloz5DMFU7vKtjhyEFFSKKAiPpc
	 okKkBqJdFnnPIdRWMf248gHz8Z9tzsEJ9Si7gqxxbW8CEn5RI/ARqNdW1GCFhRR7+1
	 qUNX8pPumlmGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6D0CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825535361.14165.15424254511142584785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87e1f71d08feb0645e0ed8e4119a7fad75b5a4b7b5a15100cdb7f796923a0f4
Date: Sun, 06 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728255353
