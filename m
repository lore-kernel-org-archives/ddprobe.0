Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495C21E520E
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745164194; cv=none; b=IG7SG7fkWYFwiOyJJrcLhCHxsv445rQulqMLxOwpSyoNwP/2Bw1hsTKOVCsb/r19R9TFRwNsNideBRq1iXqMm+K1GbjIfAHEOVxdJ1p9NckmMMVJTs33tM1HDzkYCExX04IOk89mmdfnt7p2sEhNfj2IGAO9dEXjhQkdxKP1T5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745164194; c=relaxed/simple;
	bh=gsV99CFpxaSpBh4tKdN3fx9qUsN2AKx3i41xkIIwghQ=;
	h=To:Subject:From:Message-Id:Date; b=fIOyzqQ488oP/wxlIoutUiMRKXDRKUS1Spr+Bfr+2HjtTHq/eUBmRSoKDWF1cDTM+mtFyi8pQbTPqpKQoV3ZgqMGbFRa3TfF3zbaB0zc7Ku3H4XCi2n0FxG19olvb/K2gUmCClBN8VhdHU8XYtm37LUB1ya4qtvAFr2FSZ3bVMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff/h1fON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff/h1fON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2380C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745164193;
	bh=gsV99CFpxaSpBh4tKdN3fx9qUsN2AKx3i41xkIIwghQ=;
	h=To:Subject:From:Date:From;
	b=Ff/h1fONjMNpaZ2EsVMbJlTfuz/KGRHi9pmEW/fM/v1QFbKoEK6Zqzvlo1boVmz32
	 Z3OtB/zQwTTumlYZZlFdRKUTg2RTsQ1zlV21a4qdYyyq3f0VgrcEMW0fVtXuv1cVaO
	 gE1CpXXD3DyIDFT2MSVlcF4Q+WyfB4ZClywCC1EleRu4WwXiSfz17hm965TEbMjpm9
	 RYuJkyTXx+AuGCdeD9cOwv3VnspSpLImaYfHdtxrZsNYdnbh9HjfmUF07k5zBtZ6FY
	 ttIy29fvJxZqUB+s28LsZgOxAs2pml6KuFz3FuO2ucBMBM2hUPII6+sj2h+XPOGokG
	 WrXpVDJ0hoOgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3CBC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516419360.9473.10274383515173765820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5586b0bb76f0c88e9ecf38a65b13507a5ade62c00d4f56107276199e52097e
Date: Sun, 20 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745164193
