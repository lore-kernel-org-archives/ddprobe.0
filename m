Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C283B7760
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790136034; cv=none; b=LPXH2SxZBIwkCoOtyHGn5bR4rXNAEh0nzFNseBPGZJOem96dUJZZlak8B1fcRGkE+VqUJEG4JrvdzxfJ9jeWhBVa5ndcxiL++Hl/y5S2ofH6OCm1yeJeOOBgp9fZIFlvn5kI3pd4pj4ncjvj/A6OQpNacfEeOL0JTKzHuXOPUeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790136034; c=relaxed/simple;
	bh=6BDI+PwYl17CipUb3rVmxba9OWxVNI/MWZN2TB8RpE8=;
	h=To:Subject:From:Message-Id:Date; b=MJcaarmRqTLklH+UCs5mHYuMYcJaB3b82D1xJtHbi7jS0xMP0d2CkkX94yFa/Co4XXfVVlwAQQHMMDyrAYhF7OQyRoq9TvqKl2f5SABt/6IkOs2TIojad4SUU2RsxIvrz7EBWeA8tzy8lDh2ez2W2zmAicigyhxeX5ItpGNTIAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUhi+iB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUhi+iB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FD5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790136033;
	bh=6BDI+PwYl17CipUb3rVmxba9OWxVNI/MWZN2TB8RpE8=;
	h=To:Subject:From:Date:From;
	b=PUhi+iB6qPmgcrOybDpddUzsSSi7DPioiwElMjLjGDnYhnyKfF06jgGTTr/d0Cvqe
	 9ErZxKHTa3CotSN0ua3VMmHhpdrFZIcNzpjObHwVPyKJVpDg6QbBFGf6xQMc7bNlNG
	 h6g13O7QIz2spBNaUddnSmGcUGrJdDgokdwr23N/E4jP51IsJfEJSQZO5EGfKElvb9
	 vOqhIavLrNOiYTUNF0+6SbNhSj//FghzzXJuclzbRJXaMH52DgGCy2Ob+16Lsl5qgx
	 XNQRUry3fdTsF/Ppu5qluJVf1EK3D6ZFm8ef3THyiVDAujn00fx/XjQc1iGJNJ2Jlo
	 z7cQeDNz6l+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBDDC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013603374.1804.11944788579526397017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2a0f0ecb6c82947ceecc44944f9ee3cd545b7d702e7a8339e0d13b423e896e
Date: Wed, 23 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790136033
