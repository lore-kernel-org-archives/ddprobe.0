Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1763619D07E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771030494; cv=none; b=s7siPpXR6rhP85W9m9oYNfb9AXohff7xiK+1Cfg2izS/AonEhSqYxy/s5vOlWJTaVN8zPG1NAITp5gdsCwlCAkHXDSKQmaFRivbbF6Dv4BTntt+Uh1cxPFNMwJSBXN7ljeNUr0l6XTufmRTD3MaYzHrybzNu2X74l15bL++HdiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771030494; c=relaxed/simple;
	bh=YA5zkP0L6P3eQmyiS1T6rAydyjpQHDWI2oHJUCgBjhY=;
	h=To:Subject:From:Message-Id:Date; b=lpqvAGtbcWiICFPv8ll0dTNvdVnEoDPz8onrD53iwmW5H3BX92R1oQo8ufLVi+PC1AE52hgGbL8AM+zyWdRfCeoPris5PivlDnrj5kIkpnIEc4yh5G5yEsB2fWXvO1ZHf3nv5fIsV6XUpdGJFlU00X+poOOjTdeGGUBKEbDdc5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJxyUebK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJxyUebK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB857C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771030493;
	bh=YA5zkP0L6P3eQmyiS1T6rAydyjpQHDWI2oHJUCgBjhY=;
	h=To:Subject:From:Date:From;
	b=fJxyUebKFncqL81xPV8CFvmaBzpj6gBJsB3RTBzu/CHKKj3YPkiZzB4Y7DOfM0JDZ
	 78Lig1xYE8jEUaks2xcDziWgSY/rgcHuATndJ6M6MBv4YaKM7IvvsgcLKFfDpmYjni
	 XGGT9k/pE5PCZNqaUP7sUONzx9ReFeaDQ+5V/w+dsKAPtYBAWFmtqFdZ2XMo+W/Kyy
	 OwA9VX6ZSgbO5WrboSuGLLCNDu7yTeR65JIXP6HM22L85ledFTbREvTA2da9F685PT
	 m4WIv4aQGKJMz1XBSmKixFRHcS6+JO9IaGVenDPjvq72a7Gjr6Be6BWuEWBGk1I5fL
	 vaD9vQLEXeaYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868EEF99EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103049361.31152.18034968961696948413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5028d37fa55ff1b2a12d91bbce1b7fe94835b68afebd57c7f3d60547eca6e5
Date: Sat, 14 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771030493
