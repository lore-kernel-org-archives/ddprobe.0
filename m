Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D96330FC26
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791070234; cv=none; b=q1QB/m8P3t7STzwhO1ZvIuD9i6EjxsngCHK/TPlGrFz2+RC2nE9KBHe2LbgbYNgXm2j6KUBphBV5CydOlKXFF27Eye1c7eNUY+LVA2hdBepZI0X2Bif7/7rjJ8e+0BHt8eBAcJlzpZm+oySx5ByHwmb7AUBV/YMMsAx9d6haaM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791070234; c=relaxed/simple;
	bh=EO1wMoVMHfz9FuePs0jDmzOi4W3tdo4cpTi1gquBUNU=;
	h=To:Subject:From:Message-Id:Date; b=ZRf8RuK5/qjjFTf/OQa6Hfc/LaOM1RE9458DV+U8q/Wo2bhi2lEGdLPutPhdSk1liv+++6+AsWcm4aKaShOH3oY0+OvZ+zindDnp55ZCH/y3YSHwhOL8Ntl1FrrE5rGU53se58KCt3m/s08BnbBzhjaZ2hADo5bS9mHW39M/w9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ycm2XrgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ycm2XrgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22E7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791070233;
	bh=EO1wMoVMHfz9FuePs0jDmzOi4W3tdo4cpTi1gquBUNU=;
	h=To:Subject:From:Date:From;
	b=Ycm2XrgXo+TWJmeGR0NyYnAcbc6LfaYXpAFqGiStNEKgNd7CFcTg8xhlForyMlOw2
	 yeVoK2U6jVuWkxByMQEZXUwtvd3Nj/6+EPOzOCJOPax+1Xm+OVlJeH5YXNjjjicII8
	 /573ddS0ODWhKugFZ9ozjdTlW5z3quWOMrLEvDk21nqdHhyggvl2taRm7RxCz3KdQZ
	 HfCiuMmqPONQqxPjQKbdqaeEBqb6bkkVM88VGh4s0G/qUDQc8yz/NBTxlccaOHXFrz
	 oMXMkevhepbSBMKuK1J7XVcGkJj2K5uBfed4VuQu3tNeHxS8LjrkO7iV7/9Wsy5XZe
	 njX/JnF3DQ7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F1CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107023368.18993.18028496816335023514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affc764ad33a0f3f950bc2ef0823756a5cffb4d22191910b778e0f44477c7080
Date: Sat, 03 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791070233
