Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2097023F417
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778413834; cv=none; b=iMh4FniYW+J17qvvYm0deQS+/Q+L0KlLgSo8wqRqoI1AkmVcYVxShOF+x5jmrmzwhbuPi3KDgcYRVqA1t/QiGjvOcoHSzyNrCnAT5Pxu3zso9nh0JpQQrkcQ2CPcMKUycCON+fx9JtycTHE7dwY2CBfiNkVzHlvhPsdj/tHU4X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778413834; c=relaxed/simple;
	bh=k39O9UxE4oEgsMN2JOMoW2JtxSGQsCNgOuLujYgJq+Y=;
	h=To:Subject:From:Message-Id:Date; b=fVDMy/Y6LhxlsbP2+DxeJ5ve7eUBjR+TKX4nXkbWH6p1tb1ZAJf27Ys8Ihlg1EVmo22tAHFb49wwr/qjMKiGr1q+Ec10dfNlS4Tf0Q6FcDfDD8s7U/jHOc1suR1baq3eky/geVEAneNuGWX2fZeWnizxS0W1VwyP5Sr+52q+vvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI4wkPJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI4wkPJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB9C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778413833;
	bh=k39O9UxE4oEgsMN2JOMoW2JtxSGQsCNgOuLujYgJq+Y=;
	h=To:Subject:From:Date:From;
	b=OI4wkPJSuyreD89CYHAAcH9eAf2y70bGExEc7ztMK7rKsNcH+kCTuEjvHvhPzz1HI
	 CQdWiL4ySKzXOpltVDmpo1a2HKY5wtD8StsnWaYyxcLl8AL1ob6F4naPT5YXF2HVGJ
	 mTkXzSWA5Y/lSY9S2l6GYTVGX/+6clusCS+TrGBjTz9l5NW62fjBs8caS9SGVd9Vyp
	 YZJdixY/72DO97qDrl+3wS7hX/iKWKHCFRmfLcnUAO2ZWzJo2cq0cnWgrFigQJLb/C
	 9QeMktZd+BQh5Y/e5Ewvl0gFStnlpdpMi6LYRslvWtQIH5UaEE1tIIhq6ifZFSbQOi
	 Z8zehjxUeYX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA62CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841383369.11366.7354222367997898071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0475bf90277aa8edaad91290b74dd7c8663048c5d8bffb54ae1b2f61bbe3dd
Date: Sun, 10 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778413833
