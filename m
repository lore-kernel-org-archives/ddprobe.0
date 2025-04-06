Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8B5224F0
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953395; cv=none; b=hSR/ZGhmTGQAmvyfyA0r53+BqKqFWnTNqM1Aqfp7QrRcuBJAdee6ZtdMYgxsX2dR2CM7TXxtVHeiMbod5Dok5aFECMAKnxP01iN1eeuZlHEw3yukv7ScNJ/UAfWtinNJ+6X4F21tConE7lYSWJOwCcxQSeatoBlwA2mQEqda2lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953395; c=relaxed/simple;
	bh=xb/wxVZ+IyoP3rUsXJ95wCkEKN6Uoyg60t5j/rFKaGU=;
	h=To:Subject:From:Message-Id:Date; b=mC9Hipu0w6j4oZFs6vh29IAWUOEAs8g0Ehc3nZjwzkDy06ubytx7aEbtZB04jIsxKwQLusCiTWGD2apJEMerFGKIA3dXX/cdlgzUrwZMaw6KgYG5MYagruSXKNXevWU/WGO8PCeDDgtaEg3DDewgIxG8mPQdZLplCfVPoWkot58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mqis5QIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mqis5QIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77F8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743953393;
	bh=xb/wxVZ+IyoP3rUsXJ95wCkEKN6Uoyg60t5j/rFKaGU=;
	h=To:Subject:From:Date:From;
	b=Mqis5QIj5Q6C9KB+ar53OTxxjmqcmGBCbcXGKWkbtQGH1D+snhziIJeX+2ZD0cfjL
	 Snq5n+zBxnUJqRxGYpRJwbP81KcO0qayeKiKZFT2J21F5pb2rVtFEAUHlSxvMzi7MO
	 l86hf1+1INMmmWsYsNQeavQGTKDhOZ2y6HAzbx2hiFVuVMGSxNIHiukMwNGreVBrxO
	 YEmxF/ua+v2wFa8J/IRJjpSgbNwBfHtzm/Gvu3plUPYjueUw7h/PhI1dBGjRcdMaOU
	 m5kecf2eXQXyS2XbMTF78nQszd9OVqiqfn/zjJulmNx2yELmpt/qowbqL/t0BZS9Rz
	 181T3NMB788/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4436C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395339362.11156.5731978181523649004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10818069c73bb95425c046a422ddbbb9bbe7adddbb7b3059ffdf01c9e97b2272
Date: Sun, 06 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743953393
