Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0657083C
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775463934; cv=none; b=ByP2N9ESclpU3LsMsHULJhJJOIlLUyYRB74faND194/C/1Jmj9njgOCFS56E9bS4YETRpuPUZ9qBlhW6ZC8+C8NMh0amLFQbpzdthQQIXuA5o4K7OUi6KZTCh6vOHO1huO4JGcaHsdTjD3m0iRQ563ydLDk64fkZJ8sQ2Fz1ZvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775463934; c=relaxed/simple;
	bh=etvK7/lTm9WAoxi3orXk2oUw7EZmLaD6FGYupoLN+lo=;
	h=To:Subject:From:Message-Id:Date; b=MjE8up2xI/ZSRIOwGQ/eazJ24JLPNJtSetncwjE2rwMw57PSnidgMx9wW8u0W6NVRs/Ape926pBrTGOVl5PeathvkzTwhgEJASqDhomlWxE4RZaVoaiBbv4CQWLv6oeLVWzS7WwuU5E4trV7QW+VW5lRCUay1CTsP8ttR1pvWRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ds/X2smI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds/X2smI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA341C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775463933;
	bh=etvK7/lTm9WAoxi3orXk2oUw7EZmLaD6FGYupoLN+lo=;
	h=To:Subject:From:Date:From;
	b=Ds/X2smIhLvpJCt75DHcf6zcy3h877VzP1mNTY88L1JEn5T6MCz5iqT7OCT6XhEy7
	 e2UDfMlUXt5XIN3hn75g0vH4lnWkpCFdgyl5K+FHdFtqoP8QUFIG9XJJazM3QykvIp
	 p6fwu9Flk0XnNqJmErmZyZGyB4QXny5hYnHK1L059P5sdOP6a+OrqW6yTGIOh7QKYI
	 zMbg18VyFWiKqXsA50+ItKrvAJOWVIr1RT+xdNN8NshZXgWbGmPpNoT6V75DY4Hvt7
	 oWNVvRx/t+zqxNaw13nDZxvYjJRLjh035n18dwtmxKObEy1Yk2p4z/J/S8gzWx8ekz
	 oOyr9n6Dg6htA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BA5EF4EC4
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546393371.21563.13919905668088582369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ecacd7f4481f1c3cad0247b01a127ca153654d6019ef4ddf2d0e4c64acc8112
Date: Mon, 06 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775463933
