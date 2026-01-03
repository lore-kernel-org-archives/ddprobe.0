Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F7CA59
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767473034; cv=none; b=RHkmcTur4luakQTlDJH915cZC2dUmxM+ZqbWI9iR9gjdvKAM6kUU2gAJ5Llurt0KBgCAkVH+VSwtExNTMhNVU9PHFScgNCwUK1iCeyFyujOZVaYWaFVLsR/9JTmzBKsC3i9LwCNxPIcPk6NX+m2v4Jr6EezlmuQ2enVyYjmrKao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767473034; c=relaxed/simple;
	bh=dXA9ohl3/qffjqzjnA0IStXtZdV/UhJhnYODIxrdG+o=;
	h=To:Subject:From:Message-Id:Date; b=BHhm/s7jmMWWEQqvtxA4OTDEDrpZxt1T71sFDW3k4a8pBB5Sg1pLKx/xX1iEj9nuU7JucsLORhAaoHYFyAKrqaxfHo8c71THK2vG5kDjlLjOCaYWj9rTPKarhg6HwIWMMIek4ka1EFPQKThUg+Hq/bskUAVoMVEqGKxNJnGHY/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxEXfpHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxEXfpHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99FC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767473033;
	bh=dXA9ohl3/qffjqzjnA0IStXtZdV/UhJhnYODIxrdG+o=;
	h=To:Subject:From:Date:From;
	b=bxEXfpHAYh6I05gnGOoUHE5aUifl609WmiwcOLagOzdV09x1Nhe9er0Qof7BUsVvI
	 7n86E+GTjc1ObSn1A2oJjQ3V5RVVUmeLcV1ljI9rqdOQinoQ3PWNNyzOv9RzT9iIuI
	 uDF22B/TRrh9gbWXCVmGhwVzWrWzeR9Ru/Rf4cKEFAZ6OGDhPyQYBJXM/u4CoG9S4S
	 z1DzreFd44HTpXhqyuan4nLeHRdqoBTGpb6a9p32KWT8DOOvvt6vO8EPa5ISDps6ii
	 Yd/6vGHTgjBXm6aAxXpYS29jDeeuz/AnGNLBpGdgyfGBUUe/awCD147KQX60fcRJaA
	 yVQqeVq6n2i/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588DFC618A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747303358.30546.3591731561900135450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c827d02949786cd2ee54087aa16abb86f49732cc54ca9d5646e7cb1ba7c571a6
Date: Sat, 03 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767473033
