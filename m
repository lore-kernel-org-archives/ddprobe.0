Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AEE360745
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791352234; cv=none; b=kzAgrk7cUqFr9pV/LNtFXu3j4PdWCJd0b+UDlUi+INNCv9Qj5+3QHLkQT8i8FB3Wi7/ytDkaDx2XLSaRgnJrl8e17yg8dmMWdVtsq8gVarYdsZY38aKZXFYHjPI8wixa0jjJLO6RFOWYqD/ccG/wUwZVIOwxSBWpclYg3zl8XOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791352234; c=relaxed/simple;
	bh=eG9P3jmaXoR9nhMSmQ4GmRi9/SYfQdIr8Z+PPkQQZUc=;
	h=To:Subject:From:Message-Id:Date; b=dABmrfZei9TuzLSsDmQzAZPj6JsxXBOmzSkxa3O8ECFa2gEmG+pqK761IW7wO8LZHo/y9M54MtqN1+JUdxKXQZ57CmBHRVDOLT7/Cnl+gsg/x0/Zb0PJ6mwVzdPnclBAm4z9glmv4tOwKqdnNlteB8KsEJiNGtWaIcJJxzXWTBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/vwA56y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/vwA56y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC77C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791352233;
	bh=eG9P3jmaXoR9nhMSmQ4GmRi9/SYfQdIr8Z+PPkQQZUc=;
	h=To:Subject:From:Date:From;
	b=p/vwA56yzSlLfAVmbhyqVDjhQk3vCBlMAyfOysNolgk+oUf9Zo1pcQkyBag8eejKM
	 uFVUxh4gT2zBd8nNg/jC8/U0CDLZh6lpGxu5IcoHEo9H5XMp224SVRq8O0zfx+brbU
	 pJiwu8w1FvaDe/TsNJfooBgUejA1I/Q/6BGIfi4SQ5MCz9aJC+8RYgkB1plJzz7oal
	 dxZaLaMGJWh4+chxxy5Rg2Rdeow7rTHcHybIng4x2VGWhqYrlNdrzDBWE6N3037Qgl
	 kfYlPl0K+mLgIVYaXYGpWotG5uonu9wGPOvyldEQ2PGWSIe3Peam9VEF3y2mhW/1Yj
	 jvEm0btDxkxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4ACA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135223369.20692.3434476436075109270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec579632f65c4276d5293eb85d640f2ac41212de7ee1f08219e1b8ae8b23b72c
Date: Wed, 07 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791352233
