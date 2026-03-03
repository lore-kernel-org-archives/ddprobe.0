Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100EE282F18
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772555094; cv=none; b=ZWleTVZOvTWi+7IX/CegOMftHjF/n6J41x5NLLNmyzXf96IHo6AxFdgjNLJR79DrZHaVAgnMe2LyzUfUQYXVYv8iVb/OF5Mx1jDsUA8DGDO4wtc01K10bFthr+iRd+ETyn61qhBeloJ3wbxRz2QreD79x6HD2TVAlkLrFdb1oGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772555094; c=relaxed/simple;
	bh=EvknQK29uNTrqJytLtPhooO84T06QoF5x32MkfCUA18=;
	h=To:Subject:From:Message-Id:Date; b=OuxzIRdeUzUyzmS5Jg8QxEz1K9Rg86V+UTIIsfRjzEgqB912rqM2F66HYKQTEy66GVRhCkMGxzaaNZMGQjHNTp2tz46y4BK/u6h5vk2rTxaCPjdAndmYiniOtBI42WDwDKm+2gX8lzoDQAhBffDabLxh15T5geHfx7q9JmwT9vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b13/JEOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b13/JEOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7601C19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772555093;
	bh=EvknQK29uNTrqJytLtPhooO84T06QoF5x32MkfCUA18=;
	h=To:Subject:From:Date:From;
	b=b13/JEOhp6iyGv1epUgBVGjtqufmj4nLSKbMJvi6JsDMQ5iegdp8ut7/FTLBZ5YPV
	 A9TLom1M80cdkCpSn/KU2EK6EPV5KklOMDIBPKwsXvo+5GDFvZMwTEUAFRtq9iqna/
	 P3ZX+PbsYcC2EjGBnvfmFKctXiP3eND38KT/JNczc9n53llHrviQwo35aQjz4PTzTh
	 IwFPPnHogxdTZ4xf7i5Tco5fwhbxMguAExPSIbRvnukJ594yVKcYAJO6eD+/DzMtLT
	 gynCEuH6FGxZT6UmtDgC8rrJx4j/zo0nx3uHUsyD5vGO1e7WrIfzU5sqOsvvuCzlas
	 FbiIaAvGVhMJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500FEDA698
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255509359.2907.12209017362987098573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0effa7c858db8bb417054c98d126d2fd467cff20c1627c8ae1891743e5598df5
Date: Tue, 03 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772555093
