Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA8D32ABC0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780896274; cv=none; b=meVMgTTkMzv0FFffs19BP4D6GVbz9QZRX/0AQQZ0JaTAvXEn87Bef/gYNvtsNBRNmdSrYHTTkxlPpyCRJNzdA7ze62xktpdk5By5HBpfF48+yQgnoIUeLgZFM9qzzTCVULk8P6uIcML5honTDL05WyYhuMfHrkUx/JsxvEHK6hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780896274; c=relaxed/simple;
	bh=7e/jqjDq4Oyao7ryvyBTfZcuUQZEPqh7V2un8hsbLcY=;
	h=To:Subject:From:Message-Id:Date; b=X76tKKHPGxIrhKYIp3issXATiq4g/Z9ci+RIBr21o33vC1YtEl1DezUpX+o8l66rZZV02tzwb9ZE73pXBU/gkqBuA00qGpfjN6764R8zsghUg7/C33yZ3VWFGeKNyvowG00to7j1BsIguTEFTZhhwl5mlbF75bIv//yR1tH4p6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsMWGTTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsMWGTTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA86C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780896273;
	bh=7e/jqjDq4Oyao7ryvyBTfZcuUQZEPqh7V2un8hsbLcY=;
	h=To:Subject:From:Date:From;
	b=nsMWGTThKUy8NwEYh0nyl2v6GA4k3VBpLfzv2fhIc5cp17ccI4jHtpptGr4SXqLCy
	 8cfEmBbJ6Z0YvjVzKSruRAzWubB/JssigeRdE/A3Yp6EFEPD6vpMZ22cVuntsw85fU
	 n+s+AGYlLkmbRdVYBdjgohocVkac4Vs3ICy9z8b3n6ZO+aZ5lMsAnQsBD5eos8s7M3
	 WTDCh1qzQHzg/YroYrQv1DYaem4HESGqRFzKJw7bKCVPbl4/jGsm26CuS3kiZcqGE1
	 XEMQVf1/1klP8ef458BFElJkW5pEtaf6Ngochz+4ML0/qmbNTBhX4rBQCmP+q7RnaC
	 b1r+gPZEcenSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18CCCD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089627369.14957.7194064720534320131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9909aeedc1b64206c51f00e062418a18223f2a0eb5f47539b9b0ba07241b99d
Date: Mon, 08 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780896273
