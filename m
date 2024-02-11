Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0994C36113
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707678497; cv=none; b=AsuVmMY5rd5JgmtR8VfQykK6QeuCzhJafF2jqrBI5VHzgMnw3EJy/JiIaQMA38mn+cqFvC8FS8MMKNgPEWlQ6Mt2g82cXkInMiBV489NBRhn7mL0CY5OC2cELIivm+9xzHLx+UL8/f8y0Be9LLEtSLD6kZzv1pmhDXdIzC5CyI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707678497; c=relaxed/simple;
	bh=W2k+yDrdZ3DN//3N8fuNHTnwSbG+Xtio2Gzg3q+in6M=;
	h=To:Subject:From:Message-Id:Date; b=ar8i+QG8W2Z75iaelSaxOUQwolelJK+rafIgjXqmrbzrj7zhbpJSO/sufAxiy09z6Obuhn8c7xlQMWsE5fPNWechaIYFUEfSQmk9PIKYtNlv3eJzfpbfCuG/EqwJhokuhqQuRNn55VkQpy5XALHpfGPWWSZKUGb9sU1cWvXO1W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccOy3Kuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccOy3Kuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774F7C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707678496;
	bh=W2k+yDrdZ3DN//3N8fuNHTnwSbG+Xtio2Gzg3q+in6M=;
	h=To:Subject:From:Date:From;
	b=ccOy3Kuf1w2SiXh88sMhJeh9D6tVeBvEhgPEJBMqE2lBYN5n1HKeksNFlg17eZoZI
	 319FMoJfiGGZvV1lOuBXopNz1Z5ijVXB8pPe+oNt8bRshPTQDhO+R/w7Oi5+HAhMiN
	 Db4frGiM9kcXhyLa2pNN/z8BgUrcek8/qPJvzXWG5as59xyHjHL3jKtoZ9ygPNToJe
	 yRNFKkbS+ed+NCChdMa6BYex+S30FUF0GA3XYuG/vvkGL+MSKTlMMhYFwMBNHbex0+
	 XYiFgGbZxC+qOs/hXo71cN+oRJ030krizaW3pxlUN26a5R7aWJNQQq2nA12OyeN1EC
	 XrS007dSm7iNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B019C4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170767849636.32457.3586729579851483455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb84950f95bbd33158869167bf534ac3020d7fe4d275e02fb0c4ef9f0ae6d6c
Date: Sun, 11 Feb 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707678496
