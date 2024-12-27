Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FDB35958
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735326354; cv=none; b=aCz0Ku0v4Tg6kifcYQ5mgm+99mH/5K6Btc5oeK4jIJv8ZJqp4ltVGsQnfRlUSnpL3yG1oggS3MkNmKJlJXOQc6q2gf2EXv5E7VtPO5ckLszck/ep4r7E1sq0JrB5+zRylVn50YbwwAAgX49SBpktSZx7/7YO//rxkHQCUwPa/js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735326354; c=relaxed/simple;
	bh=xUFzQ13vH8ktzsAXshKSD/BO2w0wLGocTCFmCERNZgY=;
	h=To:Subject:From:Message-Id:Date; b=Qexu+AqOfDT6f1x2v0nVMPdEeQoXVSM4dyfnLO0P8bzoI3mv+0WuzFzRFi2nToUUdhy3OGyu3aIHpG18kYeYvyNkFkPNzVa11YvL75a+KV4Fdh+ZSqZvigxX3iveAsb1zkNI+txf+qv91W+raN9wq9YWoZDjK4k+j3HxwY7RxeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiZD0Ip3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiZD0Ip3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBAFC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735326353;
	bh=xUFzQ13vH8ktzsAXshKSD/BO2w0wLGocTCFmCERNZgY=;
	h=To:Subject:From:Date:From;
	b=IiZD0Ip3Q8Ot6FoDqo0Bq9/J0Y5HTZrkfuCRgWtDWqtpWc6hS2r2vgX2w0To6ZVOW
	 jFInp2zFuS5j7Cl+xe11qq1P/etjrDGxgcfTT81JkLgZgJHiSkDuKtQmE8Mg5d0HYo
	 +C0svt7YMdb7vVZMwm8Qgi/7W818o7ZnMplHiytpn32QW2QrTYubQsUcC95cZdgJD2
	 VO2lBDivvPprgTLRhOTRdzTQifpxdIwEf5oOLe4V6WmxdPqr3Q1M/oYMcUnlJ1ZpNH
	 3MZVlSaCwohMMkM4VL1CAeVZPjpZFfV94GKqIAoSDCoTB1TsGhPW9DLz4D6j1TnWYx
	 TGDobfwuf3T+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85EE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532635357.16877.5609459173151038898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4088e32fff997ae52597996944c4ff602aa77160c36867623a08d39912f9a80
Date: Fri, 27 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735326353
