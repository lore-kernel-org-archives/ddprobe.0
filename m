Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23276254AE4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756553394; cv=none; b=iYEcpD6RNC+wq+shLyqeW2VRZ7g7KH0BNuXm1JBmNsDDKyPdhnHJrIypIO9d5fR5DmKoFizKU0XELd/B2Ni5WmkUIhvem260qTjXt4AzgWar7G1x82byTV3HTP9SaVUhQ7hBUu+W5BboM7OOvkeK+kMDIZqBDNV1UBRec1e82NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756553394; c=relaxed/simple;
	bh=E/7Lxntl7ghhvDTZ4vdcmMnrhutkfeCQDTruQyXsiUc=;
	h=To:Subject:From:Message-Id:Date; b=NPJIkElsX8lLGhiOMA2vRazqQl97QeiHCA64TuV8TC8Nowppv9BkuDZYwB+brl5bbv0NKaw9805O+6QL7iXuZnhks+xoPUo0PdX3v6ecAlD018DSzVwzpZN289lflC3NFj0lmtS5BSJP2d7Yl03moAwlpT6btETChhc6F0Uxsss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdLVyw93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdLVyw93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1717C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756553393;
	bh=E/7Lxntl7ghhvDTZ4vdcmMnrhutkfeCQDTruQyXsiUc=;
	h=To:Subject:From:Date:From;
	b=KdLVyw93NRT4hLfyg29ojzJjUWtGCEZNQA3wlT2cktCMZ/SGj03uBa7epQLzHBlHw
	 DSuJ9uw8cxvXFJSuCqQrHhPhlNgV57gr6WaCHxvCu+sr2/t/hDjygNCjZr7nEuCtOg
	 0xTSCj13im60rEoITpa4phFQe2tZ+UsrgT/QRCc70QZyx4vccXt+8O/6YdmKsLNMG4
	 esYCL0Uia7Tvsr7Um9djsXhiLlwVOxDG2fO4rUjHjtDKidk7m6hEPDfk2JmJw+KAzC
	 4creeHbxRgruApCAX2mTybn5lTIIAeadYp6brdbSZiFQ5ogBPaXWVgxhP2pdP44M1i
	 Cz061YI72odxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2DCA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655339357.304.17376539968442632747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e5721293308098d9f82fd178bb73793895a241b0b88b9d8f1a637fcdb91737
Date: Sat, 30 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756553393
