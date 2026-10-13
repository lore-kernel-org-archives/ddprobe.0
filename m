Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C98522EF0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791911434; cv=none; b=QAxGuq4oCpS12zlCD5zjKMgfK0XEQ2K3dt8y2M9g/Mr9zo3NhgMxNRa/13fGsbTnD4xWvxWHTOLUoSBj1YYLFbo2TSk2/+P8DlcxPDGEocSopsrusniARnVl/m8pNAI0TJChpI6rYh+XOMG+BPC6e/gQwNrvvHzGvH2J324JA9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791911434; c=relaxed/simple;
	bh=JQ2sssR4i3wTUX5ISBl9fl3hti93Ttb7GhCgbQ7cJAA=;
	h=To:Subject:From:Message-Id:Date; b=W0QuWnUOo13YhElL4b+r2yDcuMN9C/EkwOnjaAsTDjc8mMyRAFrncQNGVJim9zjdDbf2YAnpIuxcOo8J3PpmRtTesdKSfDKoH7rN1vyIhiqXedRxiF9ZXGcU6E6M1Wu+d7FBCaL2OzR+dOlOsm+I7fmGer0lOMJ6B6ssnSFPCDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr6Nz04Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr6Nz04Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C9BC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791911433;
	bh=JQ2sssR4i3wTUX5ISBl9fl3hti93Ttb7GhCgbQ7cJAA=;
	h=To:Subject:From:Date:From;
	b=Kr6Nz04Yj1ULGqm4pv1VpsmuPXs0Evogcrw/UTw86TlXTk3INErJ+0XqPMpdupJZm
	 VuGviol3AHuW4/2bXQDac64R+IzNv4FUv2fBtlGsYpB/6o3UDtH/sCgyL6R23jj1Y1
	 ZoF+KS2THlxA3wfZn7QaNRjFMpP6IrE575rUN83NNaY4AI2eObKnFwAWYoO4g9sN1T
	 vJCDpL4/pIh6DcF9vJtmT0iR4zbopLhp8gcV59DCHPCgjcWYMPbeb5/xq3Ocetc0Q+
	 XDsTs8QzAlu+52tetz/QtmTPEQtjT8xUHh7X6D/1zaOu4hJie3cHJmiXRa4Uno0dCv
	 Qtv8W8e1Yro/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8E0CC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191143370.26204.1049605881288888337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086af1be5757e64a94d2f67113c7191dc156c84e3f711c4ebed8341b0c9f1695
Date: Tue, 13 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791911433
