Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D931A716
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718000243; cv=none; b=GzJdFm7XoSpWH9YNOtxpWw+ukkJKMiup4pbmYiSpxzjdS61WOT0ApJGjfo2IPfUpO/gTec4g/Fo6u6uD0oTophmFlnQuv23U81N3V3Qm4OcAz/PSUcubCpu3r2RhDzRAU5n6RZv1zDYJwUmyDlKHAAK6LOYdFAVo0rKQDuIcyBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718000243; c=relaxed/simple;
	bh=MzkUVEB1RHYorRvTj9eZWa20vqxuw2C7uWeHam1Bwgk=;
	h=To:Subject:From:Message-Id:Date; b=idK99kzCuE2AfkoVPCHc2QrMbG4GxTUpmLlooEaSrFrn6GhqH/V6LcPW+WWVpCqSVgzRj7jWF4la3NEgNxYU2rDOoxdV/2/VwKvB1vvdc9dwWwU2NbH+iW9lJZFHiG3i4JBkOvZ2KUydOAStYBsWsDptRvyIOCBg6R6vU9QcdE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as9FI/Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as9FI/Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B90C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718000242;
	bh=MzkUVEB1RHYorRvTj9eZWa20vqxuw2C7uWeHam1Bwgk=;
	h=To:Subject:From:Date:From;
	b=as9FI/Og+FyrdyjvDR39OqlnViEAtHVQueXW66/mFdO4P1pdcqH0fSUrrqoE56T4i
	 p0QL6CIkjW6zIVjGGcre54+xZLi4veDiY8K5m2vsi+8PqfaprHsm91qNcaG3B6bUZG
	 ZpZdcy2jLLMLGqxotHf0nyv5RVxYbyV+7QKR1kSYDKTVboe7B8VDAyjn/c0waAsl1p
	 bpw7mhRc5/1+GZQR4gzknRv59sCPLxHFvdcObyn0oQNpQkezzeVVsPQapG146obauR
	 IDw4Wf1+bPX5yX71YwoPgz/R81f0wxf+mj1hqp58+X5xzXgSv58k914ad7QJLL3NZe
	 dblfmM6w/U60A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF755C27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800024277.24161.5919279546573374108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab15f47d110ee1eb3cdf9aa07d07c9875b319a6be37198c42c044d6c3447c98
Date: Mon, 10 Jun 2024 06:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718000242
