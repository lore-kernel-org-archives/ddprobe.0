Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920A979F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739332854; cv=none; b=twW95V/Ij9uUHQ0Ty6coW7Pudt/UKvHrtmR+q1TC9YuIvLsqaKmK/BMB2FrHsu4OCsvaNJqCy1TOX9Hmn42L2xh7vfErqbgLsKsiM080soAHIf43rsw/KB9TUThWVTOQ4flpsOtyNpDhh2CqSTAWbzuCFGq49z+IYYepOw5CLsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739332854; c=relaxed/simple;
	bh=JEn3gi9iwpA7RXSMRRswzxZeCjdeWqI3WMBxlsEQpxs=;
	h=To:Subject:From:Message-Id:Date; b=rYm4fjYGt1Ad+Llg0XS8uA+R6oGXkUno8NoiKHndOZ3pmX35sSdSDYZCc2Tvmp+SQdSbRKmvSj+SEfA8ygoVXOwdxl62V1SLhR2rJa36DfDNQkKDhNP8t4kI2aa9mkmA8aFBqb8dA9PzpBtmIeeH/1hvM14S+qK2gy7j9TuSVbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cy8mRnXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cy8mRnXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01912C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739332854;
	bh=JEn3gi9iwpA7RXSMRRswzxZeCjdeWqI3WMBxlsEQpxs=;
	h=To:Subject:From:Date:From;
	b=cy8mRnXmWyXeuPSC28/gfU5P6GpDxRvKjGEzwg+3JBPyKJEACUhU9lyXbvEu6UpHK
	 UiBO39TJD5DlWu7p0fP3RUvV/c2UM07M9vPyncZ4tDkQjSpi7jw+/7kAN7U8f2q0an
	 Jimus/U8PGVj2R1zJ8u5GdauKORoOS+IpWqZ+61RUewNJMqn7cVPYYS8MP7kMrWg1+
	 nsFCBW2RIoXDbv4s65hp/hUENfEdoUIL1T5dCx2LuOE99vfPV7QhK+ws0P4d9b7hDP
	 v4vClQzP+XtakBLmh6XlQgUIvtP6TTuvobuh5UBFDoihd26KetmnS0vBuEMc1PHwv4
	 5k+US2Cairacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C187EC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173933285373.3405.8912299497415461699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0588b24b6acef8aa3618c5adbe6eebe8a207eec1f317003419e11081bbce42e5
Date: Wed, 12 Feb 2025 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739332853
