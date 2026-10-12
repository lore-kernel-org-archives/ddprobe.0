Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4958A31A807
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791784234; cv=none; b=RgvVjMMoIAl2FFeDZjvc1i1po1DuqtIuezr0xEugZmZHMvUWaiMqHpBlDKplDkYyHtjdDncofCL4iaH2Dcinc7It1TwCWHiLOSSh9Vd0ebA1wp9x6aCBUojs1iaEecqvIcYKxTcHwE4FkceQT+LmZCpCt++yFr2Cf1eMwAkDKSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791784234; c=relaxed/simple;
	bh=17SB/t95UDtFNeiinha5KP6liuTtVLJQStWFj2qQ/o8=;
	h=To:Subject:From:Message-Id:Date; b=lvK58qRywXlcJfkKOMk+I9l5xFucfdUspHco15tWx5Giw/i6/rxe/8vrq/4QvmMwDsBA6E+PiPkbxLcbazSNKREHPwDhWnTiwHsp8qfXfl4xPtYVcssGJliYxd1Q84U1ZTUk5x78OXF7V/mXBvfKhLAb3uO4hhiGbv/gt0pKUDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+q2vwoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+q2vwoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5DCC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791784233;
	bh=17SB/t95UDtFNeiinha5KP6liuTtVLJQStWFj2qQ/o8=;
	h=To:Subject:From:Date:From;
	b=c+q2vwoVkCjvk6aLtqr1pFHknMQDsov4bglCUbW8GA13CIPtytOz3rGq1L1aop8VW
	 nB/BmCjfbBSIIt5IToKHEM7OezQz8FIyDLAqzv9Scam/ie7aq8LdH8ml/dHpgd5nuj
	 9MhkfUFC8TxEUTta3b1hwaPk9w9bxU+gDoEzlVPb8o9aSZAjVO5UTj3Qd/McRFXt/h
	 h3y+Dey/jmIpqJmMrCFklUQtqbjoAH8WdLOM8oX9mopd22rVcwb4oUlK5icHTHNMhf
	 Zi+6M4Hx0aQIRULx1usYtTAZaiSMxDJQYc6AhJR0mYZODcRObBGqJpPs43VtNAy3PU
	 DiRafjAifO+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAB4CA9ED5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178423368.8163.12936636504066422860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58c875341580111d2c95052fba78ca5bfa9b4c34dd96ab39e95d01fb07da633
Date: Mon, 12 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791784233
