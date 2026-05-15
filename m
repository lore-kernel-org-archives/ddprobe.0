Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8EC1E9906
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778823033; cv=none; b=iLEjGmexZKPWe5ku8hyItm2HF1u/H+FuBwF85UIxr1kTsdULAPf5te1gH3oGNoWRqoXZx7/B5/Mastvb/ZHUSOcKVBEy1K+YcfktAwwkXMubiPYC6+9AetBV8HMs5U+ok6++e0bfsPEqFOu7udFryA/4Kp2AaZS4rFSXe5KPvDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778823033; c=relaxed/simple;
	bh=XewWzKi1yLnQpog6bB9M80McFSrPrWuOcayitk78vEw=;
	h=To:Subject:From:Message-Id:Date; b=pcE3drBa9ZpuBpDUGwO4Ggsbx1u3MGitR2cCfuedFt1db4o7fnB8cbNVVSrtuIg53953C/j3ISy1SjwamKaZVYlbb3d703Q6HfOCXInZfSOoyHX1IdjSXvCnMuXySOpeRufVxkOSDafU2YBLfLiRD+84D3R31VJ8mjCEW99nbjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9ueN1nE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9ueN1nE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB853C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778823033;
	bh=XewWzKi1yLnQpog6bB9M80McFSrPrWuOcayitk78vEw=;
	h=To:Subject:From:Date:From;
	b=e9ueN1nEHuWju9/YKXqWJH8JnAbI4WDcKJJXre/VXvvdSF+1rnFkAYi86Bq/YLrFU
	 xLKnEOnwM6Og1DXvGPoCO4N+Lk3DKEwBJPgqSs0tAIO0/7oJg4riY1/EYaPYwrMSuH
	 9Efj2a7dXiyF5JrsQOc3iAnfNQobE9cfMRzY8DF7tJQ68Qk5jSk/Vlh/lUT/UTkGij
	 WEefvby5UhAQpmi/J62F66VbDXmA58Xt87WuwOj2T5xEhLC4exTm9gRMY3iR5IUK3X
	 pEezBXLMIw9gWzpRP9IvePxHBttnQQlX8mW2Qx8d4bzqHcvXMsH2KqQrkVLLWFMiZP
	 5DZE8URBaTnZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB820CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882303369.9385.12087087079191853120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9d62fe57b01e79294d8a095a761b68bcb806a9c6f9d1d36a32fc794dd8be5e
Date: Fri, 15 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778823033
