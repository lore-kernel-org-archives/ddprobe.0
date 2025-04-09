Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD93255243
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744183194; cv=none; b=mJnKIdujfEKNolDHVfVfHCfHHsj/Ug5sV6bQRe2cMNFDC8cf5FhDFmbZdN3eQiCr9RI1dH2c9oGNnS/Csjrz8EciKxQiH1ybl6SWTib7fhaSXiCLV2pbOmb+c2DQV2aod8OjAFIMeXoWs5OeFaXzLvfqFNRy0G02daN/yZynVtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744183194; c=relaxed/simple;
	bh=jYkgOeYvuTbGT5VZn0ozA/GwzcGP0wzNHk4kn13x45Y=;
	h=To:Subject:From:Message-Id:Date; b=YgYTXFYeC3yr8HPGC8HZcUiw2YPayxFhOHSDf5MP8qdY18UZ21lXyjGyNIxWuKvmBiK4JmNLoQsmH3daqAb1bIBEYs0jStF7CyAxAt7IK/Q1wVvcmWqJg/J/ZADzd+3dvizOaQhMrbpMJeQ+csVBu0VbP0cGaKHDCsgbC5OSw7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9egOGn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9egOGn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5C1C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744183193;
	bh=jYkgOeYvuTbGT5VZn0ozA/GwzcGP0wzNHk4kn13x45Y=;
	h=To:Subject:From:Date:From;
	b=D9egOGn1RS/TPjhII2ugdZAHanCfM4/w3hZFudXJ+03XyCz5cM76tv0cNqY/Qh/lz
	 ddhGFgkaQludsrsZxwGQKSY4fq4VGol2ORuvi5ptz0jbTernIENkOsyk+QxggRZ0GW
	 nW9LKIUs2nHqBTsLvaGblu0PFzclPaaqN50f/Cdb2DP/SKlZxQItjLOR8bRajz3kGI
	 GFQ5FA/A3nQvhkcUINGjjJ/5+66Ae0YHOn6bJMOIjJlRyS7oD7nYAljlABTzO9qV0Y
	 PPmciUUGpjWVRWVwFL+VWeZ8x2hrpfccncJ0LCmtPp0El5gmLMz5xkUoZ65NFUyzWw
	 9MvVBp9E5PBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187FC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418319358.6179.6088708019650361015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c04da4607f8c1f0f10fdd6a79b5d8215559880f20535f4616067638d1fc36f
Date: Wed, 09 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744183193
