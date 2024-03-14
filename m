Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64356EB7C
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710415697; cv=none; b=kRotcHlEpBkLsXPbj/xOXl955TpeOANo8FfYhTD0ewy2NvMJ8aJ3HeeOXRuJUohqROkOGgImNssyhrwcm3cR4V4ZJj7PAwoaZehpByqVT86PwP+w9mrXOsK2guM6SMZfy7LcINUHBm7V6IsKd0AzR5tyOP1fXZfd/BGu1JQziG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710415697; c=relaxed/simple;
	bh=ogmw1EpC7wLDp997uK1h2qVUKCvDt0C5C5EmqZWSRUU=;
	h=To:Subject:From:Message-Id:Date; b=KhVdL4v+dSkE0Iz0AuiLCAzCd5Pwc7AhIdxN3tXjKHJdgqTRe8Sif881vUSdN7s5C6EJl7uilj7aTaQB1RSdE8YsB/7Oc7Br1OkLoj/uAc4ypSyevKfU99m+AwteEJoFvcn8/GvQOsoGsw3f0cTeBMFGXJjuWmsOePDdcMRLEiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7Ck69tS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7Ck69tS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB89C43390
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710415696;
	bh=ogmw1EpC7wLDp997uK1h2qVUKCvDt0C5C5EmqZWSRUU=;
	h=To:Subject:From:Date:From;
	b=a7Ck69tSW/oTsMcCqNPF9ElcRszkAQTK14yQY583PkZUf5VF3W3qGYDb4BMgaHF9y
	 zjntNb1H00/wfaQ/Piv79WrP13v9lQgQypzTjLnPjq9M1kOkLAlLj6WFqXpH15D9kc
	 21lJhdJDk1lA+oR6EafOLBZB8aHvLsAjXGkflVs7egyd9/Y/FzEtmXTOFCceJiz29j
	 mFzCRZ0WSzBBQDef5yqRKdSSh+crTYBCB8WMoYCw0+uGeuZEU/YqQvjfKJpQra0HWm
	 ExoQoCG2D+/So/6pz46AyDya7ABRN8RMPRnJGwF61xRUAGcXsodBYBiwhBbPcXFjr2
	 suGQ4APM3fGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB82C54E67
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171041569637.26164.3605215506767711020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970cdff82aaa03b597fa1502c1af49317e39afcb805b22f609aaf11bb4d1ae08
Date: Thu, 14 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710415696
