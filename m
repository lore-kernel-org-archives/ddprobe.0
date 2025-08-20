Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBCF2DAFA5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682195; cv=none; b=HHI8CcrJHmjkarP0cijxLL8C19j5AO3AHPf14lM+Hv6WUOycQeijOodqkTBh9onrnwj00nEV8L7JHoXFWkHBFWq5U474rYnK1RZGpg0BjXh1eAWY0+WRvz4UupF9/bP/RunMNOXLPbYFVdgvFITlMg7lYOuICKlvlKLpGD/DbFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682195; c=relaxed/simple;
	bh=HXScSPltPs8VzUCrzBf+6Y/3g+5s37OUCFLuhEMEyNs=;
	h=To:Subject:From:Message-Id:Date; b=LdEwqcgTsG+asbCxYhh1LNqC9WX5SGvpu8D/6sgxwXCeg2PFG9jgH0sodXWJUkXl0vc9h/ogURd4Q0ieOAxnG3tT7mX4ukJTrzTsy0LXp59+QBKD4VBzuYqv/N/tVDvFo2gaJh0kDCBzf6SZeI7tmy6bJybmlFaq0BGlnH8Aygk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LesWhRvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LesWhRvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FCC113D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755682193;
	bh=HXScSPltPs8VzUCrzBf+6Y/3g+5s37OUCFLuhEMEyNs=;
	h=To:Subject:From:Date:From;
	b=LesWhRvPkNDLWrkSR0zM0f6mnyz8ULOSqFHDA4Q9zbay22f581ZPP4N2yeuZr7vFK
	 ciwwENk8E4iS8TxR8ij5vpXluRkOv2pCsfqyRNaca/XVTn7Zssvisfk7kzAnth0vTe
	 L2T89Q//qn7BPMNMM8791jjD7UFyFV5GysbtLIHeYerfazDbaG5v5jbtwk9FbvbXr0
	 nEOojIVD9vzSaqepTSkIsPYNvpyt2oTUc1Jc382Wa88XLd5LveSn8zhWSyuXZbhLnO
	 jNjyUNiVnyyUrdCgdSVndLPqSzNtHJ8TTR/F1LY+GIhywX7DZ6ZllfALvcO7K0B3O8
	 8zEoLuwzHsU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A0CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568219357.1483.16097685657891451474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65aad23b66b0c2488531cc1f27ab29c786098a4227cd790fc5ee0982b167491c
Date: Wed, 20 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755682193
