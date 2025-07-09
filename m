Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC688633F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752102594; cv=none; b=t4eWTRKumVOmBzH6qFGw34+9DnXR/rOuZquvQPN0fRNkuAKbXU/u3oDa6y9QhwoBKRZZ5s+trKh7StXrKlUBjAkbtuXg9+AIJAdZ/SejPnWFe62Pshb+q/D766fe2VSEm7uONM6b2ZIW+nwBXP2mHD/ZlRCUt9feF4atH3Ebwpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752102594; c=relaxed/simple;
	bh=V6b15Vdi9KBJ2JLJPihFcHcng1Pk8IMhUP4zo890Ncs=;
	h=To:Subject:From:Message-Id:Date; b=AuSRQ/ezvgjZU0PaXBYzAwUxvAUxCyoISR8a3ZqSMUrdJGl4ooO+KdtAm26VrW+mqNWhrav9ulbUL8zVhluQbHSfX8ZVhZWY0FCDFw/X6wOSS9R2dW+BIQ6Y1Yrl6YO5GmRlHY540Oh9JxxRyWG9dN0pnO3js8CN37+ODZXukiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkufZjUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkufZjUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9D7C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752102593;
	bh=V6b15Vdi9KBJ2JLJPihFcHcng1Pk8IMhUP4zo890Ncs=;
	h=To:Subject:From:Date:From;
	b=FkufZjUOV9BsrO8dgPeJL3O3cOBJ69IehEttxL+HrwdQK66Fz4nhrq/IvWtQ81Guy
	 pPv4GDF17hZqU3vs9l+aYvSE6tsGhAnb6RvUU2y6tgXnvQPeQuQPACkA0PpSL5vVnx
	 dkEfkK8WIod2TIbPm7Nir4vGbS1h83Wz6SMIwc8k5p6o4p3vS02GAyavItvYImxpht
	 Y7X7H8VV5cFpn/qPA0N35ROUQ7FLnfNTTA5oW4MA+R/tVvkZY0bySP4zcGE14P21Fu
	 /trZX7R7qBQEx43lOek1uw9tGN+LgG8g5gBOQAQ/+ssscRsCRqmmqRaq7fnD1aDQgu
	 Xa2E3uA78VlUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D2C83F10
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210259357.31802.5546940179468686356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188867c341b6b287179ff32d26f633532d2de938a08e29d2a40174ee3e1eb76c
Date: Wed, 09 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752102593
