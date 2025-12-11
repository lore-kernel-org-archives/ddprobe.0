Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9CC2F361C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765443774; cv=none; b=hTEMHIYjD3iv4K5Gafro3/ZxGKiv225Fky9LgiseP5DUwuvaud7msH1bfF8/jDxShnevAXpTRMulPTPjg4m6QugxDUia3w1eDEF/TuZfnVRzzW7mzhdAQ0+cTI8T7BO5/HO2inZu+pMevSarUPFnF0DUKZ3IRE6PTxC0NnnHVto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765443774; c=relaxed/simple;
	bh=2UYyPoyltnSPeusfjziWW2bvlIBFkAkxyXzilk7OD0s=;
	h=To:Subject:From:Message-Id:Date; b=mreUj97TqMtbBXVKjwxrRCs0+abrwVhlyso1oXF+NYv4rAYBCsXkiE+CvSZZssGDkR09mxkdhzYScF91/ekkHh0qHxl0/eht7ERQN3TLpmmO1MnZiG+2kAs2/TYJch3Clfh+RZmrNis1prwkbSOZh2teHKzTxFO8k2uDpHAvACo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwKj3XZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwKj3XZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F5AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765443773;
	bh=2UYyPoyltnSPeusfjziWW2bvlIBFkAkxyXzilk7OD0s=;
	h=To:Subject:From:Date:From;
	b=qwKj3XZgcv3BoP40gJFRM6lL2DaZf202ubQij9E/y2yqJ50kyxZ/MIeaTck8efg+A
	 9xC8M6SR8mRiFyu3H2+tpsjoYbQkOv/ZVLD8PCY1rwIHLZttGUglasircaTfAbsosD
	 youlhcXCWiUFLXBbq0IzwVFpR+UOUR5ajnztnjtMOmyMbpa6bis4LD068anH3bOCQK
	 Pp512AuSF9ULyOkA1qfgGKSg9Ve1hPmJ31sNG6quzxYb/scv26HkNg78teL/e1lWxe
	 YpMMQho71y4y+5ixDvsZoRoz011dytXsju87R+QXzM9dZpBSOnoKzoXmyTksV332PI
	 KfnfHz7QBnhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAE8D41C0F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544377363.16531.124334149603995481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a50990eb4b295ae13574778ba6cc56e9aea36bf349ddfeda70ac6cdb1ffdee
Date: Thu, 11 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765443773
