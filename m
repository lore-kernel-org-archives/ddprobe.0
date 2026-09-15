Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481EA2FD696
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789453234; cv=none; b=tHl7oirypxJXMyr1K6f2vqFOCLiR65gIhRJqM9RrcuxEsOkRjcqj7wJ0nmCcZIJyp1MsCSJHOGBf27fo0a8Fqf8sxpu0LC5Fnf0xvKY0Ooe/xVlwJbpaSCfyOOLB1t5w87wiZKiMd9xKZylstR2uxQ7YMLAmCc61GmX1hzSFdZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789453234; c=relaxed/simple;
	bh=GSZkS3Qv36tf6/QoPrNcjnUHail62TypsAEbvEMGJwQ=;
	h=To:Subject:From:Message-Id:Date; b=b+acXgvMxjwkq4rs0Fqh3aYmLWLU/2jtr/2rjaGA+gt4fpxkyvT8C4qatEv9rH5yPJ3pB544hV6qNZJKxxdzqRjq13ewiKPDcdTvjU7zqbx6967Jbn3Q9cnZso4E+78luFbnYPlP2Xm4Bq7nvvl18ziKVIRDpjllVsK403kiTCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKWou/Hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKWou/Hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E7BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789453233;
	bh=GSZkS3Qv36tf6/QoPrNcjnUHail62TypsAEbvEMGJwQ=;
	h=To:Subject:From:Date:From;
	b=sKWou/HsnWule72xR0bzOkXdOeFoxD8fkLaO9ez7LfNTgEcVRDvs2X/5KBFukXlXo
	 h98yAAKylAHuY3vMzfM4wrjyQ5RjU8A7PPsZlv44Ty9uL9XlvHm6jgj5WsitFqrEty
	 cNMwvggHeHSZQpOjN0RjWDqA74KMIn4RJpasXm0ZmWjidh1IzdMeEQ8AIB7a1/rgGR
	 JYFRUnuc6KzFHvNxLTzPbs6JSOk7eLmtemeXH07VtzjKWsJnxEWvL6iI/yhAPA+prF
	 fh6bfD4a3ECsgoiR5hGvauqiue42cFKUr14zq3IPRLcVSbrDqO5vfWT55d78lFAyZB
	 +XKmiVw+7ovgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BA5C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945323371.21065.5081786152140699436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143f1f9faf4580b0e5b56ffc95c56865bc30933143225d9c3ba42c79c875b815
Date: Tue, 15 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789453233
