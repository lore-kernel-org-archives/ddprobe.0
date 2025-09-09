Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1DC1F3FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757378994; cv=none; b=T8zeDYhMQXWa/moNIVzVMJoGpjJlZT13OgKqaLFMkxpkEtWTLIqNMQ2wQBGnLmqGNhrTKe2OuTagRyyTN71IdisfXLh3Z69P/YhrW5DZm0I3QVl5G0OVtZZ1rSyeaeLRuEti4wGebf6GX3AHDqnoKSsK773NMaX1QOzG9UvpClE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757378994; c=relaxed/simple;
	bh=EpSbG7HEmSXaocoBxyGqZB/umkatZA4pXJYJajsApC0=;
	h=To:Subject:From:Message-Id:Date; b=LFQayHqin8gm0lbEjEmWU26qldjr/is4aWC+JW1UCcdvvRqJJux0tQblfR2CcglnYFpqtrL4KFKHmd2ReV25T7KKEm6WA1g4laHdJvfHhhC7yibz0Etcmpf+XC0O+GiOEnUiv2BLKiLFoQaZQ7zS2MaYMCgHhuThqEx5n1o4JRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPuNS7pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPuNS7pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D284C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757378993;
	bh=EpSbG7HEmSXaocoBxyGqZB/umkatZA4pXJYJajsApC0=;
	h=To:Subject:From:Date:From;
	b=oPuNS7peww4URD+gwO5mENHcLBhDU58AykCkvI0GAbxbXaTKgZeFogFDArcCXxynN
	 1AFbei9b9Ui3fg64zNTns3BGq1Jk7+N62DW4HmHGrzbZON8/KPv0uWLquxoW3szUsr
	 2f7OZTaFRMIRnk894ov445RynP9aiNlAPVH4qni766JWAz6JSmaowGH7KzzQN8NV+1
	 u94ApoxZzs5P7dC4ZKV+tXgEkuxhTPpzq5e72EiLRL5oWb4dg13/Y6yMLZjqat0F9a
	 xCBmpooUfySLDMHM5OazaXDdETfngCpegQBC45dMCGj9FuhCgZUkMZBIUewsNfpvoP
	 Ku1ArV3aXJQKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F020CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737899357.28873.11165241353491926910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b20a623448d1fd12728d45468360d7bdc5bb20ecb734256c0d0ec45db6a7ed
Date: Tue, 09 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757378993
