Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE4B82885
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707932297; cv=none; b=pRGqVf5+BEtiiBVAfl9jz/wDTjy+GeFnsOUns+OrX44JAw4qr+moAWNgKsRhAEU6rtyQENV+oOflszE3PSkFEKjEPfRDEvLO4XfdFAyiVIm8e+usArqLnitYqJ4pQ+vDaVYSrtKGz2gXovAtvxoAx5WZbnAdE2dJ9BhSrhWl5+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707932297; c=relaxed/simple;
	bh=RzTXoUedDWD7lOoRPKPpijYBRifpfIEmMip7zV7sw00=;
	h=To:Subject:From:Message-Id:Date; b=UWKMSEDKte2eZCvKh0u0FbHj+Tfm6gFE/dy0SkObgIw/BcBm1aTTYNqVAYJlLuJlOnUWFpsDPygu4pXuoZ6HEACrR/XTzZ0K+S7BLISSyZi9nIP2++ynHtyDZYYXmks8+BWHtVIGj6jJrbc6MY/THhTi45Uzhq+G3+NrIPc7F/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDyZ+JQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDyZ+JQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81734C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707932296;
	bh=RzTXoUedDWD7lOoRPKPpijYBRifpfIEmMip7zV7sw00=;
	h=To:Subject:From:Date:From;
	b=dDyZ+JQhntfGPpH4dKQr6bARd8w6ERQavBMrdg2SNwF913rPkaqCX0sV0WyGvCE6L
	 CXqVvIkY6zGaWhKvTmDgglQgoMlSbf9jD4mJRWxJXfXIh37sIqpJEo/tFeWB7gDkl3
	 Icyco/fY2dMm4mTmS6fQXn7s6IK5NobiudvjNd3UDXPnxY2zwhunKMvJRMYMWrDK6e
	 m1HpegeN65h8qZZBKrte5gGLx0keHwExoTI+eREDFwguyCUnQIutXXNGw7BKR7qM8M
	 CqDV76v+BnEWQ5D//IHAtT5Pwn5XcD3OzFc2JdwzkXrDs93QK9jgG98SaSm4Ixkpes
	 w1vG/qRxdgUTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6884EC48BEC
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793229641.12112.8271050539564908255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6273453985b346fabe977f441ef0b2beb5ce0ac037098f9ac988e29c76082c3a
Date: Wed, 14 Feb 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707932296
