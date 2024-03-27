Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5BD47A7D
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711534097; cv=none; b=O1pSplp/wWPCQ968ajwZvv1kHmkTd8YWnw9O7umDVyZxgngtu3mlkwqpMvqryJ2bhV6JUzS0Hruapw1zeDT9eZ83lFZ1e+r1+VWvYI88GCoWU1XnNAkaQ6QcXoilUFdUgjOMhClOWIeJiCGdlGzQ9f/tK6s3aY2+eC/Ey2dRams=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711534097; c=relaxed/simple;
	bh=8KxsFoA4BGBrQqBKLxpvXIaNWG1b76346TlRWS1s4mY=;
	h=To:Subject:From:Message-Id:Date; b=q31Xm0NlSWvSFeDH6YOHX3vqYZLXfclD8P1vY6/ultIj2H+aQwZc++Mum7vnAN/M0V7KCxa42YGAf+VUQ5u8aWo6vxUPhXudnEv6Xr+CatbkBBL2dkR5HhZa+oUcOtlCvHh8CftrjV4Mut1I+9ikbt/uIVQrZKyFAwLvX1AZGy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t67m90wH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t67m90wH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBE8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711534096;
	bh=8KxsFoA4BGBrQqBKLxpvXIaNWG1b76346TlRWS1s4mY=;
	h=To:Subject:From:Date:From;
	b=t67m90wHlcXJoGwU44AlsiddB+3OSd9yf+nQfVguOXz7dw16X0M2x4cePB3Zgo9Ut
	 bMoCfRJ37gqIFAaA+C7n5ccNB4hthz4diud/pReIe+Av20oBg+eCdBZZRoI7Hg2z7a
	 4exo0hQVzem9C4kVxpCkYw8I9x/8ZnQmiXCxI2WwVQQbCIft61B6UmRIMWpwR+6r74
	 xTypfBpGA5XIzfZyWaCLtBwiEG1XEX/8fZByDILtAOeUv3NcqKlKIiowdwiSzDXrii
	 087iyXPZrQCGM1PpSuled2UwZvF78/CNtSeXVUQyy1ll43v0zT+bIEgR3DF3JMecmK
	 YdB5FQZWqm/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673B7C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171153409641.19516.13625373614695942941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c1c5734422b36036072a863b6eccdd441f3863cabe18fd125d1ae620840c3e
Date: Wed, 27 Mar 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711534096
