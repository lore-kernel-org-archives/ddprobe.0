Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2125936827E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777540654; cv=none; b=maxE0yJtFE0JkFRw6F2387YewcT//+ZzbULyQunbkOVHNr8uxtWNXWTwqAHOvKRNXYCbkGax81iW0YeTaWuzykb0a0A+Gno8OpiiB0yV1184n17+b3tCBCpw89pjt2c4cPjllakEDmHXzeuzm6BB+wBdgFSnfBy7D0u0Lx3Ss5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777540654; c=relaxed/simple;
	bh=GQcCWomPEnisPim2SoxR4np40DV+4CderUItUdKPuvM=;
	h=To:Subject:From:Message-Id:Date; b=N9yeiJFUAXef9B68iAzHolJ7EAZekemPegm1uVMXBq2N3y40ZCdablvHSPwqxBod9L2Lw2oOp+D3wCU28cimOnDMKdVgSmLR07uZX3CYiYQ7Drh9IWzVAnMpVKpdMNPf2D+1/Wwvphnb9kTMVzYwGFejQbJgaLDVvJMVlub2EvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+zNQqSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+zNQqSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90CDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777540653;
	bh=GQcCWomPEnisPim2SoxR4np40DV+4CderUItUdKPuvM=;
	h=To:Subject:From:Date:From;
	b=I+zNQqSVhErA0Iz0JZm1eoWaBbwZtcPmCPAmcoIPP4iehQ9PnkC3xycK9BzzS+ZWA
	 VL+z0E7ov4IxPcIUL5w/JQpSi5AY0WUSz61qNT+CnAynfPXyF1eW3Nvbx0ccLaSuc0
	 BW4ChL+ZaU1celBYSuQ06TYI2wT6Rgv3tHxABa4yrbJ14ozenTrCaFikFLh30oEh9H
	 IR7MU/uBarYS7kKK1znEgKNkJHkpeCT/rko9LIdkg9ntcT6l/8TbAtCOhkmfkkNW/h
	 GRQ9PJx9Kq66tAHZc5WzYIxQjlHegGQ4S5VgEFMs3PFHIZdP+zkHiD+uGmW1qCiEbt
	 QtYb/VOJQsjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D08FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754065368.11176.17875265496060873975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad5dbe3103a8b696c8d8e57f8a1e7938e9a0f767046503b7f642625cace09ea
Date: Thu, 30 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777540653
