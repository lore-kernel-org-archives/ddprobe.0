Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147AA8F77
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722969954; cv=none; b=XnSOucXRbzAlymcx1I4QXipv+7YR0ojVoz2obkOzw7SIEgx5ieua63rMgnPCUeYsH03ugWfk+CelGbh7JagQOuklokPEUxDeLey5WP6+P58rQp8NByFdYwsmx8A0EUirG9xpBVXbCAYHDTynGg0EWFcDdzK3r76ijoK7+h7jpgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722969954; c=relaxed/simple;
	bh=sRrvi06qzNcdKVw8C34VoCE13Nttb/ssqfcES9X+de0=;
	h=To:Subject:From:Message-Id:Date; b=HW3yKukmpPotMpVa8n2n/vAaSZPYaPgX1n9CXkPR4GgOGHTXTHaPzBLhHYvq0UVWxnpTADkxeToAIM5jvSXlHAbLwmAOXJsR7TbF+70vQIMZJT1bMwPEM2u2kW1oUHoHF/lx3ewfGw8VEMRpmdiXmmC1PZGfk2VCw4Wg26EbLBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmUFfYYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmUFfYYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2A6C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722969953;
	bh=sRrvi06qzNcdKVw8C34VoCE13Nttb/ssqfcES9X+de0=;
	h=To:Subject:From:Date:From;
	b=jmUFfYYa4iq1n2+UJnrzGWhDvuhuPW0KTshlmgVuEuOvDzG3CuQ4mpsXydTcmAXOG
	 nQyAr6fQ6dDZYFy13nbZOScyVwWn5NDFz6MyaPkmx2h3pGxWe82IeSdjHwTtYsphVq
	 RVz9DsDKjBzchAv2rBxkEpT85aggpiojekJZ9CsYeEGlTjVKQwNkW0/tfsdz5JIExK
	 06EuEtZWwE7/eoWLl/Jr0+4POM62Lq/eU5OLcwfvds+Eda9cOYHw3OgYMNhRPRG3dT
	 JM6dVuFGqLMPJKX1OA5ZwArQi+sENxWxwSS4sU53UN2yME3GNpy27cxJ/qGuY66G+K
	 heeVdGjJREBmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990AEC52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296995361.30767.15053753890774872704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f338d9895f064a958b2c688e15df413de47ad62de76dda5908e75ac9784d010
Date: Tue, 06 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722969953
