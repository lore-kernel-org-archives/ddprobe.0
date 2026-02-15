Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2E324A046
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771157094; cv=none; b=ZHXuGrJqOOuxgoKLiGjzKppsFSzDJog0JcNfyKAeK+36sbbaur/WA1SG8zcQtvAjHbLEB0hRx+ArorMFNHFk3VjxWBP8ztGywwknzVRLH1hyhQGaL2EpEMhC494iQjFyBOJmZt+O8iAquLhwoB667+LOYjQ1fjdGJ9AcVgZQ/uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771157094; c=relaxed/simple;
	bh=CZfpyD/iJ8eYV05Moir7X3qVJnLqN6TNSOAKvYwMp/A=;
	h=To:Subject:From:Message-Id:Date; b=r3XQ31dFlIup8DhqcHfSS31ughMcQsonIcRM+H4CGMcCaP0kUqGmQBYHPdf/nscNibs3Ib2WumIw2SZP2oXgdAbmbj7rvhjs4IhdGDcmuywmZnQTVnII1OLKBsnECBr0OyfcCqxPO6nGQEeARbpYwzge6eHLplZ70iq1/w7aPes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPtw9B73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPtw9B73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD783C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771157093;
	bh=CZfpyD/iJ8eYV05Moir7X3qVJnLqN6TNSOAKvYwMp/A=;
	h=To:Subject:From:Date:From;
	b=tPtw9B73x0LV78Ub6GuG0S/7PkJ8vlnZlpw3PNgdselRO4TUAVaIjx0EBIhq0MNwe
	 V9+/b+SlE2l0SE/fYDeC7gKvZNFyRiKogJElw1CmTSfrhuhzb+0yC93mxywf+7Af1D
	 JXIGcrkM0sGolv49YlcPKQfZKr3Rz/1uYTFAGer2MN0JskOu3TGPPhb8fvgB24mQs8
	 izHBvwV8/eRWNp1/fdnHZbDXdgOGklPtdwBEj6auSQmbS/VujjjLQE5xvf84S597BX
	 eqg7g3m8r8E798Z0gvoZZDyPoL7eEAb45Je7I44n7KAE2gOtT4EZ3q/E6ToWiofuTU
	 J8gBJLPoOylKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00F7EF584C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115709361.21304.10739372062188817345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3673c7463b3b9c48fd7c1328bae818b1f30d9f017e00a0b6058a835059ba4e4f
Date: Sun, 15 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771157093
