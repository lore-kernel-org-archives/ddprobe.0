Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC87032C309
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755537594; cv=none; b=m81P+JgrdDpO8eDJdk1NyKmRcY0zWwXSR5aRa3ClwqToELLHXIiOdXKIJQtlCb9PayVn56Tdr5rLRxsRT8AEsT5Vp7HIY7JLFApgWMaphN/D1rzNh/Ke974HnV4LPDKgisdt0SQ4ozLaAQXKnyjFjUN1FbtLpO9JYJpqvw7D2P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755537594; c=relaxed/simple;
	bh=UwbIFgaG/BUmG9PTC/XaBc4OAN5sEM0Ch+LUY7A8Oo4=;
	h=To:Subject:From:Message-Id:Date; b=PmS4SfF7rsiLJv8qpRlpTMhCMg9X8ImEgXlkK8UC0LrlfqfrCTFf0UxHtNMSNt0M0wtkMTodEHvR1iLX8XCcjyvMzLBuY4w8FC+peBsGl2wfdRD+ezOG2iOC3plXJ3nb96or6G/pz9+YG/UdXg5esax6WXs6/Q58fNPQdbo6g0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kg4kXDZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kg4kXDZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1AFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755537593;
	bh=UwbIFgaG/BUmG9PTC/XaBc4OAN5sEM0Ch+LUY7A8Oo4=;
	h=To:Subject:From:Date:From;
	b=kg4kXDZi5426Z3ds7S5zf8dZXu4kElV692e4GkFF9agD6eD2zkmqnYuSnvaADBoUh
	 Arh1ByasM1p+PnyABi/Hr7d1RdMqBUjPr/Iwur/I7L9loeCD86dlZTk8+VQFP0QCss
	 I2BY22i5Yk5S6bt7jTRqEOWchYnvmTvjIVgnS1MM5I7U6LKrw5b0twB5xg1Wsl2iP+
	 n7Q2V/VUPuz0FsHFj/QKT1OcO9H3DKkkd/k+x8YR+Ma+JMFejukCsoAnK8e85OC2A8
	 BkGdUhi9AAwhUWmiVm9rrz2vbz31qkKndb4xWb4gHawHVskMl1TEgW71RFy0lp9Zd1
	 aN8OiiQcymnAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32ECA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553759357.25752.5886065860451112102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e107b207eca2d78816d91938a98239e6cf2a06dcef8228c91b34fdd8f2277cbc
Date: Mon, 18 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755537593
