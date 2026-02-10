Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A24634A78C
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770718434; cv=none; b=TWE5Im065aBgqEWQDSsh6FmgDPuRXe/kvKgzOYeNQxokAFwHC96nwJBTgjt6zeh/ev035Yj2GwCPO70GhZeqvM8qp41DbYgfMTWSgHSgMpC155S8zLwJGfRzBmSVxNpz51HLR+7hdJjeDP/jgZcH5hWrreW4FkdDm1CkScH1frg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770718434; c=relaxed/simple;
	bh=QnXpf22AM6E+7sEoNPTQRurCoCj0U4R6ZJdRJb5PTzU=;
	h=To:Subject:From:Message-Id:Date; b=LF1WlQpkCJuUChfX/n8vUDwrxtGhZpWP+dfUT0ern1B+CtJ3z8XkBPG810dnYPAJe4LGBDYnetffEsFQ0+QYIDOzFwvjjusYiegu8xc93zszlxZmZgQ2PAyIpm0dvlyKD6PAh0NS05V0x54jbH81av6E6XIJ2cBhxug+oUWRzQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyre2ZiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyre2ZiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6F8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770718433;
	bh=QnXpf22AM6E+7sEoNPTQRurCoCj0U4R6ZJdRJb5PTzU=;
	h=To:Subject:From:Date:From;
	b=cyre2ZiG6Nj+Pd0wAV7UJdbBif5KO4FvZqX7UMU63nOBWpXYmNqeORAg6JUDeonfh
	 P3mdLlDNl0KdegkgNIX5J54rtekaR6VNZGXOOMtI9T9XL0xWWSJSrHLI3BcIGZLD3g
	 6jMyLHAdNi1Rb39A9/euFYzNT/jEtM0FREmM7bGKg4/z+3PAz1GpffftbtMy+o4HWj
	 CdImiOE9Kfv7iwma73a5t7xcibJp5oOMDFuutQhdkKAygneK+w4uRg8Pz/be0FUCj0
	 /Ih/aqeZGy2BQOp4COnHyEK+GamAct6A5XsjqKG+TIKfjlDjaGtSDcbGgEu58tA3bF
	 A+haNPJacsHiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9997BEA3F38
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071843361.30433.1357554107344586669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2edb43497ab25e54e9a7c5c46a2a7a2fc656e4a86b30ef1db60a031253ba71
Date: Tue, 10 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770718433
