Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C55D3C0B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720321583; cv=none; b=bwVpgsR4ajXhLBJHAjSfNsL95OC6VucT/SdiBr8T8ivioAEQxO+ludDHQsFT9AU+RRVk8g49/s1GRSCx8LLV9vEDbdGf0TnvufeXaff4CHaPUhcXbuC1GdIasK5p1xuUcRL6P5hgJSzOVq1s+TaxBSZdm0zzBjupMeiSYdHF6AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720321583; c=relaxed/simple;
	bh=OkCrZTfVoVC70UgadvLSGZD/3yqmUJJjcL+/em6/bs8=;
	h=To:Subject:From:Message-Id:Date; b=uNi5WrHZkFC7/NeFf6oDe97skPS6jkuc1pB+aqjwGJJiI1BgOJ3FOnJ0pkjZl4e1RmNtc8LlktivdQdqlVgQS6kU/DWb3bPkU7VDOhS2ONCA6Xgne0p1kqRw41JcD+M1HdlLCP7ADJA4AA98Cp3PKCiINETM6jLSClBC9I3siJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etTBmbGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etTBmbGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87B1C32786
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720321582;
	bh=OkCrZTfVoVC70UgadvLSGZD/3yqmUJJjcL+/em6/bs8=;
	h=To:Subject:From:Date:From;
	b=etTBmbGp5A/oK5fL6FFE/dZ9yP88dJRbuqsud+Zti8YbRwmRyY7RCBp5BAQzRU3In
	 gzDFbCHq91dc/iJu9XgTIz6sYaUaFF+kjRUWF+DSDjgjmX+VPZyRODVQgMe6Gopgrg
	 6qRb0uLucEg9tmVqqKnBfFxfMWxofsTSCfY0ZM3QXck1EknaQIJHePL51XP5UXOPc4
	 jv0Y75P10amiLtrTHUUqLr4nFflFiRjNq+vl3UUVs/hGRcLeiIBr8Jy/4/YdrDGYTV
	 dcBYsuDvLJzKOKLmFb8UL4GSsj7PAaeGHzqK+P8jL2B0wlVm0x4HD2dPCSExiFeyWM
	 5uBYhsO4enrVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF7DC3814E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032158277.14074.7223228311211653531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e037ab05ff4e1317e55789d697f3a6266ec599af21c6f8b6d324ac775d4df5
Date: Sun, 07 Jul 2024 03:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720321582
