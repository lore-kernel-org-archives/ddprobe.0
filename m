Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5905338A
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711035497; cv=none; b=DYdANgFDAd4O/sHqZAIub6MurhEWcj3DlQUD1gVyG+fn3Vsy7STaO3KbI+SlZuSjEWBDs8IV52zLSQBDBD7LV3ZNb4MoBXN7WBHOK/L94CWvLe4AADnMFftNu1t37Vx8ZmatWQVVjNKoM6wvgVTkbpfninIWCb/XD+KbmTxF+v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711035497; c=relaxed/simple;
	bh=QF/NNpqeyHUuhoMNwTBPgmw5rpg8xzEosnBn6vcEUqA=;
	h=To:Subject:From:Message-Id:Date; b=JIRLQq+K8seOplMCwRIAHFC41ItXkOew60Z2AjFEeFFmZuy1QSmokfHiJfZ8sm69CVDGfBHJLdmjY6TIbcTuY09n1PUFGzWLWRmhTu96mA/G+UknJ1lfpNl4UWnKSjjhy9dnsMcUe7BDirr8GCfbDE6gewrM4BHPLf6hDQaknyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmcjTVat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmcjTVat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA10C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711035496;
	bh=QF/NNpqeyHUuhoMNwTBPgmw5rpg8xzEosnBn6vcEUqA=;
	h=To:Subject:From:Date:From;
	b=GmcjTVatUMTiLlBPlWQKXrttcC2jHb2Vd0gsCgrOiUyema87+jrlioc2QvpT4o2CQ
	 P668nM1Hww46M/GhWioc0C8uubpj+YGONXF5UwKR+UHNLrknjHwKSJsTeFWLkKp9WI
	 ABqvERnQCnOb4oDM1FMOSOVyKw8/9yTt0x4Qe8lC2A0yJj+EwAjvLeAppmRfs8+4cM
	 YTVie5XNHCILUulgWN4t2/MY5bd18R53qlrt1QlHZG2WjPBzaYerbMtzolXTVLGE3d
	 jkRb1wQHUI8VzOS3TQDBJpKrOzhwJxuqgJBuA9BjwfajJ22dkSZepF13rn+4QF1jO1
	 TN1rX7VacN7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C1BC54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171103549640.17734.1510887794286758671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312f9734019488d4cbd73c062a3ecad61679d16142041df2107e1291b228467b
Date: Thu, 21 Mar 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711035496
