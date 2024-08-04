Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9BD13B5B7
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722809755; cv=none; b=cr6eC7kb7FUmSqND5pZxK8LJy8EX/FfXMSwZLr3j1IOo+/tmbDdGZAZGYzKeyadRfYeysPpVNplhU9tRHP9cOoxIQ/uPmhOROZJEmemRE70sGiq9qGjSWZCHE93MpYF2JTb6SvXqIizNETIiHhl7BtlXfEbSfd4oCZDw7PwYytw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722809755; c=relaxed/simple;
	bh=viDG6t6NnbngAKnpEBrWR8I7Ok/7BS+5PFTp7okob8U=;
	h=To:Subject:From:Message-Id:Date; b=eMQ65aNwNhrLv4Crs+h9dJ/V5RCkr7VtksiLWoK13UkboZCiaAxf0qXJH0GxSMXL/t/dGmZhpg5SoJqfXOuTaOeT3E1yU655aqP6VSpx34H+65ZPff3Pu9osjsR3pzO9KsFZpwbvKicKq09vZZOUZyXjjPF32fWZt3DvA0rKzkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXLpEKwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXLpEKwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF3C4AF0C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722809754;
	bh=viDG6t6NnbngAKnpEBrWR8I7Ok/7BS+5PFTp7okob8U=;
	h=To:Subject:From:Date:From;
	b=uXLpEKwxYM60tARGcbhqvhJo+8AZzGICnYTQMlk3tujI0RJHOzmMIWORey+Dlgv8r
	 7/ZL1TreChBGt3fDUfHvsR+6Wh4Ai6rkEoynzveInmVqLCeZT23Rv9/wSu1BCN0d4H
	 ImwXunuRkxqmzAua5x+mMNkWpwe+Rawm050aLfdqo2dIl21+PwNYA8QxXTO6gPksoV
	 hMRpJQ69SAdwIPE9CApDphh42qZq15Xsi660QFXm3NBeuxC5m/nvjYWdpwT42NCRBx
	 OWwCGby8A2UU9ABZFQvyXUSwaq0K+S0URsZ2l7dYCntqWHZfFlygO7dKU2DWto4pt+
	 HH8ayw/0q9pPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935EAC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172280975359.7150.14200468162424566702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b820521aefd9d7b481980518d46801fa70d997f7f30d2f7c631ad0198ab1ca
Date: Sun, 04 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722809753
