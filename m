Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242532AD3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761484194; cv=none; b=UofoZlzgSPsVOsjKxtR+OvxPCp/Dte2ahoJa9lRf+2JKYmoWr8MvmJncOWx0vgruZ7d2s/JIOWd5pANkh0FAPe3a1zJEND3n+6AB0Btk2HtNaBBJKoDzOBIDZkmPx9PEE2gO+eEwYICos6VvxtjsK5/5K3jCaWacHsOtOY8kpWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761484194; c=relaxed/simple;
	bh=wL71OuZTswmQDoPPuuvundVrCioBMkHua9zNGipDGVs=;
	h=To:Subject:From:Message-Id:Date; b=VpBxDy9Ok1fO95FfgWJ+EkW3n7oLsnsTSnFZVcayj7T2ujq2iKf0tzd1n6MqRiPciYLL5TV7ZAthaJy+8grg7iHtdBGNy6cBoAWLQ+sOSPmOBxyAeEzKEjYn4oa5j1PJw20avp/pa9OJMcvQAaVb+YkdUCT4upMH9vyaN9nkb2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2gliu4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2gliu4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37BEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761484193;
	bh=wL71OuZTswmQDoPPuuvundVrCioBMkHua9zNGipDGVs=;
	h=To:Subject:From:Date:From;
	b=d2gliu4pIe4hJG2HXIDf3m1UubgJuR22S3RkyMJ1vvwpD3hNUqavdOrUqqnB5vOKp
	 a+CCeVHRinPJcTtzlY2EXPltUJXQu4YoilzmQYNg23n1CETRb/sn4N1VzNCXpVcOYs
	 7fjifwTyox8ZJSsWi+rOmsBEI+PuenibiRdcE/yMD9yLE9YFFjg9bbEZnKfIJxoXoQ
	 hs4hsD/2x/6S+EER+vIPa+UP/x9ld9ArtFupRRKUOCVU5hIeYrDyLA881Pw8NvA2PG
	 gC4mAbIJGQYzHtfBh7H4PR3galwFKnsIe8jPPRYIQakMlW4p1uUy7T4MLXoswf8dRq
	 zORcU5dbPa69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CCCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148419359.7547.13942912242623537696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3f4bb8bc3ce3579d6ea4e509b54a2dde65583b08104d990c08b84b6bcb8907
Date: Sun, 26 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761484193
