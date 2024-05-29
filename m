Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05622D27E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717019063; cv=none; b=Zg8IF4xnfX6DCr4BcbmxjFCMAL7PkEd5BSDWPtX+JFuQ2+7JBG+MBORILoF2HOScunFFLgcfMBAksyl4qv1UxfKBbXawTYdL4EjEYmjcnPN5vKYgHa1XcJEcWvz39ulGnTZaAS1YVL6FbdlafJU/UUtBwSy5H1u9r3L1V7E7CKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717019063; c=relaxed/simple;
	bh=wLcM8en8cqPXUzwm3+tM6D/ArsImoEKrpi1LDVeTj7w=;
	h=To:Subject:From:Message-Id:Date; b=bbRaNkhbGIMH7MXcTViKdsKrytQXzaSjAYQcaGbFc2pUpa08k245oGR6pRdpYUd78HcGpxjAs1j7Yz+D+8kSQn2WTpVe6+o7/NUhvVyAndHMDayw4+PobGBn6vwA1S8gvrwQNghhX3DdFE53C+NdIX8PbNZtVqx2aiIVMrI7lPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itJZ3Uv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itJZ3Uv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AB4C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717019062;
	bh=wLcM8en8cqPXUzwm3+tM6D/ArsImoEKrpi1LDVeTj7w=;
	h=To:Subject:From:Date:From;
	b=itJZ3Uv74XjnQEjoNKlAaS3IcyDkMcmWrDKHvQ/aDqMRJzzYcvH0KCw+IQuYzyJgl
	 U9FnnWltIkwnWoLED8SdWslZgM/YHn334WJ6QDZ1mQuQR/L5U7Q4PCB4MvQEUdW0Mp
	 osHqjdKaTOmDpSmiR7ZxRguhfItCcLSApQR0puFJKOMXywPWvYEkuwC3z5CsEo/X1O
	 zN/G+1SRlfbr494d3U2+O4+RcKU11Qi8YZnsiUDbVTEf0OPBswvc1CD75/+QIby2nY
	 GQAwEVvy5k85mPDFCs6NApL8D4jsk5RyJcZn6J+RnPrjpphrxiKeJ2NH3prd3UfjiJ
	 +cMVi3yT1WwGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C447BC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701906279.9389.14890590459044992039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801cdc818e8ed348d8a9be9c5455d29f5bb7678880329c09d01e187de66c83e3
Date: Wed, 29 May 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717019062
