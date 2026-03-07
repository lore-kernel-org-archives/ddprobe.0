Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3398C2264B0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772891094; cv=none; b=nGMMKXfwvTl+hSxtk7v5lLgLXazf57BMo9YRFAJuPm0zuftgc9sKraGHaILHnxDKwbDxaGE51xSewxtx+ZbQFFE0XzeJmT1SmPIQacTf5NIj/qiAoueLxGY5Q4AMAPDyNULVftwcNptrtrPprT95vHUaFehAS8m8m8Rfq1AM0Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772891094; c=relaxed/simple;
	bh=CfoD1p05Jx5sJsZ1TlSmPbbDZAxMU0ZPf7X5wPhWtfE=;
	h=To:Subject:From:Message-Id:Date; b=A1irMcWmqwXLj8DUfvhBFcJ1oh/G8bNL9PvBZLcfYitln9z+i6eqkwER2xBzNswilKhq4B+XhKC7QK4qpHCsDIHUx463bWdG3OwPn9JLXbcNtbbSTqwZXpZSUp6S+OIb0UUTqxeobbDCbyh5oOXHE21FktX7lPbPjaychiCHLpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaHazoBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaHazoBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3030C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772891093;
	bh=CfoD1p05Jx5sJsZ1TlSmPbbDZAxMU0ZPf7X5wPhWtfE=;
	h=To:Subject:From:Date:From;
	b=qaHazoBeMt/FafFWUX2MKlkiophB7aylhG25EkgcnrIj6VRMawC4Q4lU9zN3vAs5q
	 rRv2FeTxsS/FSZ7DLaZS38ADIPb8bmIy1V+9k62zLZzvdWMCoj7oqi6gzundBqubBK
	 0RvYqcDaGKWlFKJZBENK1twXkblnfF5i+pOJlQdURVtgMP8BTcmaZItMJO1Td3hClS
	 pUaL+bQKKdhFIlLI590Q8pUk/1pNFFlF4nddFXDRR/M8jgUHVSMDA5h/xd+YR+QxZq
	 1lmlYJn/0b9FMaeZaHREQ002E49IiWDkKQkIJC0p0pMDVuxfZve4Mc5UO07Q04acXK
	 e/M8ji2Sbvy2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F74FC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289109360.31870.12866516019317297019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3164eea4b4da45d7a7bb285735f398cb1bd49c04d145d52e4ee1bfcd55768fc3
Date: Sat, 07 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772891093
