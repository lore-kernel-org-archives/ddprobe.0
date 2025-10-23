Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA7E4C85
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761188994; cv=none; b=A8BxVstfr+cqPIFFswHB0aVKoNd1Jf3cis0lMWAdgq5A91Rl501Nmq9CiTL/eKISMkgx63v+bGnf6NEramABTg3/suxngI+MvbyvAH/J0aOOZbdE1wS42qN++lC4itQzSzEt/Ajalp5Zsgb+f7NK7rQ4zmvRijyNUW+II9/Bxow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761188994; c=relaxed/simple;
	bh=SWZJQclwTkJ2ABvH/13WFBlCBOqIRgQZV/EYYVBlaVA=;
	h=To:Subject:From:Message-Id:Date; b=HtiHnAaLOCOdkNeA7fXaNADXj5jwkhGHy8UHI+pqqOSe7EkrG18kY4Rf3p1uNi4BCogUTqs60dN0MjcmXTLMiP5/EVUYWr6D9Jww9C0Eb3SHgE2nzStt1PXvpFWrK15832KGKCqe4G1WZoaRxODQVPe8zzFylqZjxaF9o6Q8NE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlF8KhNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlF8KhNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761188993;
	bh=SWZJQclwTkJ2ABvH/13WFBlCBOqIRgQZV/EYYVBlaVA=;
	h=To:Subject:From:Date:From;
	b=QlF8KhNF8zIEOnhlUasbbsNsFSEdknfJrp6J8nEiWlU/70iWAcvn66ecpZUAUce/T
	 5hw59e6UGboG4/YyZ2Z1VeZd7cdkWbaopQKeW4ETsWGR1f6MTPyRJ4ZP33++h6VDgS
	 A4M3YCUdMmnmHkjtNSpIyIrFjSMgj1LNuuSxbnxUxt1vsFl3i/kabkvAux252iRpn1
	 s7LrVYi7tQyGJRoTTGzwWPh+Ok4i+32AUzKX7IleH+GTa9Y/3/7ZtEQwySf9o/2Mr4
	 XyNK2ijI8/MSaOEVfg5epUafQGE4fEPUOjOk7kbOUHw+jJOdMjcL55zw8LScugB3e1
	 4rkwdpwtdNItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84CCCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118899358.25075.4970333077312229726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ba7b897095a9510026ec5453809571f28e340c6c8ad6fda4c1485b3391720a
Date: Thu, 23 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761188993
