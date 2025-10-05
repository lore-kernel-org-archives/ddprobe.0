Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351B51FDD
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759677594; cv=none; b=ui53Y8VdRLjNmKrTFa7plP0zgmHNvrvoVQQyXPj59AJLi0dbZlXVaWE7YVBfzBRN7jWMLy7mHp8ub4PAAm3JXs7j8EiXyah5QolM10BZpKXoN9fdiTqj6sXh/QF4+pDa9Y2g+EM/SrYhTNM1x5CgRIQDxspr0XOBxx95OynQnnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759677594; c=relaxed/simple;
	bh=MGZF8MHOUOqOkZDrZLAGIJk8BUzZcFQq5epQ1f6cFBY=;
	h=To:Subject:From:Message-Id:Date; b=CqETadUjztK1jZ4Rdy3SqfmAo5qmFAMMVZYe1UX0OBsFMkOnVipPqNoItVQAXsueKctW7/52lFo5Vhr+dgK8m9y6GFwVVgWA3gFlGqdxq6CASzr55HSTOIas7jfs+coYSJOPKVBziMiQi1rrNtqbatK2MTppslAC4PH9Vqm3kr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIXTXw8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIXTXw8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D0DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759677593;
	bh=MGZF8MHOUOqOkZDrZLAGIJk8BUzZcFQq5epQ1f6cFBY=;
	h=To:Subject:From:Date:From;
	b=QIXTXw8ClZKImLiiWx9MPEbrj2EyEH+5Vqxp60yUVlnE4V+nZZm7XAxsgk3wVqY9U
	 tGzzpjZU8oxtdhMG37Gl98MsShxua6ejgaXAsfPueYnUngnqrpyJp8fb6OGgUqRKMu
	 2qm/6dxr/XC72kc0eAL/xEFMu3eeRs6u2kT/WivI3ZXkM5dear3o117RKlFKVlbJ24
	 /wJIswPEQYnbBCIwI6n7SiHjG5vlOY9WESQTGrY2Z7t5GnLBxlPWw7wlBGpSIDr+cD
	 pwiEv0k/teijvRlp1Pwb4628yqDMLfBGVazl7Dq/a0SJnfbERjA/jSaAcgYu1DinHF
	 wy9S2+MpQuRVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9BCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967759357.20321.3777553179988996838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abdb3b7c4d1e3833cd9b3c1bdebce8dbf17ef41d0aa59bc844bdc7546738cde
Date: Sun, 05 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759677593
