Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EC279C0
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746068995; cv=none; b=jy2h4quES64dIZ1bVKdf8AtX/DR38PTwbA7Qjl5yK8todew+xsWQ94U3mtsQd9xlVrCNvNlH9dlgdz8qpoyWiZH8FvgmjQFjhCE0lImrJ7q5uMFFTphdHC2A1vJkg0q9iIhYHge9d5YiChG1cr6xqMPsxPeZSWg92y29sN//oxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746068995; c=relaxed/simple;
	bh=UNx+TN1MC7iiCxe6/ZbUHC0zJR2LOI9qUQBIvL1B3q8=;
	h=To:Subject:From:Message-Id:Date; b=TaKk1kg0q2XEIRMEAmUsgm7BxFk16mdLPk7egqDkZQJHJZhZMTsYLzABYefJR9wtzoJP6bebP7EMMwlXwRzQvYowES2DmtguIdjJMUmyv8gm9gh93OXlLXtRGc8aukXxxuR6QKgZhEIKsmeHCp4gvoehOWam31u8rjNIOwsqfOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUqXbsAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUqXbsAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20DBC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746068993;
	bh=UNx+TN1MC7iiCxe6/ZbUHC0zJR2LOI9qUQBIvL1B3q8=;
	h=To:Subject:From:Date:From;
	b=ZUqXbsAZJZmVS2SKADGUgqAlZaNJlPWslBTb8VXcfDKhpYbONAeuchF67sryDkRha
	 I16oSXCdOxFCWju/D4HCBjgN5nzH5duPe1XIxXlXfVLKaHWeT7MAeENHhWT3l/WgP3
	 81V00Q+Ea2aUKbU3lfC2jcUineirArcit+FF5yxgiHuupH2sOmTk3JjMeCoHF/gedD
	 0MbnucRAkZvpZhzPQJwU1+6ScGJj/0vIGuhzgseG3XU8A2ZlScKTcd/i1KwaL5fk/m
	 BsM1Eix65kLmOgoftR5rhT4roOycjyRc/Ut+xG6FymKsJdJ0kW+S1MXspumgcXN9Ot
	 HpsDgtI0jYDjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E95DC369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606899357.26486.6108225972150226284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79bcb9d1c68cd50f4cec01663d5741b9003b7a8cb1906d94788c15c1ddef52dc
Date: Thu, 01 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746068993
