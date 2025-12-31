Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6D5220F38
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767158034; cv=none; b=rRuivKlYfsCY5wNRs+1quLd75dJXotyYz7lxFSlg7FXBovcZcVxEbYeRku+adBjilUYuE4sk+utgTYVrw5La6Rc0YuXLqO34LdNZc3OCdYGgoGTPKx4DwpzbR74FYihPBM3/yXgLsmwOdX2xgYWhwaALo+3/UmKXmk3C13UBv+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767158034; c=relaxed/simple;
	bh=RiiaFf2JmkRS5OLB1sVMq6ikAY7/qUFv+SY3GktTyXM=;
	h=To:Subject:From:Message-Id:Date; b=eCdyXV+/FgAAbNS98Ix1CirmU/JqwtcBO5pWyovHHHraQ/tzwoikD6+90RCqd4fiwsBUSWLaUjgq41cRPcXhM0EQEcasHweFdF3vx6EM/fzxggBAY1T64p3CrBoXmiWn+LX3FFWNblr74Fyduko3jUY+SjJDmtgISp1O0WKuXBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tp6onXFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tp6onXFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DABC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767158033;
	bh=RiiaFf2JmkRS5OLB1sVMq6ikAY7/qUFv+SY3GktTyXM=;
	h=To:Subject:From:Date:From;
	b=Tp6onXFNq3rtLuyt6NUzPgA6K87tq3ZWDfaLA+F7H8xCly8bVxkLPDYTHnPDLIyT/
	 h5wn2HD4COKZ5V5kGSQopRHVuifOfOpdC8+vd/y2/T1kJmYi16K85QFi7t8WatUerU
	 PRiTT5xajG09fxtiOKL/Dnl491XTrf/DJ6UBdyeC8ezW2ivIyJYeLbb7IRHEANnEZa
	 1cfZ+IkNDF+wLvXIejBSzg6upN+rr4Z4gHZWr60JpC1VFLKolxSU8F0bFkl0V1MXLc
	 cSFooB5bo1PQqZEaQiam70RBrr9b3S5OAkZLuJ8amxscjcA2Q3EJp8NYSmxf4eM5sR
	 j8ganpu+h8ZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9497EEE49BD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715803357.16309.15280307571894046377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412895486ad75dd9ed7b18fc23c788f20d4a9df70ee770a9a7965a2e2c1109ed
Date: Wed, 31 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767158033
