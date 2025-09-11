Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269CB154423
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757559594; cv=none; b=PBS6yfO/YK2RIc7SfTNPLekk0YJcejg1257IPKaelTaU9hsKIbWqO3NqhTJRQUUIYXIEG9QBwV2hdAl7pAjVIGDGITOoP5H6ZbnyuUOc7dznWQj+9s+AwCgS4bJCNEN749K5re5Y6eKAgNTziVS0kH/2h/JyRPZtE+py11wMIbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757559594; c=relaxed/simple;
	bh=kUv8F30sbEoFWMpTEkJ32NwVNsc8Rxheprp/5jkDFWY=;
	h=To:Subject:From:Message-Id:Date; b=JsHf08V+T5PxjtHbNncgdKdNyKGv6rmDgLO0U27Wt7hd1tkhgVMrs1kdbCmKb55vXVPkkriyoiuJWncvE5I04Bvx05CCLnCqX9v0LojiJYkUUchvrh1Zua3lekR8ytPVoulFpaccJCiGjt2kjj4S1+pEEuDtKNjBoALc+snHH2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbLG9bWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbLG9bWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B65C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757559593;
	bh=kUv8F30sbEoFWMpTEkJ32NwVNsc8Rxheprp/5jkDFWY=;
	h=To:Subject:From:Date:From;
	b=gbLG9bWLzhNQ+cu2ZCjjCY9tcf6G7vc2xFpUW4wb0u+OFllRui3Qa1MgNaSdjDOFz
	 yu4AmVzAUvqbXOhZDWMYAT1XWgMRtZr4GQwof56PglM0hlJw9V7SGEx8XqwGJNE7mZ
	 wzgS4g2kUK9dY6dPU/VJkBWdoVzO5k6BasiOAgBbdDpNf71iHsqKKiy6ZoYfEc0eA4
	 9NsxLEXfMtk77A4jvly4ki+nbKjKBvBL/hnlMPFJKRmUlQHNkiDIEe/U9iuPZgEx7V
	 al3aWCwOGHH5dbnmuwZBgdznnNtkLxbnQwA9vCqpqG3YyDoDmjtfpRC0UEmuZPJqUl
	 LgvlSuDGiM3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D64CAC58F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755959359.2167.9663428379518212222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b4d22eb749b1dbf875d8d057b2a705b5673705db7a7f625b4be5449b9a7b50
Date: Thu, 11 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757559593
