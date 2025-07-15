Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F892264A9
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752584394; cv=none; b=LfF6h5ZvOXpbf/TtQUv8AmXDS3liIpm1aeHR4BTeid/G7dQJ4lvlNRapAJagNYQAfkXXJdHjeft7KKUvChSumYXZGH2AUU92M3A5RcBVWxuXucS06EOzpn3AuowNO8RDqSOGpdczhoe4LyTyW40qqJhCVvAYG+DVv7RAXpqeQmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752584394; c=relaxed/simple;
	bh=fcvALfqo5FFhy68LfyhTJZ2mSTRM+YxQ4djQHwox17U=;
	h=To:Subject:From:Message-Id:Date; b=urK8hEDIeGZ/YrHHYwfPF+E7W6KXUJTPHtXAJyeqpk5iugl5CiqqCIbub1TVVTXsy9aHIxWkRdxsBgJqU1ROc/9/sMJ8TFvcyxwuk7G2h253VB4OsxPpGos09kDZ7a96cAP6II1N1XjIHdMaFJPM+DIZCEVqPL6n525F8qpRC6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omMyb/U9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omMyb/U9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC90C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752584393;
	bh=fcvALfqo5FFhy68LfyhTJZ2mSTRM+YxQ4djQHwox17U=;
	h=To:Subject:From:Date:From;
	b=omMyb/U9V0+QaTnEucKN2D0YLhc8IH3jxYQ9knimwIzIiMX8XH/ACGSpJuU8yYWvR
	 qnSCysCOUgb/xvm3NC9w42ZcQ02hunu+i8aK0nGEIryZa28Vby/fU8a86MI9Z2+zpL
	 IX3VMMyYvKC8EPTALWiN8bOSuub9Uq9W6MZEK8AQJnURQBIWExHHpgMOxI9a3+Uo+v
	 awwKlxD6P5k+2qSNRkq3KUoFvREuCrt0AlYKTMo0ziMLHQqolRwcrNy37D1ouGO24p
	 nVPhRwgpSAcq4hXKPl8Zq2es4G9ctQNbBvgCzGN/2/ygpGRPPIaa7QZ8psg2zxiRGb
	 EsZlh5GnNRSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA3FC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258439363.10956.13271803667970172920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b432e417905d62a106ec9a1caac43d424dc9d25908e852eb496442cdabfad21f
Date: Tue, 15 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752584393
