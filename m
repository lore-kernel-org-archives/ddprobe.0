Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169C614265
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717967243; cv=none; b=nZ5iCOYFZrDWDLV9trqjZy6hiksP+BiT34ifDPKBxJuLXXQ+RE4XRkSptuzaI57C6n7mfxhDr7x+eML2cj9532T3Vl4b86VdmYNMfMKzymIRD3RAtYh2WhUIYuFcNrhlUxeGYa7EaO/vxS/3rHX70f4y2R08UdDdQeG9bhiBkMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717967243; c=relaxed/simple;
	bh=WhbltJtkzTMmaZIaofJov9kwCRFBOzXMq/0dLSkEPZc=;
	h=To:Subject:From:Message-Id:Date; b=l3se2Se0cmMX8xjyDBUBRDw866fMCYj/4lwlVAsKMvzyWJKBQNSLLbGzWpDc8SZ2KbgYdqowP5yGbggNNejeEatzv4FP0najDzwbBHfHVBJ5Uan5w/eqgNfXVWKLZIWe+y8JWeY71sz322WkD/b7f0xZKdyPSJWx9c1if3jC+LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLf6XC9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLf6XC9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B9AC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717967242;
	bh=WhbltJtkzTMmaZIaofJov9kwCRFBOzXMq/0dLSkEPZc=;
	h=To:Subject:From:Date:From;
	b=fLf6XC9UExI5849wIJmcDHZzzVcVw2BrLOKc6UkRrF6+trJFZdQt2qOyiplIRNrgH
	 pok4mw0uNp1ygZleqseFkOIoHryfzfizPoopsoK4neVG5gWLF4jF3xX1wU3ZDpe1Il
	 O0KOpSE1nhn7BWpGlI4DekS08J5LIZIhSywgDzovNU1ImPLF3TAHQf0sLk/+QJaMe1
	 9xBV0yMDW3Pc7gc3evp37bbFLnLXVXrXhSH4A9SCQoCxc1B4XaZkfdty1l/tPAiUi1
	 ssAmTaJfyRrVnWhbrA95gWRRvPXM+oNc+wTCt7R3HZs59L7c/h/xi86imp7xxKic8A
	 9nNaHedgNNaLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1112C27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796724278.9079.3192012146384686467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40dd5d42f26dc69573b780f278732a659cab7d292693e3e509f7e56905e8d395
Date: Sun, 09 Jun 2024 21:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717967242
