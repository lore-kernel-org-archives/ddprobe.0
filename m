Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEF563CF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761112195; cv=none; b=ryQoMr6LeeA1nT5q93spFkGdZJMan1HCvDPukZY0ZDkWG+b+5/rGWzB2nwxVEjkB0J4WgJ3tEYyzDWVyVZ4ae1i8jgyA5eiCH4Lmy6pGNhd6LRHdmx/I5rRRS0F4n0CUFaEwc7GBzJYua/7nkAdW4HIoK25uMHCbQNe6XEqkyz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761112195; c=relaxed/simple;
	bh=GJzYN32qF+2KRrR0N03WZW78GEu21uOdGIWhgGW5jbA=;
	h=To:Subject:From:Message-Id:Date; b=LwKZdpNVWWK1Hx4rlQwzkwZ2YXw8S6jtWHNeFA0PlqkfUyLEIHlaj0vFCVEksI0cLkru0WEjRfOe0pEsm7U9rJpwMTG3/x3wi5gthllM8KSh/BWn08wkAKs09AXncF8Fx8J4tVU8BEzNPFciURKMx1sCIzScHvCPOAnd+cAAjIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAcoviN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAcoviN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFE6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761112193;
	bh=GJzYN32qF+2KRrR0N03WZW78GEu21uOdGIWhgGW5jbA=;
	h=To:Subject:From:Date:From;
	b=vAcoviN4/cmyOS/1cZD0cp4tz59S3Cg/fjRBvprmuxT6YW/G5SrvAdB/NImt//cem
	 loIxvHFdkvMI21ctLmgMaKkK+Byukrn3R217MUC8Y5oW2+y5sf07v1t9QIDwCgBH0Q
	 +/kM4Oue5Ohi60Y3eoZdjsWbidDIE3byZawXoeCyE721EPr1hCa9nM1BNqERS5jUqH
	 wmZitoOCxlV1G8P/hcC7y9r9/5vaUrsc3tfm00kHXw8EI5qKS27sl/tJqxtUfZe2O2
	 GTLwQllXwtQT8jxZhPVvzDHEmp6FCVNpkS4lhUuCt8kBKG7omxH1SCk+G2uXUF2+cR
	 pXF/UEiFkcEcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAACCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111219357.19750.425860053825093321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55a1e4b11d8c4252e4bd5db06f1f9b4bc50a0624f7dda76c9147b5ff5632830
Date: Wed, 22 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761112193
