Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F04F17C7C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725263754; cv=none; b=I72m9gbOof1glXOYlTWdr+Qrmg7L5KvJYnCCIXBPQpA83QWS5zYEg1sjdaTQFuv05FgiOIh+Su2zHPwjBAcpZBrpb3XCYyDmD9ER7VaK+EgujeyVLCmFpwSJOZcEpRJMP1CP1fwBeZCGJ6Svbmb/3St6CWhsK+/fraT58du3vjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725263754; c=relaxed/simple;
	bh=bajDwhbIbZprMUL/l6jMwfEYBEkcTWtDE+ThpIAt1ks=;
	h=To:Subject:From:Message-Id:Date; b=lcDMhv37KRoX8Z4frr5653p2ZtnRXCwC36vh9cG+uTskAVnmSZ/8QiWHRzYIdsx6aCFvrKosUikQpvqYpdLxD4NKY3JvgBLCVlursVCAdc2yRFuvTN8dbP6IxMUnfa2Tejhh/GexA02xVOvMJiGad8Ljbx0ATHPTrTH5Y0ifAh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3/dpHcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3/dpHcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A11C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725263753;
	bh=bajDwhbIbZprMUL/l6jMwfEYBEkcTWtDE+ThpIAt1ks=;
	h=To:Subject:From:Date:From;
	b=D3/dpHcUL7U8RECUtE083RmtNi8Y6O2bq5qUAWwcPshJF5pRBt9qCDnzNic7Q2uCn
	 JdXiJTvhNtfvFoCmwgZaAwCSm8ekpxlT4QYCrBJ5DrjUWLh2UOnxnjz936vYsWK8C5
	 dmA9oAR6lIKMVlgi6r7Fwjl5s/eabnCTOR4gknxt/BbX5z6QrbapgQ3bhoL+NOuCLz
	 a6az1vjko49byeX416d8J8xStLf7Q/IRcgM9rH3cMX6mIuFdeL1t4OlMpTiOF8l4Np
	 Q+koRSB6Lyx5uIiqpO/urIWOE3Ypa69tF03amBNTjl+vWKkPwM2H2WQ4PLjTaojE+/
	 VZ6lbFPVJ5h0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F398CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526375357.12969.16065764397173903694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7087c6453fa471fa4202d5117479f845e482faff3f06d90cc1a88c8bb18fd835
Date: Mon, 02 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725263753
