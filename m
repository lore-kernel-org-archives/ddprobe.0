Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C21B10E3
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767520434; cv=none; b=DTkQt/WaKn7A+5Zrdx3X5fKWIONUNsxEC5X3j6ZSK8reLHfl7s/y70//FlUL9mFDKsvcmuLwGCtv7014pZbhisPKj5pA6vqc/5tNti/gnKNVINbrD2k1o71XtxW3fidRU1hT8MnHEHNOKRsPFKMKJGt5OcWTiwMrlBCZjclpE6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767520434; c=relaxed/simple;
	bh=htLogV3Q5KeA1H7PM7GZIYyxjSTxsV5WihzDvn3B9Q8=;
	h=To:Subject:From:Message-Id:Date; b=WmOJOfY6c/eBhpFkWhW6pE2NUzevI6CUeTV8zqIiWJ1zWICm9/dW3he6LM9wOCNjxld+fQUHeBzyR8FLUf5iBGAHHW1xHAvwKhxhTvwurW5LreX+U3n8Y/Ptqz6D5SN80dIMdoHsf20EdwaBBLaApf/+RFDt0+qVugyoSXvFERs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEfMRLG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEfMRLG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4122C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767520433;
	bh=htLogV3Q5KeA1H7PM7GZIYyxjSTxsV5WihzDvn3B9Q8=;
	h=To:Subject:From:Date:From;
	b=BEfMRLG8jyAJcBR8ojz12C8z6ru9dTyGdY5drJGJjnbS7eWYaDBXbNNsDouSl6Hu/
	 XQ4l35L72AoHlgAMPrW92w6E8a7WyGvIVhciANZqYCy7KjN2SjyocGvIEgT/LseBDm
	 oTDitX5qKWGrO6u/3/h+u2VJnyehrVTs+Y0tSzOEo5wfwnN/fL1jPB7e2O1aWfO12U
	 J8j5JAjxgBDXk7W7Sc9y3OrpDTkEfUUukw8rqO49ksNgEsqSBhU/VynccTgRv0wWi8
	 spCYx6nouGmb81rQvJGN1G10IlP1F0WOHWWjF1MazaQNU093WQNy0pHT0BKeW8i8PO
	 frRO7YRBVcpNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92189C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752043357.9807.2014251533468495110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6dd4cc65ec79ba77cae6b47d227335f63fee6eb99e53bdbc50cd667dcc504e
Date: Sun, 04 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767520433
