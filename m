Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5208830C168
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791318034; cv=none; b=GcI8Du8BBeSIyjS/tgkxUvwmBAla+WW8mV2HaBs/XBHOB0LDdgix5OdACjzWEch9B6/kLxPlPyM5+Gh20ORFlSUOkxQ2QIaFVyj8rcYypyqrl58ZqtH6bEboQ+B34Heptg/d4MPMnl3VAv9kH/848xJa5Evfz70yYYWm2m9+6tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791318034; c=relaxed/simple;
	bh=EmHDsU9+6Txmu3THkNHAfKymKW0aYcVjbuy7549LNGw=;
	h=To:Subject:From:Message-Id:Date; b=OS0A2ABz4t3B6HyHjdrWdIiKfic8guCOKFvsR2D8u9zWGL9jHXx6HVFCcMNsXTkiM14gZ0ndLg4tIhj7Oqfok/eKhu+n8ibUJPKKrDVz+G0Gbg9fQXx1Ceb8hDfXVj0wQq8Nmi91VNEhxrybYT/2C2PYDtZ1Qa7gxkJNm4aPq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYggsvAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYggsvAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A0FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791318033;
	bh=EmHDsU9+6Txmu3THkNHAfKymKW0aYcVjbuy7549LNGw=;
	h=To:Subject:From:Date:From;
	b=FYggsvAo6jUKxzFXWxJlOlj3RdFfoKjEG3QPXU2Z5wmmFYfGNBQqpgnf+pvac+niC
	 oob2b6y2q21urJxRAiQ0WwZ8ypP5SXl9B6sxGs2nEbR5KXNwZ5GEHaKWVE3V2RGIJI
	 e+CaqJTY8OFZ4pU59NmHrjhyJfuo7Jo3ZcJb7lIOPa3pxP72hFZFO/VSw2yLP1odrG
	 LDkwDcP/VL7KmhgMW0VxEL5sjxLmMPd8KDkByiVFuzDbATon1+FO+q/5efb1C8arwN
	 RwvCvv05aBVhX9JTtXg5tHVOdhBHJy/iZWiwapPa27OzHnIsy0pf4pgpkQxVTtfd7S
	 LYHvY99rKGINA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B3BCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131803368.17016.362725731163566579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c26c87af036a81d69f861531ad8deae20b25bd38971c9a6abfbd4ee53653153
Date: Tue, 06 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791318033
