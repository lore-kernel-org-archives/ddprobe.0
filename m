Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F07221577
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755851994; cv=none; b=B2S0G75u8MLBc1PvR2AuM6F/Is60dpLPqzmn8PjAAQ5nwnVJ2T/CMNXKOjWU6lk0Oe30OXiyXjsHDoSEs9mak8mV8+UPLDUpX5+0WF8bAdefJ9qLrxsL3bUv5nsPqKnjz8GrALZTu8X823XPMqWIfaGL161hRXofLucsbaa85iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755851994; c=relaxed/simple;
	bh=pCL0ex0TeP2QcdpXD4Xem4XCnY+D0vlhGS6uOpJzwdk=;
	h=To:Subject:From:Message-Id:Date; b=uit+xs4iJ/jF/6f+LqPJjVg3u6hUaxNuXRY0o63WwfJgJen0qDrqYfiPEPlqh93hCeWOh8xp+SdbZF8Pvv7aWclSTdfyZRk016tP6WAR8WzAOECyVrUGAR1y2Ign31v0/cGIvqMD1xwyiMemTTXgl8VNzuigXtZHwrZah+anQ5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVxxUycU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVxxUycU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1989C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755851993;
	bh=pCL0ex0TeP2QcdpXD4Xem4XCnY+D0vlhGS6uOpJzwdk=;
	h=To:Subject:From:Date:From;
	b=uVxxUycUbh+T4X2aSVjUAAN1TD3x0WxkwEck4ZYsBObC0j3zEyj9H0t6ZA+Qbi/2h
	 eq3VsMiE+cLe/M9EMqTnfnDJOT9tszOvLpE5ErQONwzXuepg1tSl1hTpt9cSKh3T4S
	 i1Z/3Iknmx3bm8VLWYZShEMK4NTumM31BvqlJ9jwmvKDnpjmiTwG+I+6pFL+EV/w7Z
	 Tm3z121DPGeLF1JbihPO1aVo+9Bo2SDmGlRVT3leXR7R48DJNMQ83dthmVahUPMqA5
	 AcErAehCxAdYzDx4mK+gpxFw6H54q55izlqygA6+wIXddwjz8cRvj6Zbc85TCCLQQY
	 MdTeqeT8CNFHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85BCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585199357.14880.11336108325367247758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753cf4818eba6159bbe248f786771c0b22914aa014ca4e4e3c912bf0358cfd24
Date: Fri, 22 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755851993
