Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F7624DD1C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749392994; cv=none; b=DJ5ymI42BEFTCew5/ihLUU2+rEX1GsU3f9ZEIZeRsNd2Ltc4DtW82Bn9RV/bza6H1p6ksWaU0Jah0FioHTY6DVVmIwyOPSbv9jO6wOA5sA6WEh+j6CnjSibOyyu/oDa0lBBgfL4Wpm5c7dbrygYZ4OHzt6i1anY3XFnV1evz2js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749392994; c=relaxed/simple;
	bh=obS+kSHmwlkSc6IvJ6az0xEwzXT5qbR317SHrUknSq4=;
	h=To:Subject:From:Message-Id:Date; b=U0dqcR1LPYxLgdVJx+mWnfQvDCj6KlmdiCyH2v7lcyV27IriBZzixx4Rmm71OM3AWfKchh88Vj58vcSPcRhrKbOZ0Xi+pnLjo0kCGkQ8UNr8fFwo4Ia5wd/toJcDDEHdAwj7YDNQrDvGNK5akJ/4MCg/76CEJpUJsd4QT4fk1H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzhmskSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzhmskSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BAFC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749392993;
	bh=obS+kSHmwlkSc6IvJ6az0xEwzXT5qbR317SHrUknSq4=;
	h=To:Subject:From:Date:From;
	b=RzhmskSXcVhF3wOVEVN4i8FuwjZqsG7GpVxFH65p51OPMNXTtYzuKWO0/IdaD3v8y
	 N2yWxg8hG5GrQDixs3pd8sH55iAQnLTFO3uZpvioIi2FYhOe8fzMXpvsfWA/wlbQZX
	 fKnLf5375RzifRp7Wjq+74xzmEAGXKdCVCow7o7dxH1Hhc6qIubb3Rga7lWc/myie0
	 hsbfH3CzxzbG2gUTzLwO6wa4AWI95Rxe/8c5HIgJrEKDNrlm+OZeH2kexKRUlWKGV6
	 MinCX1zpWoyk/lqPL/9sPbCAbpd70zeaeeyrB9gsHnhDB7pbSkwuGeZdCpSy3Vwk0m
	 swi/u/EVDNZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F3C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939299357.9373.7500465961376700776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b103d8908b35e834b3bccc109c2010fbfce0a5d89caee46b6a257e86b17472fd
Date: Sun, 08 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749392993
