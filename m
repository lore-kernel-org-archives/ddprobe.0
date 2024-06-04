Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7940013CFA3
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717521383; cv=none; b=igy+si7eHehi5qYs03X3zsORIWMWUeSb70Fcoo4hXd0X+Ln4agWWj+D3nE+L2EPp3ktovxPsp5CKcInMC6XImkjMDVdG5Rrf/4Rt0gbcNJkYlwGtd+X/MNL5ZgdPQGCBVmrR/Z/l1ttnwcSIuGtMq9qlYKcMG1NNozCAwL6nYFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717521383; c=relaxed/simple;
	bh=7vuE4tZ4zlgY/84OZG4YYjJpr0aSaeCSvuTW1e6/2YE=;
	h=To:Subject:From:Message-Id:Date; b=Bm/mJDayyVd/cxrJsI0mkzxk8J6dPKpD3V+jnVV+6DMZ5X9EX+ViSOJEanXtQ7RUpUk+l1VaIyWB1YLWaM+JYLX9EA3Q7HLH+TXbOyObiBHMcj9RNMbGr+4jbYYy0JT7KpYmuyQA/X2iNHHC1qJHRGHNv9L3A1cUw8Xtl3ud8uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kg6vy2jO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kg6vy2jO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F351CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717521383;
	bh=7vuE4tZ4zlgY/84OZG4YYjJpr0aSaeCSvuTW1e6/2YE=;
	h=To:Subject:From:Date:From;
	b=Kg6vy2jOVj146Adp1vlv18l8OTFPBGCm79Lr1gGAXTbz/EZSVVf6rUpLtvVO2F4lu
	 DzqGXCtYKsBSXnO06HZVC1/UWzWwl8MBNWtF+bjRgoHUKb2x3IDE2Vd06yM3yPxZJ9
	 ZfFnfi2H1nQbbsEyr1m2KqO/k12pFZGdNwlPnafJmTyT895Nbj1NrP34Wo/JB70lfh
	 Kjb8JlZ2bS94GdIMaK2brnsWi/xNUKmywEV7k5eE9sOaoaQNdUO5aJZBzHa5MuYG8m
	 mu0tBBSPvohJ3LjKps8opoAvJ1g9VP6skMmwEvOWjOv0+1/soK1YTPn5a3hCoWFNpl
	 QcWrMAcQ75fdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9781C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752138287.22894.15341396494487398922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e037be5b41c3833ee7074e4cf0333b0f288eaf9fe51609fa36f843d7355928
Date: Tue, 04 Jun 2024 17:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717521382
