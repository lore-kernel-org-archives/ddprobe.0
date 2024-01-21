Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34C037160
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705844897; cv=none; b=CzMTFvW1/d1ARS6QlinJCcvCaq5V9gW4VAfMDhY71yFNgaHU+Xw2t+AHJJKPM6TtuNH1jvEFXxgTVKpbIh0iPRtKBzXRKZgHuhvjoJDWh/PGb9KKNQhKDmczDiScuHXwtRuc1VLcFmVyc8j7+R0DZmmUU0Ee2eXyilpRjVgO0Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705844897; c=relaxed/simple;
	bh=hMd+tEGrSZzz8RESPkhUtTmumwum6xtHXkqzQY1nhXI=;
	h=To:Subject:From:Message-Id:Date; b=U5fy9JpMfOYFPl1P+s8DVxSoz3ULxUSmbFwiBTYGLCTcY4SR3PMj8txMoaxUZX7teG4ZwS4qG4s2Lyq6JzdG6WSyxP9w/bSBDra08xDKowmtdBEYDk97tG+s3ajUV7jX+bPipQTfcE0CslHugZKGIlZ/F4Lktm2iJw9ZjN1Xk6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlCh00iH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlCh00iH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A0ADC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705844896;
	bh=hMd+tEGrSZzz8RESPkhUtTmumwum6xtHXkqzQY1nhXI=;
	h=To:Subject:From:Date:From;
	b=jlCh00iHFGZPoz9mf+rKoZGQLWJat/jucD3SMMCekFu8kaZ9iWgf6Rh811w2LWnTf
	 Y8fYU6yWZJyMSZAF0UPoleH16aGflXcdIetVOMqldyJM7RDZglZjuBNJzQ9DSFnD83
	 abp2znoXN83JsGxY6JolJMuagEJyYBrQR5kktWvvIsodYi4HZXVFxtJF4rdfn/WPyM
	 Ml/VwwyNjSle9IlfjXUl5YnZwgJeorBwlr5zct+2OVI480iBGZKvzaD9Dxbv2qmuvQ
	 2dxMCym8ynI9ra+JRvB8fgevsPvKGNScQ0gJaZc5snoL04R22F4EktCgf+WBzzAGxY
	 PGYe0sUcnoc5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625A7C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170584489636.4449.5309262326447572670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91200d10eee632a56f51acff9186aeaf2f8ce517ff408303490d52cbbe62765
Date: Sun, 21 Jan 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705844896
