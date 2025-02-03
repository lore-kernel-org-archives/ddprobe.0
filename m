Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B020012B
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738577154; cv=none; b=AyLGI4gpKOKaNW5x4ZAD5AfRQeXsu5EchzwLAkP6EWmWBVCLi7wywWutqD8x3fqc+5L4RrdLMs9ZyReO5SE4TXIt7ugFJX9aW2Hx1TcT3V/MD5d+Cq7ISzj4qkyVlI/rjtfRTbZalLjGE1WoTN7Q4xsd2llrZHt80aI0SLcoTOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738577154; c=relaxed/simple;
	bh=6csYhAlbnKREq8FUXkmwN57wOmrBMGPC5Yg9rqYqoJk=;
	h=To:Subject:From:Message-Id:Date; b=HY7X42CHqa38turG0y4npbLiWhlkYUiBO8i8LR3UoSXWBn7K3fUt/1n426nvgB5CCFTjhsnuCA3lq0Zc59vXafNWcG/e65jhUvtQVXOq32E9YosZR30JzpAf/+d1PeZutiv7k7xK+7sHW3qJ2z5x7AvvmaRrHCZvi5eg9aYnizo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHA1GK/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHA1GK/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCBEC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738577153;
	bh=6csYhAlbnKREq8FUXkmwN57wOmrBMGPC5Yg9rqYqoJk=;
	h=To:Subject:From:Date:From;
	b=tHA1GK/t/ljpoJvbQWrzNrk7SIq+jBnNRrnIqZ5jTmiNlFRgTjWhoknbr8p9CWLE8
	 ZvD61OMdC6ITYP4qSuNXXx+mtt3Mm34qCvyOidcm/VuFczbduDiNJHZKmtm/BaD0OS
	 4QWxUSWeijqecxVdWYbLkITEa4gF3qyExZwUrU8vzK85NLvU1qS1ruVsQJO09/HT2D
	 48MZFBU55IVXw56MfBU08KP/plItj2ed8a3J+4hca291n9g+5f5iG1mkKcwLO8AAzV
	 QJvN58FWjSQIEokdBeN8mHl6aXO6ud8h8nW25tlrRbOwDnQM9ZqYP+7rJA+5M1oE5O
	 +WDa+/IXk80vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A42EC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857715360.20090.5483182953871677008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1754f587d8f7feb6a6982ca0899355605394c498e81138ad937fdad7d5612b8
Date: Mon, 03 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738577153
