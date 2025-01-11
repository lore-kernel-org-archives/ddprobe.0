Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFB742A8F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736565954; cv=none; b=kbXplI0zbBIvHxgi2EnGn1KWWjAzRPpyj0V9RSJvljXVAdJe/F+WSqlDn8vogrpHZy8JPbwI5NMpIl3d0/ktvB6CLXMWN96mAj5u9Yfad3Khl+/YcSERISuESkj1N5hs860Slkqoezsqb7K6lMR8ucuMxud1EnrKU3wNWWn1Wt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736565954; c=relaxed/simple;
	bh=pLv0Q4Ed9YKk0OtVKSvJA4At4f/a8WpxoZZ3hNA2mf0=;
	h=To:Subject:From:Message-Id:Date; b=SM07NpEJykvRhqBGC6vKNVU/ta1T+cm6E8ZmefoazEKHpZe9PwsfgWVEJpQuwhDxGuxK5an2Rjsy3rfU3AYYlivv+umWLTQ4GcN+8NVGjF2B58LD361yKWxoUOpvoH6ziCdrlUA0gzr2yjYyuyceWMHA63XitGnjyyRhz1w3RTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmlzkBT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmlzkBT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9991C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736565953;
	bh=pLv0Q4Ed9YKk0OtVKSvJA4At4f/a8WpxoZZ3hNA2mf0=;
	h=To:Subject:From:Date:From;
	b=qmlzkBT44MKWrYQ4/aXFvRl5qGAf0gaUoMKPKUpbA8XPuR+Exns5bhIOedQRI/JsH
	 fv7kEBFe+TIynBixDnqUg0bgcRB0ueVMjB8InDWaHQM4M38cHVtSSmXkaIUuFH77+z
	 QsfQGISbKRThekAUmnhNvoRprcwufrU7sDm3h6CRcKtgIwHmyXkH8uONcwxBhdCrvK
	 fBPDacKQ91zWVah2t+gqBDMGSetPur+aJI8xvf/Xd4NZGx0ltS/OlSj9c/8fIJvE3Y
	 XFQ4vH8tHu6NFITr8P7umaSEMF5rXvJiLTB7ZIuokHIAdRrRc2petD7CEs0Y6662MK
	 J42D4MjQnxmng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CFE77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656595358.8146.14657880066583319481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214b8e49eaf1e978e933009fd763abc8b3fcf6d0d7bb7c6fa386f423ab536c68
Date: Sat, 11 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736565953
