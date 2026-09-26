Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3842631E85B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790442634; cv=none; b=UClS1WQaOKb6adzkjfHkbZVYzE09RM3cKv55jiiicoMiIEj56CDcwpQksoRbXpBP/Qkyuvgn+UoOSqk+BMtKMZPPHhgy0GZNrSj7InRWLW92VXiJ50NSz7cA+xlvq4gUC6EK9RbbwruF0J+eEfo/JT8go2UiRuNcFq8nXXbuR7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790442634; c=relaxed/simple;
	bh=O1ao0wrlTcZ2naPZD75jJvPns/sF0Wl1ChHe71VNrm8=;
	h=To:Subject:From:Message-Id:Date; b=ndJnIr1I4jF8fQjee5//o7CMM7UtLyenSmZn2OuQD5Vc7olIYGYDUj7uqiiAZbr9S6K/8txEfUJeysjRJTmQ9yk1E+MpEmosyPiuwf7L9/5OecMi32Htq+h5LSoVYk3XbmgJkuBglG67EgG3CCWXNXu+aL+wodOXZRjtMUmj/PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjNx39u1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjNx39u1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF57DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790442633;
	bh=O1ao0wrlTcZ2naPZD75jJvPns/sF0Wl1ChHe71VNrm8=;
	h=To:Subject:From:Date:From;
	b=qjNx39u1UUD+eOPaUa5MeqNPmK3yC0zSFaxMRrjjKB+tfMnw5pclVTs5Gm0DNgL2W
	 abPrgvxl3kvMCIO36cyzFgmEM6FbX27EBFPVA3nn7XLWTT/PaQb40LCMQaWm+S2Jb9
	 lig+84QNIfGp00ChELc8QTqgWO9MX7bPTlPV02a53YKjDxx+7f5eybj9CEF5tzx3R1
	 7X0wSLCnTBoD8y3SpUJaA5TVIfrHuaRQe5n1cLYcsKDznHxzNYiMsZxtrDTXhnlvdS
	 l3S4nUpp2+s2a2Z1dXJravjZvEm+Mi47u0EZwHSFYnwgnN1Jm/LJ857KCMOEkA8WQm
	 2ClgoWalYhfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB9C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044263369.2691.18337251124224028570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23206c16366733a314c18ba0ef9b6649ace524ed1c38b4f68774f34d365ad12f
Date: Sat, 26 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790442633
