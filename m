Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59930156CF
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718443103; cv=none; b=LND2V2x64FSYYszx0TzP6sqbBVXVft099w3gX/G0gr25U49YQ5+sNocS+uWsQEyUs8b7M0xWm0r+6yVNYDYjvklAMjmB96HqpN50GZAZk/oBpo81CpcaaDiaKGG/tLOyrt2vNy0963CPQpwouuCXwjrUAgJnDwEx1YSam3IJyAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718443103; c=relaxed/simple;
	bh=as9a/axKwxFCS50mw9ZcgWkLgyHsu9jiqV6OtdBwfvk=;
	h=To:Subject:From:Message-Id:Date; b=bPUrFM1SCtF3tgm1axqXIn0pe4HFfiIJ1MTnwk0ZY6Q5Q9ggg1OrYdRKasAs2HoiS3rzkiyiAvLNgpcFluxgr5XjWQ5n6lw4kyN53fSHUfXdzxgvOeK00ZQ9NULu6TRl4otD2BZPD5OEP258XQvCAWF+e5iT55RAa3gY/hq0iOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnGgmRr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnGgmRr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF574C3277B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718443102;
	bh=as9a/axKwxFCS50mw9ZcgWkLgyHsu9jiqV6OtdBwfvk=;
	h=To:Subject:From:Date:From;
	b=WnGgmRr0fRlAikK6zg/bH1H6QHjOvjzjmtvUgjyTJZ8CsJGotOxgGxsXpLAh5nOpg
	 9kFXROXH8f7NFNYLASFogWoiWkWEUdmJCmWTAnT6ghuElBd48veDuuK5edeeVcBftP
	 LxeGb4vVeJyOy1QXXQOnNRkVflgGIaXefaHP/rFwkzetsL8zu7LwtOZH8bhmRs/GdI
	 ImA+fvaGVxd5n8veN1wDWGSNYZtevn0ow4RGO0tpwoHasNZRSwbfpvsY5jsxCV9niB
	 ilqymeI1Qa3jrj7Loya3SlZGqFJ93pkQ4LACcR36k4GFlw0aKGZX36JUNFZEo16e9k
	 DbdIvx33teq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA985C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844310275.16953.12755889292134238126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7888535a036fe3be8262c50d0d7a479ab2d811eb7a003cc4385a1d7a4a5245a6
Date: Sat, 15 Jun 2024 09:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718443102
