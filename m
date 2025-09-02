Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A59E2BE048
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756839594; cv=none; b=lFo6Vpfk/AT7hm3rEdTA03dl8f601mZEWMdtwnZaBSr37wtkmU/ZllpkNZrKsn1Ljz9ukbAHhNBaM+cRGfu4MLpzstO2B/wFkKtZB+Io1O1m7WdeHsQMtvrhV72Xd47fiSDtbT4Vpe/mfvQUjQ1yImlZmmbXQ54TRf382i83voY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756839594; c=relaxed/simple;
	bh=q0Z3SAbw4iPkYzHteFaPjS+ANb5gvbR31fI4GC27k2s=;
	h=To:Subject:From:Message-Id:Date; b=h6hcMxWj//gTdYcScrvji4Ah8A9/28pY6sf+7rLbjMzjCoc2IthOTc99ms4Zb8SoNcIsp7AZ+Pbvgty4HLn4YBAIJcB/fZFADfYDJ/nL5Arede6eXSKs2WJSC9n9Gl+gbaLj9hm5Nn5NNMR7KmvounF1hBmqdEt3ljR81fvwstg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdvzEA+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdvzEA+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C8C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756839593;
	bh=q0Z3SAbw4iPkYzHteFaPjS+ANb5gvbR31fI4GC27k2s=;
	h=To:Subject:From:Date:From;
	b=gdvzEA+KxToL8BorEAR808kwHL3MTzQuPBwH7q8KRBD7B16n0ktCN1Ff/WGlC1Zzf
	 allP0w2qNBU+hmIQCBR2A3zEspEcNBp3yxKjLMxzo2onOEiVjtxLHmXjrrIGTAZjGE
	 ZMsC2wNAsRXUS9QTxs3JDfEm68QO3HwkZz6lG8q5l1TDXCQEITGMZ5g7O84hpub6Nf
	 BABjWXZAfVbF0yclNfipE3mGNsaGgt7hBggmKoeOKp4EXrUMxfEAtJibR/cc5UqAjR
	 cc5rJXPZHpdWYgQa88EWc0tRyYPfSTiXXQTMXo8btfHOEXXxi5E0K6uYKPPE51RIe4
	 5iKVaYbpeyV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7BCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683959358.18140.1410755638875921529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18beb98f2eb33776bfa42fbf452ae408cd5120558212f5ddd4ee20b93763d3d
Date: Tue, 02 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756839593
