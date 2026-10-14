Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA7037B3FD
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791949234; cv=none; b=njvz5SyppzJHR/SN8h/X+rWtvyxTQnfj6e10V6UIzSXi3m6hmKpGF8uXZ2ebMFtk0A//fs1BR41sD5edp/g4YdQ7yaX1NA4P2lfPi48e/cOANwg1VkkKTxPQGquILt6A2nBpyL5rgQ7AmPJ8az514vgtL8WZn6lgH+ZUFOSBTCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791949234; c=relaxed/simple;
	bh=Fv2po0dQSh4hvLPIvTZDUgQs2W+T4RxuQk57B6XqErI=;
	h=To:Subject:From:Message-Id:Date; b=rohhyP+weUItnixZvSooGRCPMM6n0Y0ToDC633j3sL7BU/FwidD4Ys6Cflh01b9XH7t4rIa2XRO/PniAdilKl9fXo39sl4hAC5VrqqaZ18M6Vwpx4x/ILOodmWQfI96HOmjSbXW0seUfkuJKCGe/sz128I6+gF1YFEjPsqpnTy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIP2oPXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIP2oPXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF87DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791949233;
	bh=Fv2po0dQSh4hvLPIvTZDUgQs2W+T4RxuQk57B6XqErI=;
	h=To:Subject:From:Date:From;
	b=dIP2oPXGkfipKGW2Vb5gRsh/jJXIjShqjq96CfOwUv2jyWvLrSA4XetMLEXD17Iev
	 wZ5LIbfRBWklIz4H4pp/I935zol3b7HzSn7KsD11dZPUJC8Y/eLsZsAEdfIqZKAHZh
	 8SffwIxnoHb1eKjbn2c8ysGpqNt6MpyNrLv76sD6o1Q/v0ha9wxXp3ppI/rmW3mf2W
	 ki83itNdPsKem5SKxgpG78jCXcXbZ9NpLHMZIM2dmGI7PtV9E16QuagFs2VdVzoycZ
	 i1yWCLkmDKnVIFSJ/V8KCpi9OojxnDB9saLGKvWk9eHtyIYX0Z7FCGlBIA5wRYWVr1
	 vzc+N7U+mkA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC71DCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194923369.31248.4408168971687324906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffd2adac006967607744066c7b5b6d06b3b0eeefa4ad72df0375d746c3c4219
Date: Wed, 14 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791949233
