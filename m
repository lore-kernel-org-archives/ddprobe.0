Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BA8175BE
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717820843; cv=none; b=I/uwZrkf8tLrugwStDdj85z7GEDkqJQt3Dl6UtgnP6rKlyjVu0PYDvOlD2OLOTjSSDbqZAdcNM6lYQJjAG3d1jznekrniHY1FzDA1wA09fSddGa+9ESx+1G+aGS8pLBYHmMBi5L5Kb5HgrJWo/n1aeX+aMIChzgFzz/sfg7OHww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717820843; c=relaxed/simple;
	bh=B59NqxI0qcbwgFTphwCeBbx3XfnPYi3FNjK8FKLvv70=;
	h=To:Subject:From:Message-Id:Date; b=iHGErH/nTgdOfwJBCK1HyIrasbnqcerfCOscqmOVKnBfhkkJSgyzxRDL8Uh1xrup59TWoE6dyrSLWiGdT4PYLH2Sx8gSX3qqfdoHPmmjuldQe9icI1nwx2l4geU1ntctj43FvFi3fvHjOGOSY+sf12Z72C56x+WlhH/UivrLcks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo0FPFhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo0FPFhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF0FBC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717820843;
	bh=B59NqxI0qcbwgFTphwCeBbx3XfnPYi3FNjK8FKLvv70=;
	h=To:Subject:From:Date:From;
	b=qo0FPFhyVo4bMxigsDtqarILZucovq31SEW/PoafqeiLyrEc7k93KnAAVwB0ihnNP
	 GJTYsUMavzNQsyVQu3AuozBjKun28YwmqLgTqt12gxQ4dghl/Nf1LbtAhMWggLoH20
	 W6R0a300rqm8AdoDie4bOdFHFgmROCI1nr5+04EnoNUoHu5MSqxHATXTNrjBnNlhTk
	 TrBISCZxd8sDjBXt7gpPyKSzqpIzVnqdrZF5cSW/p3mMszhIrzuHfjRRxuXLqKTB1E
	 REMfyXlax8+OTCI/x77U9xE+RCRB7J8i+Tcfk7HyGdsnC5oqv7rycZmsxAJs+w+XRF
	 xnBKXvN+PhImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4B44C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782084284.21127.2130451017361865856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4a5ded9323654fc3b456cc0d2883bbc4eeb8a1ed9d0664f52a901b0a0c716d
Date: Sat, 08 Jun 2024 04:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717820842
