Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8EC26AC3
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754758194; cv=none; b=hiDxPX6piI6ShdDLAJUIiaec35/FwbM00gJXUN04XRnaE74Goom8Pv2ThQ08x3bFBZJrohvk48fneRsKK/sSBBxq4vCZDpjB3loG27oU9KVGvqX+O9PL7REPDTorW3E1D4LDR5lNnH6x7fK+dsvyAlLsqx7RYMCjoc276/+psPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754758194; c=relaxed/simple;
	bh=IZ50dMEi7Xj+xYtoRn5zU30AvnSge0yAsNjq+nmWlgo=;
	h=To:Subject:From:Message-Id:Date; b=rc5CNHyvUXYUQoFp3kNAxymE5SoaasZJSaWyCXlTfVj64YsDkwUJPu7s+24UCrKxiBQaawsEw+ftPV+Ej2iiC2WLuxF5yKO7swW4NwGTycMDCJGacfePeIC6rCkOxm7cv1shCmDz0mOKvE9nULZ5dBha/fWB8jyIlNMszRrpOfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ah0bfC/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ah0bfC/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35ABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754758193;
	bh=IZ50dMEi7Xj+xYtoRn5zU30AvnSge0yAsNjq+nmWlgo=;
	h=To:Subject:From:Date:From;
	b=ah0bfC/ZUh1AvKds7onOoSPJTh6/4UPtrrUsaAeOlNMU4cS8PhpLjQ8AIT3ECuG6d
	 HIxoB/EFaupYqLLS4tW2FZ2jUs3mIPNrtADAhqXodIVNZDSjjNP7au7RGIpBJl2xSz
	 VT3n6EuRVX7XdGCqJSi2SLB7uZ6524sumdDTPskQs4Q3UVLj8ckVJa8xHPvseTz05R
	 Gpp61Xc9QC5P76p9dEdzxGVi5zuTgtVqkMWjuLtlTxAmHT5/aYM6/n7GUbSTkVjPgM
	 SZS+OjfsEY48ibQdcSiroHa0XINuRqd2fhnow2NejYiSMAXPt79RK2FO7js0cm9cQg
	 YJ4NcWAJ4GmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB0C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475819357.7976.375249810828815831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc248549580c74acbfbcc2e30983e3eb58301cf29840219a4a61d4582ff4fd69
Date: Sat, 09 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754758193
