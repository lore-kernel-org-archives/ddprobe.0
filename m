Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D40BA2D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717903643; cv=none; b=jZktegKM5QdDM0j36dR4OxGVIMlnHdrvs9jNCQlYIEsY9LUuI8UgSxc1ZZ4fjrClJ3q1uKMka+aCZOU/ttnaudLSle5YWf5hIqNY+Onw75duDy1HlHBxiV0mWYNY9uuOv9+Yko8abtJ7/82d0M44VtHa10LnvKK8Z+w4+6DqQpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717903643; c=relaxed/simple;
	bh=vqznOYiU26tKLVlBTup8f2xGmVt0JqkzYuFbY9HWue8=;
	h=To:Subject:From:Message-Id:Date; b=bp/0JYe27G4bkodSqTDMrSl1QfJ5fyrh+g9bRlTScCksqTAlkaf6XROleNBgIdpYdYfE8X42N9cfBqyfi1gfTEXDbsrXeQ0ZmC31T6vHstW2RUzkqj/ZSM5cXCjp9tu9HVL5kQgjxt0DQ7C6mGvVsaQS6veqH9/ZXhn3ZFyv/Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl/sLWFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl/sLWFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE08C4AF1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717903642;
	bh=vqznOYiU26tKLVlBTup8f2xGmVt0JqkzYuFbY9HWue8=;
	h=To:Subject:From:Date:From;
	b=Gl/sLWFBKPBD3APFsYp/ZE7QEJMYDndEVpmgcnfpNpV4gdD4j4lTNIlfRBzXium4+
	 5iNa/IJBK2ikXVD3lffiLpJ//IzyMqW0zZUlEasSUw80Djh2hwkHz/JSPbeqhtRfio
	 liRp6KiXBT8GVny5BdNmRjefbHXnwRORwfAtPjeDcuY11z6Uza+qgZADDeTbhFVpZX
	 EsRzg7TpCRuETlsc50ef9x6aFm7WicwL3/MT7DeZK/VOi1XvYswDgd1H3DP5dO1Svp
	 E4HDJKCaRVEI7Uk6J7MuArxk9GgeU7rh1C5WmA1AuXkf0zlTcSbvCutbYawbeTWHVu
	 z6yWeL0Mf3pKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3B0C25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790364280.7919.13999751311454562463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ced65708baeb0ffea36cca1b99c7f66025e93de1078cbf50ad0eca981bd8c22
Date: Sun, 09 Jun 2024 03:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717903642
