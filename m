Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A434D8A0
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718033243; cv=none; b=rHxOK8oUPvvGd8WYJuFAz+iKRC2yvH4OUo4BYs8no8ZI8sbyKd/zbcbJ4X2klEf/HBro1aRPD0tb4Ox1vduOW2wXcMYXXl1NmVj4qoJnHZEZu85v6BLOgS9hHRa8r8Yzo9C3JalKryyUX+NrkPR1OzfucBdOTB024CSe22zIIOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718033243; c=relaxed/simple;
	bh=0NNGNn2rO3hWAx9/T201LYUjMASyOBOfqZGSQsrJfbI=;
	h=To:Subject:From:Message-Id:Date; b=NQXj/LLIk2aKeAU+jYfh9+8H6N8Tcux6SbZdjZ4Vz2bBkojZNh/2YObhy/RkEL3/YJMNAOSsw2plkaH9fvty6vqNyMKsKQsiVayh4hpZXeTxOSLeFofpCykJsSlneCMr0c9gjW6LipACZt70DicAmE2W8xVCTxxaSdMXUmHfT3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3T9Dw3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3T9Dw3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDBBC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718033242;
	bh=0NNGNn2rO3hWAx9/T201LYUjMASyOBOfqZGSQsrJfbI=;
	h=To:Subject:From:Date:From;
	b=o3T9Dw3F290hTDS+MecBRLngdib5gFClym6ZQDpz0rnpG655tZymsaBoZFKeBH4KC
	 gbOpd6TvvkMUoknGwJ0wYV8777zesGk09q4wN0PiSLG4h8BuqK+fYo7RoWtGKOJwyp
	 URjMcNSd+dteLnZo4QZSmhEdJk3YrulhKf4bOwJMv40xlopi6qeDtOU9jgIcULbNZK
	 lEYnDqGZxRDphAf1854vZijwJ1aFXNavrtdkibgP9TycJ3QWgmer4Z6siJTwomgAKN
	 Lf+zN9ILUyjLKPm23IBbAoTAmB63lF8vGm7VPnqM7j4D3CGvtprto95fHovThzvDbU
	 wO00dfhYFpheg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BF4C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803324279.12950.8886792055006119018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ddfee8ffc5573ff1fd95977204bb68cfc68e0ac689d3b0e9409ce2b607efd7
Date: Mon, 10 Jun 2024 15:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718033242
