Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03FE23754
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706399897; cv=none; b=p9OM7kUSG42eIJY1WPF0vnsM+tlgplVyYT4znIUl8ul6GPSSJTzAwdwoQGv3i+kFSQlcVVMQIzFlHa6AYs8OsXEDvUCl79V+5+9QeoNC2VRwbE9sRuO89U7tzvtMz/a16ma4fEZOGnABOmMrHp3ym4Qwcw0HbOKwk7ETRxaxJNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706399897; c=relaxed/simple;
	bh=+2zzSxdLj/Y2SlgO3kVNuO6vtPdknrXLfSFdFlKRr5w=;
	h=To:Subject:From:Message-Id:Date; b=q4CCjGu2WZ4OOKdJY+LxD4vMosezhPe7d5flfxsAbr4z5aGWuyRvRJ1NEvdmtAmiBgCMO1fKvOO8XSy6WRIcbgzVdDf/6jFBMrkcjAQVkqx5SpV+LZv1bg7AmjxS0Tjdp9b0B2sFa4d6RNVc7HYHGP5qN9D8Uc0pO8CmJojAu44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGXiXfQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGXiXfQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816EDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706399896;
	bh=+2zzSxdLj/Y2SlgO3kVNuO6vtPdknrXLfSFdFlKRr5w=;
	h=To:Subject:From:Date:From;
	b=SGXiXfQIJgVJWRpIxkePuCDNFeKUdB405hGs0FmaqPEmOyYEtwCeYLRmrsrxAph/Z
	 TaYcLmDHGBKXPJWPHPRIaSP8TDoKR8uFoTHzBys+paoWLRv8su6uvPLEVEdIln/5yS
	 rE+dB3JH1bK3w8cXuTB4eZ2frcIt39YKO8fvCi9XvXTJoXUrUsaGKgc9R9tI7HSTyo
	 YyaJOuR0zGzRAKKhsCfEX0mD+VKf2bH2Hl0sVo7QaUpjOYgfcf4+mUq+QsNQVVhJwC
	 HylNn/wmM+PuVq+j04YSY7KvU0sEivbfDUjvD/UK6Wx/SaA/AHWxN+X0iELcV+Q4De
	 8Wk0odr8eB/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61389C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639989637.18462.6387023783385901368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4a5124856d5b49b1baa003837cd2a4907d81d0e35bdd36668d49c0c533350f
Date: Sat, 27 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706399896
