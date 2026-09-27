Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B0C39F168
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790517034; cv=none; b=fP8WoyTFBiHxn3W2c13K54XF0tSmFIGXcKrmgiGdMESpgDGtyE6hWZuRQebWr+pdhxGBpkyC+P6+Ejg7oISmCYx8pce4/AXkOkjcKgsv4g1zKrUYuatlwdMYTKb2Fbp1KOcEpx2pnqfakqXh/XO0bajk8RggAoySQ85pX8IC+OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790517034; c=relaxed/simple;
	bh=yMEtJBuCpGgRKVRKaG+dns4dl2AAXX7RsKjGmvPF2Mw=;
	h=To:Subject:From:Message-Id:Date; b=j/o0L1HaF2ky69VVidfLUa4PH04XhV85SCbbnA9XsNp7vhMaRPZ29XAB2F7lJnAVJH28fv7MzYAeVHdqUPRqc+zJMnqGpcc4kL/FA5CUIKLwDV5pb2Ax7hPntEKUrhGIwwYLGoVRijb5pLOVYhlLgXFQwzEKJFVBoEJpPBqP7zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuwQlLW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuwQlLW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC271C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790517033;
	bh=yMEtJBuCpGgRKVRKaG+dns4dl2AAXX7RsKjGmvPF2Mw=;
	h=To:Subject:From:Date:From;
	b=fuwQlLW+v0Eh0Rimz3X2AFkHwdgohd8H3SJs0cSPY5dsFbqw8gFqnVDiNi3gfqETK
	 W+7LMybNuYRnY2JIRIQIW1F+Nvf9eZzQHUBkVHh2UKYdmD8jwekYr5aWc5IE+MGC3x
	 nmxhaAD9bB59r2Zo0J4MrM9KP4h/S4jmDSK/yVs06W6fbrEer440R9Al5vpqx1euQm
	 b4BH0YFjdxToi4EGgzfXZ3zZF2beqbLGyoeg7MWIAolgO7oSnu6AybwLRWefdczhh4
	 7dnX3xCo/nSJ17AYPUF3qJY2scklBpDZSZ0XvThj6ytXZovUtlW150i3dMuajmq15N
	 T1W+8NL4n3Ddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8101C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051703374.11871.2249081225198233844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498c65c70fc2cdbe0cbb760109198c231f1800b3a42a7bf8849403048ff9fe97
Date: Sun, 27 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790517033
