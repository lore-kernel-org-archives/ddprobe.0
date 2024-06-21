Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F1D10E3
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718933483; cv=none; b=pKlU/4LUUCZI2Nq7j610jaOk6CYm9NPVDMuF35ffTrVTHbO5eU029qS5adazKtCu6yYtWIQSqmDFoVzNbdYgtxvzcTs55nv92wYRr329xpHad5/wTrRJ4og7YjqALer4mQkYCDKklOkHJBTd2dwBakbGGBaaFQ6cA4JhdlSnEAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718933483; c=relaxed/simple;
	bh=9+cJvRWQr9bEc4NHRsiZwZwAEKCPTicz3LKh1v6EA8w=;
	h=To:Subject:From:Message-Id:Date; b=KKkhC8Wcx0ijbq0mycx311/QYgFGhnsbZ32RoVaOX1fjflb4DLegnmViJxVXf7HInO5p/P+UznSswNdUf+w+01ssDYTxbwYtpTCZNiXSXr2i0CILzfr9OMv11Uw150bSO4X/VH6tV3x4NIeIzqyB4pkQFFqBpL1Eea4SGqZv1FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUqb88Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUqb88Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3381C32781
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718933482;
	bh=9+cJvRWQr9bEc4NHRsiZwZwAEKCPTicz3LKh1v6EA8w=;
	h=To:Subject:From:Date:From;
	b=ZUqb88YpinPg+u9hrAfuJN3HXOcUTaWYeUTTDmZAJZW1YtOPkz6tIZ582Pqs7QKJV
	 mhEnBkHrpkIfcmdp7B02Leiwjf5OVDs1edUy/oIgghwpI1Mw0MTcHQ6L86NRebXcjG
	 twpKSp1tANy8IjkgBgQS7ytki0GUaaaet+mCiHbIuxvCWSDRY4H7CHmdCFHb1JTWUY
	 +ztlDPpo0RWr5lXTXO5fbtpP0wh4+CIka2JR/LsdCY+HSmwNArC1NQpyq3siQMG158
	 4qqehcD0aMK1JrIhaPIFHN53iyywiiJjUNkzben+AJyIIQJ6gIUHAIcYD18kGDwFBo
	 eUeaXOKCbxX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C69C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893348278.2991.9872853764891772085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e540f701cc720a39de4e69394c72188bd7f1a1a96997b4d09edb5452a0cfd46
Date: Fri, 21 Jun 2024 01:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718933482
