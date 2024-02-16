Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320001353E6
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708120697; cv=none; b=buhVTyOK85IgOlO1e0iDYXkn5JsJQMlTGC/XQ6KRcbRhrv/W+0sMdw34LgMf+AbtuMXgzkzrMZuWQdUo9tW/TtHbZlY0An7o0ynnVmtmjxRmzbMoOcAdjP9T2x1EvuiCZd1P0/wt5iMaDiDR+eGUcPIzgQdCuh8u3n1AP8qPiFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708120697; c=relaxed/simple;
	bh=7VSbI4pWCGHen3koHGA1ihcqlYG0lIWTc44fTVECyaE=;
	h=To:Subject:From:Message-Id:Date; b=NkiUbz66bcwlEyXzGwDYk7FKaTEIzjobQDOJmbcykzO6ZItVMBnJECHn67dYm/Jws2pyiK5EWFjJ9Asup2L/lXW4VDycpljciDOI89yiC+WnBU4DO3f+cvu3agwHPq4Ff2l+2IPqr6Zsdlie6wUdhzEB1qYYMYVPX9EcVoYM+ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fwv2uMas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fwv2uMas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B677C433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708120696;
	bh=7VSbI4pWCGHen3koHGA1ihcqlYG0lIWTc44fTVECyaE=;
	h=To:Subject:From:Date:From;
	b=Fwv2uMas8i9SqWgK6+TyQi+si1oaV4K6bjKcqPXaomzrFf+WA52YKBrnLCdR/fYoA
	 F13yygLPsKhnWvKBnbXbviL16LGkh9ZbLxM449PSH3cy06hENaj4t05dXhn8tMZVBi
	 B/VasC/FojLr3e7q3/3MgXIblSCRHpMKcdpyjYbrt5MUJLqni5aHJH6DyrZKjITuPt
	 9oeiMsIfhoI5mpZ+IrYhA3UThUlC8DRYGGb3PbYnrg5BGSpS4KLTcddkWQ0LbaX9v1
	 /3cgrVFhauHZIEXQsLHqaBWYmorSwrdAg/db5bYgOK4XFofPPI4Q/qy50x46G9ZAZ0
	 5+FKEanURWBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECE8C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170812069636.21837.8268755708984761639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c4b00a5c364068c45edbd5b305eb1b253ce1be40f15cd6efddcc03ed8575a3
Date: Fri, 16 Feb 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708120696
