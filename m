Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0691DDC33
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753262994; cv=none; b=KMPz53L+/O6LzxtrYlA9cwzgh7U4YAXgD3p65pptwKJHzHmpl0GeM3TEss5N3ClE1EraOetJKktSn2BiE7C3AAeF+O2uAp9XEZe0V8HK+i+8Pg2jpupNtdKlwatoWw+/Gr2I7v2Mrb6LcfXglM6zIegAMKYA47Pi+9M0lhpVh5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753262994; c=relaxed/simple;
	bh=C2eHzvGa9JR1Y0z/OllLvKAa4AjFHtQ/zQ76Fe+vG9g=;
	h=To:Subject:From:Message-Id:Date; b=KYmLgq+ckOEMswWgATxxTi8hOJz41HGgoUimUmpjwJ4duGE0lBWNB6qFDtaNedHpUMCrdLvvy6uQZxfGTSL2oLQXF5zt+23ZGeKPsDJ04Pa0sUF+Aisvr2Xk2eVLuJ5nZYGhSHhbvWopOd/GlUX6uBIMUZy2bgykuA+2TIe5alw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bC+MBzvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bC+MBzvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1946C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753262993;
	bh=C2eHzvGa9JR1Y0z/OllLvKAa4AjFHtQ/zQ76Fe+vG9g=;
	h=To:Subject:From:Date:From;
	b=bC+MBzvyFv+TUkeLpE9BlgFol79FtfmJDBrJamtu0fMBHYXpr5HqoF4+IY7lG/sTx
	 rBuYMcwIgJMIPSp7ka/vl0T7xQPKMU44CarGxpjZj4hrMJjxLtGJnuvX4lSZHbY48/
	 C2JODE5ue8pBGbFdyWzGCAOLqlQpkdk+x0HoZOmbWO3CFHVD/IhqqrDHqDo4pbbvkT
	 TLQC/H7Ud6DjPhVj+DRLDqQdktGEqcRR9KA4mb1p2ugUSy/otdV+wNB1dey6kCwErD
	 OtiND2qyX6roLUwKcR0qnvYbUJi6P5YRxh2KBSwR5Q/KxiM8BKpA2bfusHj2Zg8cvR
	 J62RwvHtIDwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F923C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326299357.19688.5269111829848111314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db51ffdcef72fc2c388676a9a3d6852c4b32bc46d90bf63295fbdfd28a73e17a
Date: Wed, 23 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753262993
