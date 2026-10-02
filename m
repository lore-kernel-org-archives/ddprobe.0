Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E91B42B301
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790982634; cv=none; b=k4nJlsNAHy956E6iU/5FW9JIQszA/AeTDTsI2cSJGD6fkayMoobbrs+wWV5VZs0q8dQWsOR/pOYOHvlzkzSt/khth164g9TvBAxOs5UEmIMTRJvjUrZDUhCvS6LhytWVoVnFCoEYnRMrknjKg7ginV8g0Vmh0twkTIZ2BPy3fVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790982634; c=relaxed/simple;
	bh=CGSWzXD0KeaUjQF1d552xufD58JqZ7fhfuM+6rez0sE=;
	h=To:Subject:From:Message-Id:Date; b=kpJjxxFa9ytAankgvLAXVQGvXlpMnut2pCfIuEo5oZTrzHReNV3TjY9s9qkBIakeXVMP3EgGfE9M030PBZFMDpvTIt07nSItJ9DcFKSGClnjbcjhKk28c8ekgaea7gMLf7RsTMo35F0a/jEyj/pEHa7RkBvUd3ksqEaN0/4vs2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clKWKV+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clKWKV+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0E2C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790982633;
	bh=CGSWzXD0KeaUjQF1d552xufD58JqZ7fhfuM+6rez0sE=;
	h=To:Subject:From:Date:From;
	b=clKWKV+q740lxpixfwMqAaru3QEwILZ+M0CiFAmSIGZJ7aCtfcUj+nzhAJC8vN+kj
	 hPDjQ/EmkrHvg9wA/mbGBhBw/0I28AecjmtIZkn7QchRnhng+NLODtabCsJv57UAnA
	 RiMBVU4DgmsRmMpEywfcWHiqb3h8DaI/3w++kYJ9uGSbFJc0is2/G1xUU2AhJUI+X2
	 mIEnCn5eEdbEkVODJAzhY4gv9sJ/yyUcKdgzVS1VKUJp6ZxJxnhjWZxT2ZHU4NFDuG
	 6QIBTXFVoHF3Q7YjCj3xEbIsmlbUcv2Inixtu0siKTqIOkdn5rWfBNtkXJqkjGJzDb
	 1VLZRH6xKGoXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965DCA5FE3
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098263368.11449.1923163277200613006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba96cab7391542f5432514271acd723b48b8618a49f8e41d93bf15a06c027430
Date: Fri, 02 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790982633
