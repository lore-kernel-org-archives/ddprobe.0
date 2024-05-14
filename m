Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C37A2AF09
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715704943; cv=none; b=Y3nkP/2okhna9vq9jLqp+L7FV5ekz0JD6stX9+PWkhmflV2TakMWk91HA80QY8U5CdX695FZsEztumyNqtrQZMz2HQsw83Ohdg+6X1LvpVkicbbeHyBgrVrIwKifRx25VFiW0dR1goWOb5PwVtyM2kVwcrHAVLqdatKJYmyZtM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715704943; c=relaxed/simple;
	bh=Lqusj66yi6NZ8mokO5h+g+y8qDPS8vAzlYpNllQeMjY=;
	h=To:Subject:From:Message-Id:Date; b=S7v9P3iheyxNK5V8ef7TernzW9h8RmFmDDBlHE90C5UbvoIOSMYXoa5i+Ri0IC+A/y0RE/cv0zKTsxPz+rV8ManKLN8D5wIa46F0X0yrtO9IPPwXWad/tEyKw5TKobLywogeFaBhQ1GOSfZiAIrTUjFKki6MEPzCVjw5ORnyda4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjaJj3/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjaJj3/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D84C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715704942;
	bh=Lqusj66yi6NZ8mokO5h+g+y8qDPS8vAzlYpNllQeMjY=;
	h=To:Subject:From:Date:From;
	b=OjaJj3/2V7BGyEMmzZ0wt2NGb1qxlMEYeaVr5+Etx5OJ2dfo4XBmPytwvhE3/mkFj
	 LZet9Q1x0SPOd2dpr+JEMvWAO2GSTBzJE4w212+7sPjxm6WKN+m/YA+ykRyatS7npB
	 PjEBqKtbgoOg10Np09K2o9K7UnQb5kFVjblXj0iS8KEzw0Bv46vb0xDi/O3FQAcn7y
	 NF8VEXp7gObZDWg696ShGLrxyM8oY361aYfllA/40QwYzXclHtacUvxG3choVWuEph
	 QgCfWGR8KRF68xUNISDMMmDoDfopU0zDDCQI7pe1HdUZjhkaCH0CBbU+BR3vahiVru
	 O0wCrz1rlPNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B67C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570494278.15060.13542781254588112447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c3ad196f1c62b4dfbf758ec6e18888439cfa1384426a466a0bfbefdfbb10a3
Date: Tue, 14 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715704942
