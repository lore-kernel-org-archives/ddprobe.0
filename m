Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F412253E1
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748524194; cv=none; b=uhVLCpjIYIyQysDVnLeQqfdbrO6x33iZdSnB9JnHfsuDyKAI9QgTEhTTNw4+cDuIKwSEKf/40cjDKrxq/pSnOAise6EpgTvAsprsclSQkn1cj2npIz/8K12DYyMt/SrKC4uLZZ6g5EVpEfycXEvmiUm7pxLGvMK7Ww1TqMOn3D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748524194; c=relaxed/simple;
	bh=BZ1lo5CszbqHpcTuiC4nNQ7LS6K4ksIumyLKy4HzMJY=;
	h=To:Subject:From:Message-Id:Date; b=Oc3WVKujyAOVAwRAAS9+eTAikTTnLVJejLBgxsXXx5cejr5wZK2mL/0EQcQJvP2WZR9dQShdPJvESn5IfyO4wOMebE/uTESuZDLRCTQaOTDypHdVDuKTOdTCdyWN6xYW9EqDKeQkxCtIB12ICQstH5Pkofk9/jrp/N/4zaJNx9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk/8aFSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk/8aFSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4104C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748524193;
	bh=BZ1lo5CszbqHpcTuiC4nNQ7LS6K4ksIumyLKy4HzMJY=;
	h=To:Subject:From:Date:From;
	b=Yk/8aFSJs+VrH+yLZ/EGNy8hFElm23S1ELEMI/ZkF/4LBM2OZ6Qb9Qsn7XDOiIdkP
	 Y/j0jilDoV4ZryOvCmnS9duCIKxehRcZivWe8Hksp5xl7QLoNY/UUb3NlW52FUtLQY
	 kgLU870l5V6ZEv5d20kzqxDXIRZ1KlfBYmou2zmeBCpIYVK3FxM0j9VwxBoUZwu6e2
	 e9LS+Zp+g37vcm6xcD0UpMouj1fQ5mgoKZ9014t4hKn8wuuNqdSvnk2S5WUgENm2Th
	 SvCeA38PqHdd3fQLebstiRcqx/4hbDB3GuI3FaY2WpbqqOB6aRqTE8xcmOrdCaX5YK
	 uEYb62nlpHbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DDC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852419359.16764.12368165606500195496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3757e091277c2790788a233dc6307bf513e6756eef4fc85db5a659feb5bdb55f
Date: Thu, 29 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748524193
