Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70963387341
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792005034; cv=none; b=EAGSmDobQfkC0IE83RxYBYlNFpn1tx9nuIhS7t+9Yrellm+DJb/UzZ3oF5nwRy+fbvx0x17xNGgDkAPR/NDlQmhEMzw8L4OyAffz2cpt8128SRa6O8ltoVG0Q0d+Gplc/ZNCsQ8bXnmkwjHekS5mtXcqZ7cUppWohVlPCR/v7tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792005034; c=relaxed/simple;
	bh=bul85X9AV0TNK/A5QOqIg9ATBV14lZgPmNGPD3V5Iks=;
	h=To:Subject:From:Message-Id:Date; b=D5Nh/zPOnefPM7KxotaR24dnvd0GCXGIHlfVANCVlPM3Scek+HC2YrXwYJK0QODdDqWJijtoHIE4+smx+WvPOkEXrt+fJBH7OfkWmifohEjIn9J6g7AvB7ijjb7t7WDdiooml9G1PJQcCPihcoKtn2ac4lqKdZFCLLHOUyhIPJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QduYfP+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QduYfP+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50FFC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792005033;
	bh=bul85X9AV0TNK/A5QOqIg9ATBV14lZgPmNGPD3V5Iks=;
	h=To:Subject:From:Date:From;
	b=QduYfP+ZppUQz3ljQb+dCY4eL3ZTAxMckbL2gp+09RFJ3GNPUUA9unVMW6AGrSi97
	 nFfw8egvwo9EZkjcGA/WC/vaSsa73w67ISWYMIk7MDIVdm7iIajolb7Y+C3OmBVS5r
	 jVV4QhySVlQn0P3LN5UNpV16Lp3xy5kJ7lU+78aDraHlfqQveQ/LEYC1jxnxw0GE5d
	 G9wvRDZXZz2Z7vFm9NDXfchsd8hbM3GBcjQAI8XNwgX6EfnHez4+ZzBMMIu5kY4q5+
	 v97vXbs+KhfGqVPhk78Mvs5LtCgyfXzM8k/jOlDQ+MhJ8/J3OE1/wjYb36DzbPS++N
	 hoCPAiunQyG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8CECC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200503370.10416.17003929187029197271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe18e0ec326701f9562d294b2e5aad30de4f119ba1c029af5e61ec4c1c4d6d98
Date: Wed, 14 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792005033
