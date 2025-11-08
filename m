Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB81F03D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762581594; cv=none; b=rTygJ8m1vyiavXlTrZYi9Nf7DO9FXITmLH/VDeyO9dKH88Oxotw8D7DKPK+ki8TjjZu0ymtW9c5PxB/WPPoIQ/rwdJERPXcVj5LcoHjHkBNDwQHt6vv4oLzRjue2UnVAp8MEDNSu4kCLKow0u8VLXDYOlCMGkmkdRcvJ+C+5bLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762581594; c=relaxed/simple;
	bh=g5xjKlBXmmHswZejw05mRP7yuB3gvEjLnuxd+5h+Iw8=;
	h=To:Subject:From:Message-Id:Date; b=s2RoWcY6FkK+RsjGnAEDc3mL1BFVqZHtBLPO8ZEhalwE7ZuyfqfE0QgXc25l4cj+ukK85b9Gu5/VTUeSVbMzO6YltfXH+MuIty+xl5qRVPeHj7WU9o3ZW395tf2GA7tjtZm2uKNb8sDWcqol/gT2UxfjzMmjw5nFYr3WYUKqb24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQYCt30a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQYCt30a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0841C19423
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762581593;
	bh=g5xjKlBXmmHswZejw05mRP7yuB3gvEjLnuxd+5h+Iw8=;
	h=To:Subject:From:Date:From;
	b=JQYCt30aMfnULgrVvWJWsgn/DojDoFpmB9Yk0+jLmhu2OYmNyMFoh0KEieEzKjNVf
	 hrsoO1uwWZriBklG2XH60BObs04u/ZO00d3umgK9sXezPg7RKTa+Yk8rqac3palkUI
	 1bQDOgvEnLtWW38uiNPO9kT11yHj+EVdLARxMvaG50LdAsJqdb+R19F9b9rFjohG49
	 XhB/lFrbIm+IB/YiTG2eYfSBxoMQXG67p8uYRGYo+Lel3KtjmXQtj4I0IMi1xJTSCP
	 c057f3Or/gy6LFL5DnACqSQFvoF+KNJQ6pb3RFqoS76QlQj378s7p1jHR3tV3cFZsj
	 FjwpAUXAMOqJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C8CCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258159359.21891.9333382256762228038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ea1d4c78abf4e3dbbe991474f158c3a2795a22b88035bde2d580410178a67e
Date: Sat, 08 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762581593
