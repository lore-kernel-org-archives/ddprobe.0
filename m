Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D48C1A3150
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753051194; cv=none; b=E5XKh3E3AmBj+vB29wdgtAR+Dm+6MMmNCrGvtfLidi67HrZuKPZVE61oRlmB+YEJlizCzmZX0RNjFq9TqaDYg8yyL01O5bmlpWw18ptvvypmyYWWO1K7n4L3jJSek9oDjrrOzTQXvz5Nfggcwa5PCYIbZYyZ/rh1vQm9NIAr3JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753051194; c=relaxed/simple;
	bh=ioLmXtxZ/Xb3CjvhIUTAHRmVz8qwuGxbK81CWoxsc1Y=;
	h=To:Subject:From:Message-Id:Date; b=RmQZsl8TLv/I674J0DIOa85f5om4ItvgNrbV3dcUkj+ff71TgZPAjanPO4m+AA9xQL/3Yias5jtGUBC7DkhJCVQDZftkCKPi1YNH0Jr6HMZ0fa9KNt5Sfz62AwuO5IsbYzQ04GsUs319Ztxe/qmJBXyUGyZ3xGrEaxlTK90RodY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etY0zyQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etY0zyQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753051193;
	bh=ioLmXtxZ/Xb3CjvhIUTAHRmVz8qwuGxbK81CWoxsc1Y=;
	h=To:Subject:From:Date:From;
	b=etY0zyQU05JXtMzHVuC92lLyTv83TgcAWRM8IZ0setaNdvBbzSsq3ABKGAsf+a1nH
	 vlZIsbF/Ls7U9QKFFehqTZZ9s1sYlKyzqCEUUgAdfyrW5bOMLKm9fSFTgAJZdiMkJH
	 72+K9MFAhQ1UZ+jhtp7MURQH7k1ZfxQB0ORxwkHmp9ZGSNV2ldxN7dQPKqU+HrZFPq
	 HTLAHzfIx54a8YyDOVGPwqQnUz2FpHeZ0LVMjFAtKRt3RporCvcy45EgPqJTWvrxUq
	 OmVVjbP7TLU8m5K5wU0SOPg00Ak6bbA0lXre1e/xXLrHW+783cth7C7q+xZPfusV9p
	 yOvdJQ7ZDGp5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE75C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305119357.18337.1791752776457252904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7621007624ac2d40590dcdc0b5de424b79faca408fb24d686119d24abae5d220
Date: Sun, 20 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753051193
