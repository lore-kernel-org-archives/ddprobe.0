Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C80A314A60
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789917034; cv=none; b=cMYmKRf5OPyCkiq3pB9A2U9sfA11/yyd2q8++c+ymQFF1Vkqu2ULotKAK2LJMXZu5VQUbzLWNYMBrSD7P7MyqhfcmcrJ/lYk6QEKpkiIwfZPUhIhZq5nGI+FxbN6tyQPskE+yqJCjrEkdCp07V45eqPmwzmKx4qOpWuSSPcd6FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789917034; c=relaxed/simple;
	bh=+1hqTmGv1xUmLt2eXzvJ5tEQGdUN2xOEwrxYcwzbiwE=;
	h=To:Subject:From:Message-Id:Date; b=MHe7Vt1ucLhhD6fCzH1OXru52eTiQrYhAMTdRXi6UriebZayK9w5mDNbeJVOR20uYB/bgiOqLs4f1gRw9H9lAbut1V1A62P3R3ihdriJRna3yeiyUB1LvMNNCjx8YCEd18ZSuF1pIcSGbwBMzD2Edb7kw79a7DPIL7kDBpeVnCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpoArg4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpoArg4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18CBC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789917033;
	bh=+1hqTmGv1xUmLt2eXzvJ5tEQGdUN2xOEwrxYcwzbiwE=;
	h=To:Subject:From:Date:From;
	b=YpoArg4rUAGdpVa3yMzYz4rR3nt4nS8GzQe2nhfYKqRRkkI8y4Ls5RHYivv4rlaeO
	 cRrllwgt3i7iMzhwWlDEQr8z2pOcclwRfPpRUEeC8jY4Ica3nlSRaMeC9korVzRDjB
	 J1uiF07bPaottemaB/O+mE96/mYL3/XRcagxoUn16/lR7PKpcjoj+jqaO96ftWE1Fk
	 CBksOiDw0Gw6Wgf6LIz8r9F0N8MuEPCWP3Rf1QplpesS0aICToK6DIEx+HSrOhQueM
	 qd7WdnfDLLmwX35S7ndxRCyhm1Ub0QcWSHA64lSTe6leK0JDyTnZ89e3MkfAN8bHRX
	 sfIujbYMiYPuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89EFC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991703368.9691.9766011165512966298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7debac55df3c67469c73a9586695221077909991264b17d06fa74800c90bc71
Date: Sun, 20 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789917033
