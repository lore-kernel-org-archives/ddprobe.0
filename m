Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D37647
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727246754; cv=none; b=E5OsSS9RjknS4/rm2IwhrcgXUOB9wt1rvKZ9p/HCuYjHq2WfnDVdQNGO5G7RSPx0oeqg9eJuXRFGUQ5oRkZkJ7aaK66v8mqMxo2HDowT71VfllcNW5YMf9F/SKyCslWWuvfLla2vjZVhXTcyWtL9li2dgBfSnB4YyoBVmwN2GI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727246754; c=relaxed/simple;
	bh=z81/8sTzXbV1j/LctBfpYXaF6qqAdCHv7hVOsJi5wbI=;
	h=To:Subject:From:Message-Id:Date; b=Oqiqz8n28JmFFlkXN40P8pIrQcwKZTAUx7y/ZqKVo6R2UeHZ3/1MNi5SAtx9cHRYVWO8bov4VBtpH9vxfp6QYeQFZeJCyAgcIOpL7yugrNoHOdL6M3NFRTXV2saSJSjC9s+Zgtocg9foJZQoRFGOwsqYub1fqDIhHgcuffHIRiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQsmX8vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQsmX8vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94FAC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727246753;
	bh=z81/8sTzXbV1j/LctBfpYXaF6qqAdCHv7hVOsJi5wbI=;
	h=To:Subject:From:Date:From;
	b=oQsmX8vbuxWCIn8KEVt1LPxe2pjNdQl2cwMbuF/7YRla6fR/0x3oWUmTQa0yOJGMl
	 6Cb530qnRTTzCfytE1WDiW8v+D2RSEZayvgRn6s/s5IUrozt38xvSuzjEgOpPca5qO
	 ummV2gWfmUdKb8HwKNkIZP8OKufmQt5bKt0cfmMHGdANvPcsT5r4O4Tr/vn8/zT9LT
	 CkrdEamzzc8GY8F0A8iJnq359Tt9yuZRZaCcP4es1HSF21UdFeRkxCl9g9BSNVloip
	 Ex5S53/kXxezItRe/rO6lDOeIxqFurEIOAlkPbVeYo4Hofv966MbQCr/Kz1T9LWefE
	 D8Ee1pberfNzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981F3CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724675358.16257.10283589261186829515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68b83120ebbb63c538ef54563acd25be08cce6cde1e20531d6dcb3ad9029bf9
Date: Wed, 25 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727246753
