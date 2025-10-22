Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2102B20CCFE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761098394; cv=none; b=cGIgfGvxtG2QIV+4a7s+eIQf91lBeuQQ+hzVjW62TQgtRKhvxjCW2zhJg18NN5BBspj6eQCXGGwiLXaEExq7oVQ6DgHMVu8guoEZV+i9li//Jhbuf82Wm4Nm5StHdYavukM+QBUaaY9B519LHtvwPeXiS3O+iggjwJZqxOENmKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761098394; c=relaxed/simple;
	bh=0SZggnYF4GiJoYwRi0aGIJhFjv7tF7qW61i42hOXKvw=;
	h=To:Subject:From:Message-Id:Date; b=Da8JfalBeBLUa6pwg50wesYDIROk7KyophO8WD2QAD/hRz4BZPPRKVPI62L8VSl5silvbrr8FltuH7L8rNgsjU4Gk98HWq7TfDR1TJ5pbXgf6k/lVSNCNfCqR4pda1581aPuy4GVQB1csnkcKWw2nnQU/HLxrYBG2v3gl1uyQzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W33Q8qn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W33Q8qn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761098393;
	bh=0SZggnYF4GiJoYwRi0aGIJhFjv7tF7qW61i42hOXKvw=;
	h=To:Subject:From:Date:From;
	b=W33Q8qn2Uyue+oHqTr7XEiynyiUDVZ76dlsYgoVFSxAUUq5wUS6EAiO+hVprJoPgq
	 qNQRUBgYA/SMe5Ef4PdQszRtf9TVfGUXssy+5/0R6ruD+ZzLR1hRNIOhqTqX46+AtP
	 4O7sNilpnEZZfUJgl5W088/C5vgz6vVj8d9Z1cq465jVlq5sgzSwfQs7yF3ZrR7aXJ
	 Dc98smdh8UwDzbe+3RNgMje0krDCxGQ9WSgsv3lDrZseNA809/HbBLVu7vpgPfVXNw
	 V1MdIKeSwJXJT1pyzPgN41axp1w2V751grR974DMZWBruhWD2+UaDENyQQ3W7Krfp7
	 TB1/k3J7UDmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91827CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109839358.17517.14175868265577522725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b0a2beb94085eab0cd446279663e0d891cced8724e89cddadfac4549bbc478
Date: Wed, 22 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761098393
