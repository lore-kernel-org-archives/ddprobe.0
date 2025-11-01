Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2857D23AE9A
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761986394; cv=none; b=dyvvnhtDgW9rRO/ei8YpaKIQFtS2YUUhHRLOFagtBFxo0d50D7tZniuzn63TGTqXeOJLFEC5OS/GnxCB5mKlNGFD0zH+gdDj7oTgC7DK8MjKplhrPO231yshiqgfXatHkHU2SlvholUnUyUynUDN413qW+LztSG5jjtgInBeuNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761986394; c=relaxed/simple;
	bh=u6qQXrArNiD+ZaD/zMNcEaMSUsIzAfRW05ewOZMmKfw=;
	h=To:Subject:From:Message-Id:Date; b=kXyWJokgSxFlrlMPB3yEZMYKElLLDWoFJC3pvVWcgP2hl4e8qFu6zBNlNp5T0wYsfWY2zTuT47bnN/HJTBCEkVmpK0h7XtkCFX9rxhTHJis1Alv4GnDvA+Ks221cIf+C7xyJLHUvABGRjCV208/iP1Rm4YtEY6loLcteVRbBm30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMPvp8sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMPvp8sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBB7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761986393;
	bh=u6qQXrArNiD+ZaD/zMNcEaMSUsIzAfRW05ewOZMmKfw=;
	h=To:Subject:From:Date:From;
	b=DMPvp8sjzAvUgAsTX5HpCsPoM8vkiaKUwKI3PWvOT5NNzS+3++FmSAkFe2y+4I1Fq
	 A4I0Uzuxd7CGKap7CaI/vho2h30g/mG+0paww23zp2X/1B5LjM8Alz0NpPIqTyjZy7
	 WCH1/XSsV9zeNdEz0uD+vyndgeKdMZkcpvJijBlOefqkzzFFV0PdqQbn0Y1+ppx0Ve
	 GN5yrHQH6HYl8cVD/aGvrRZIJMp1bSRMt0OUZ252fpc3c8qbck0lA1/tAB1hjNzYVM
	 unQ2Nn6UcaavY8tqO09WJGXb6ugnN3gwn4L3aSfiMX0APkud5cTGqwhryXBI/cvNi1
	 eGzUyMzuxv6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C75CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198639360.7690.8771835964890824138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60e965b7479f29590456a5efe0836d6c3841308f975014a2cc272cac34610b6
Date: Sat, 01 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761986393
