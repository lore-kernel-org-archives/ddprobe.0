Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2931925B6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727759154; cv=none; b=hK4XAzm29Ek6TEheMxC+cPxH3Gw0PPzIB65VujJ8nGNU+QS91M99ZohBzxOUiWDPWkxHu9wqCcZ3qqrT66zEMTxBSF8HficvMEPCxv3uGhsp1pvR3DSH8Uobg0jrzVDyOYLGaQpKY5AE3qsryNyTcmnKtIvsRUQiadsqv0SAcDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727759154; c=relaxed/simple;
	bh=elZtxMlcbSDeuja+qfqnwg4NSlb0aU7T8DY+XSwGfTY=;
	h=To:Subject:From:Message-Id:Date; b=OX7yR86d1CCk85q43VcjtuH5+Gqq7LSaBMh41mrFiZ5awWL3FEXicJGPTRk/r1O0E+vRF7vnrbCRMOP5CYXOC2/Vz0YQ9QtPEaMw2lQiR0uhwlvqHA0mTaQFtaB2KUkP1McnnpEan77wKbPghFW5p4EF1upp32rAMMGfuEfKk1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFrclf0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFrclf0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BCBEC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727759154;
	bh=elZtxMlcbSDeuja+qfqnwg4NSlb0aU7T8DY+XSwGfTY=;
	h=To:Subject:From:Date:From;
	b=aFrclf0iP7G7iV2hLbruDYT17CF+OCfM5wa9NyhqnJhgoOsuK/ghyDM4fekC+wbjc
	 3oEpHuh0FFciFyGKFo9x7YMnrfcdX2aLqrTQoU+ETBxuzmK7W+fm9A370k2S2LRcAL
	 ypONLyOV0XZzpVaUSEvS03LOExMvcWR/EXX0LPj0/9V/673k8+i5q5jlH1c0r5IeHO
	 +QDwimzNicEpuVlHR0eobpcucHnZnpq2b7bFCtDEMxVF9AREAHCDBknvixC9Ck4sG/
	 17X6a3XU5H6uiZBOtjgOws5SKhKSls5ZBpt+FqX3cOEZgAkF+E28UZyCyaY4unzDZY
	 sI4BxbJvLkjSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6909CEB2FD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775915378.8856.629660675673930886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636987049580c9f0cd3a9ec277e1df72b05b77fc9423d0c710812c07b563aaac
Date: Tue, 01 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727759153
