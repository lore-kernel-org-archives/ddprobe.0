Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDE67DA81
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732742154; cv=none; b=XYjYv4ZjutfdeDbzLdmjlMTSxtqdTc6TbzcWdDqOZeIZRn7kLYDLUycVE72CJoDasd5xNiXrc7vfIfS40DZC1PMHW+afSAld8bRwuMbUA/dozRebckjYl756uaZMffHiD5asm65hGzPgXRcnXQEmhPdK68wUE4+uvIx7FrBxuxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732742154; c=relaxed/simple;
	bh=4ujOezDN/ncs+nxB0zpUAUQk57RHidLWCAT5mGbhfAY=;
	h=To:Subject:From:Message-Id:Date; b=AdobDbFNWAl84hcLWSDHQl9CKV9Cbhhrx0Y+4cQ9fjpPivISiaHPCm8K/ucwoDzlZNvN//eYGuDoPyAiDRKWLXbmwUo7cqySDxXJVzpgQ/Y4F6ZCREcOc+Dn5WD8jg4H4XqhTJaNQcnxYyXN1C26VbtSHOYoLGbmltLRvTJHy/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMIJQRSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMIJQRSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CA6C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732742153;
	bh=4ujOezDN/ncs+nxB0zpUAUQk57RHidLWCAT5mGbhfAY=;
	h=To:Subject:From:Date:From;
	b=MMIJQRSfDllM65jB9d2mvh2vFg+dtJf/TP5BN+s4eYHNN/+iUKcLDE8RsD7SUTDot
	 W1GC/ice75KrKJ3B4nvj24iIb8RNo8wnzJ7ch/Z0LQLD/WtGzq1umY3FUpzQkzcHrr
	 r2HFzVnBEL5sc9XO0MP/A7mhtzzJYowzMdaioM4s0fsFpyMfnOwVsKOwYxI8jevyfj
	 kPz7mh/s5cx2joXZonhK/880VWKRXgnSTsnSS9gFLAk5VbPzRoj/FLZzCoxiJhSN3q
	 d1+bqmELWebka8lxfVquZnadsfk1SjtM4JowvZitak8nwoilwt+HO9xqmOVgl+d73U
	 VKQxtX4LjCWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A048FD6D23D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274215364.480.15976903415220700633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e1a7bfee51c94a9dd70c1ebe314d4cf2f68cdab97604ce429c15eec8233b2c
Date: Wed, 27 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732742153
