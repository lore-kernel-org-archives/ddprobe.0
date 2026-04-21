Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D62DC76A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776805654; cv=none; b=bNuAC9hY7/dp6bLFwAlqjtJxo6+YmArQ3Ls2VhxT8OorsAx2eMtRZ1o8d1I0sBs1fWPB84WenXPfWNlnevoe1Y+1my5/PuyAmYnio/Tx2o6lHvQapVGzs04SvS/I4PZ3LhL2YgmQdyAZByY7WBnEJFrVVZb0uxnjsTTmAqMorsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776805654; c=relaxed/simple;
	bh=5RdOEMkGscpxYs++n7OJvLkTYSIwCt57FG3/lkByAWc=;
	h=To:Subject:From:Message-Id:Date; b=o7wcOKsA4GOJkJEUIoVCWNFbqVVygDAh4v+J+gPIlzBGbTpt75GPDIOuhyb9sFUOf062kWDbrGljG9oABe1SP/ph0HNsvgJ+t5m58TFAS08B/ak2SFKs5NKfx374RuGgGTA8GvG7okQW/EQGVXv4OkzisT1LBu6yL8NnBcRlqJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLJKnrjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLJKnrjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EA2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776805653;
	bh=5RdOEMkGscpxYs++n7OJvLkTYSIwCt57FG3/lkByAWc=;
	h=To:Subject:From:Date:From;
	b=lLJKnrjZw4e/wLG+ptiyy0vR04ceMZb9BkLO17smMDxJSMkvKeZ7WbGNrc7aeCNQR
	 p15Qb6B2vIimXx6Tw3b10Pih2cww8fAllyQDXzIaFbHR8nxhdtSyVhFtePu/7GGxEP
	 QHfwBS2KSUcsxHh7HNa2mR7WLxUbYx82QZi1bLma6ECLzQ3qgNI23Y8jp9dAKFEsxL
	 Onw9mIkCzqcP+ZDDm9oiEzp5wMCP2JbpeoyKq3xd7FWi0T7abVTaC7APBlhGWhm3n8
	 rlk0HS3c5q/7jDo8CDJdrEwqrpRLw9QGvGeM/v+MuCuLUE9Z19fntgdLxTPYHfC2bW
	 +gffgqo4JEc1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EEBF94CA7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680565368.24634.9112976253795679756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470a9be98d33b5bd2cf1c1b1406fd9f26d5f81e3e0da8e0b79a71a00555c2752
Date: Tue, 21 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776805653
