Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08DF4A21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752538193; cv=none; b=jWztkRsK2Eewyiudixm5wDA462+xVA2LLSEbXqleG5nGEXtOiLyFTSMLalP/OS/rZsnYl9OjMNBXGtovVjTWcQMhkK/qAjMRNLCQhd7caq4WbInqfEPqYxDDr9hWtstzFCntJnLvutohIdtrwTmsC9Knj4DW4xRbQBLn/28yorE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752538193; c=relaxed/simple;
	bh=Ee1P5/vNhCPrcPux/0x61sYpzlYjHp/Ep1p6OQIIR0I=;
	h=To:Subject:From:Message-Id:Date; b=JdFwoaohClidhlRoLu4Hc4FJo47Pm7KGCWALn5OiRwZaO9B5cgFYQLkrC1B6UG2qnAfvW5H+8bjY9fcptQgFNexnHtBN3tllwbqSd7YQyf2qzmwBhrpCbrORd2ogYRv55Xg9FDl1AmbzuLxePnFdL98hfpSCdvs9IqReuOE0t04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLkSqogc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLkSqogc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752538193;
	bh=Ee1P5/vNhCPrcPux/0x61sYpzlYjHp/Ep1p6OQIIR0I=;
	h=To:Subject:From:Date:From;
	b=XLkSqogcO4NcWOIKr8trDS/MaDo97tbdcsUfrylOM9GeWxOAo8U778HZYGUEmPqSt
	 HEtsqSho2iTpbKPeamAlATkhfJELpNwSUmb6Mve5IRw+8IsIIeeSaLzup8066bth5z
	 i/Lv9V0i8HbXgRco+I2c1pZ8JeryUjsWZrMJo+202NIXCBrcLhdup0DzjYDVIEeQzC
	 85HY/DWbHmSok53Gpz714z+YLXFB0435jYaUTfh7IIWnJrt+X4nKmsAfg1TND+K2pW
	 Jgr7LLR1UFeUy4qgVe/ixFdMdiJt5EHhm+9cDHNpITFFsQutomY2K5XQlvYwFgX/KG
	 X8emLxt/jiYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92031C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253819357.27563.9398926939276051701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2ef7734a9c910bbf8c955aca08a90932e7649a098a84ab5ce6ca8d1efc939b
Date: Tue, 15 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752538193
