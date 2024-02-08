Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EF0823B9
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707413297; cv=none; b=I4Ss2YowJGGjZxSO4bOpQMpcZLIkWked0zr+O9TuGygfmVj5xDoeOD+UurHy/RIRhv2yPOlVUsGJni3s3y1+/ktO1uiL7EvcEaLJna2aOjtznZH7zyxSLr2V3anQieIM2+qLejNewQGJZI1ZWsfNFjXcIFww+VMbm3LmuSXfl+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707413297; c=relaxed/simple;
	bh=Qnm/GHhHgTnXcTd6RWhKylF2ZJh1JQnurqcttBuorKU=;
	h=To:Subject:From:Message-Id:Date; b=LrrEaE3wH2rItzoLfTuDfVDfWJkkwPoc75i5Nuoxjm1KsBIHgjJzXWG4kIMvOkqD1LFjZXo9RwY0h9S3BNV111/IbK15ReYnnj0l4LY9vvk4VXG01WRSNxg9cWffTrf2NjQo14Qz3QNCMRivcpV9lqMJRFqplG5H4H1taBVMISk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPygjPpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPygjPpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A8FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707413296;
	bh=Qnm/GHhHgTnXcTd6RWhKylF2ZJh1JQnurqcttBuorKU=;
	h=To:Subject:From:Date:From;
	b=aPygjPpeVjosek7Jo5neFpwaJcuE03pwU1JcTJMUD6Za+PO2qem+lMIF9Lw4j2XSj
	 YI7kONW9AmIyNRkQipq2vthPfGY48VhZLcYhhfEIb7UZQXwWslpD+SgR2tQi7Z+Cpm
	 Gq7HtL/LYoKBmNmuWyywlTIUqpkVyYdLfKR5eNYwsMQH4mjwVQOu7eQOnMScd8/Mp8
	 DiaFquwppbUTR9WeVZ5mX2AiNNrYqLUdEzsmdKjzo90z4EzEeJyOlJkcvTzcW3d3qm
	 sS1sndOwHCHoz8Zke06+UXmRychqEKrb+3D2JAIC9ubNPqyCv2obviKV2CG7TQg7kb
	 ryCVD/2msRU3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CCCC48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170741329642.17271.8660343297968085351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9de666b5dbb80ddb4dfbdc6abab29968f6b41b9f0a16e9defba2ba8a887f5b4
Date: Thu, 08 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707413296
