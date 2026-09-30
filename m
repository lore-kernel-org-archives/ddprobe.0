Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595AD3C276E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790752834; cv=none; b=IBk8VUYGCiy3L1hj429otv4HUrW3sc7JCnVwDIidaZRI/Lvi3nIR3H3ZdWnne9JO1Bu5LyGA6Hd+GbZOb0J4fhj6QIkeePHBx1GATxFzHGFnwovxh3e6IwsJN9kXSZxg9GRhqdyIFYIK/E0CPF9qbNNzMijdAP4N6IE79diJK+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790752834; c=relaxed/simple;
	bh=EY84wXxcaAfaDgXNhSg06R1HhCEORN9Ab1rSG0ruzZc=;
	h=To:Subject:From:Message-Id:Date; b=dJU7Cm7jTJBknbKgHqMsvKL+eainEkEKOnJdKdvg2G9l6dKBkHzwtFmAmFr6NPfpRZ/8S2b1WVzcga74Ewmrggaj4p6rSSBoKSeVirRf3xB1qYdSy3syNetJMxkjXc2065bz2kfCH9g1Yc2iKsnm6XBIwTZ4nf2nmSSOCS8GEIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eW50PTlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eW50PTlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0941C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790752833;
	bh=EY84wXxcaAfaDgXNhSg06R1HhCEORN9Ab1rSG0ruzZc=;
	h=To:Subject:From:Date:From;
	b=eW50PTlJa3Jn3JUzb6vbKMp9Isc7hSIxfyBYdMVM/z76EiOt0Rrv/PpVCobmQGGVF
	 uT0qCGkQRe+9H4sejY0CmbPIFBQ2m8oiDW1nf+0y3Vusb8lCQb+AbVaUKG7d7zftd4
	 6dJuw4reircizUID8eypSKRkpjp5QsQ8IvLEahGZNPsoePgvDQNw2kVS2ZY2QG5Kcc
	 AFgynqv5Pj3DraHwWHuKwZSuhBwXQkrYTKbs01FvydhbpQJ6z1qQbwqR4DfuZdkawN
	 puSuGWqN5L5VBHiR2qUyF2OTEp/hvYb7JIdRxT5cMRT4b4lDsDShYqfWcQxl9rROnn
	 DbWmB3D53GWAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0ACA5FBB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075283369.5449.2636492822413599493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1bca20cef19260f2aa9a34786d18e39e63f99c171b14add4cdd05a39c8e73d0
Date: Wed, 30 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790752833
