Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3A214AD1A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720187123; cv=none; b=pqi+781D8EZ719pJaBZEd1zwiPfqNhqS6FTk+gi0SBJfpkRvU66/R/Nw7HcqndbTGSzk26/nN0XZfQGug5QBgu2BiQw7/PYlTwznSoPrRiQ541res1pS6ogau4DvlZpqoBHbiSEKi5Pmpqg5RCo/uNg8wNvAWKyJh6AQoHJqnlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720187123; c=relaxed/simple;
	bh=/SJQqAXkNyDifNJRiudmwYJR3EPn7+hm4McY1+TbPTY=;
	h=To:Subject:From:Message-Id:Date; b=jPY1p4szQNizU/5FQBaSEgpGoyaLiaC499xj1+byHt2zCMeMhQpoAs6M+RkDsFO4hR4G6Pt15zXxG+rwoPTD+ySZJ7D2lHKe4kucED+ule/YjTpCdC4c29f4vlG8LLuozSsva0Jg7cgPPylgDD7TVlJ8WBXYow9LRs68y59MTeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbY+GAvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbY+GAvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C9AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720187122;
	bh=/SJQqAXkNyDifNJRiudmwYJR3EPn7+hm4McY1+TbPTY=;
	h=To:Subject:From:Date:From;
	b=JbY+GAvJKSkZl8PkicvvMREqJEi2NHcqk8wpq4+LLuNUOaIes9i0ghsBDogLa3aeu
	 B9Alwr0ZI/ndskxmICvjcergGQXL8150tpjEU28sc1Xs3MIb/SuYQ4TfQiJt2RzxmD
	 2Ht3Y2sL1gVgyax+FKdYeJ/TjiBrnnj3U+a4vl2ePAPMqwxw0AUUNq9h7NlUM+22SY
	 T8TZuSEcZwekntOZsbkoraTg5uNSCsgYmBj8S+krCqJOw/Q1rm7gaU2tZ+RbKUSUWI
	 6D1f+CjvC9adpvp1hoEQ5bNsHTjUe465XG55PZqPGFDxoyOqk+aL3M0eL30mbXrAs6
	 vZPnB/dK+V/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5A7C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018712276.25407.1185523932532946598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b28919ba8d35e174d700977c6f06bd9965b7c868474921321ae94ac74e068c8
Date: Fri, 05 Jul 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720187122
