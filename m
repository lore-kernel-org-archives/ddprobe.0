Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0CF19412E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718358503; cv=none; b=p3Pzf4nCeTzxz4S9LBpAJs38WKVjlenyiJKcIUO18tsAYWzG2HHKKwBtMEIl3QTqLqzuMr6fV8pl9JPUjH4D3BTkjEtkhVZq0nCdVhzHpW5eGylAyJJ4zRxR2GoMT3fUeyuMgX8JwgPh70uAKeCQhCVuwVOXdy4AQDxHlV0753E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718358503; c=relaxed/simple;
	bh=1bpHMu6iJ8sl7ucqvZ6X9fU5HmxaD0RfrLLVvy/kT5M=;
	h=To:Subject:From:Message-Id:Date; b=U/J4qI/1Bh5Cc6jeL5XeA2yU4/8QpL4IwTGvT6VVI+XvO9EP2GTLBMezSYSDW2fbTj56wvP++0hSTbtRjp2TrdD11Fb8DALQLRlGFnHlbrEYsexVUYDEu5i/ALwsEbrbGhCRW9LyirN9D5xBYdJ5xEbsQYuVIFHxYzrod9Hl3hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0+II/T9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0+II/T9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB39C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718358502;
	bh=1bpHMu6iJ8sl7ucqvZ6X9fU5HmxaD0RfrLLVvy/kT5M=;
	h=To:Subject:From:Date:From;
	b=A0+II/T9YDLwuoeSugUaciy/IhydKpDwW20e/QJfQOHeeGAVRpL29hIws7Z5Kj3YA
	 X6GUWyX7MPQMEhHhl5h+vNucvFPe3OzuHR7xpm0EsAtERvryFaZtqeXfy7yjuGavH0
	 q/tXuEfgX+Ya0X3l+4aLBwjoreA+sIPXhYT16Y4IAuu/ZBut+rYxdCvvt/ZYPSJ+ec
	 Nqev+w4TfXnG1U+oIwZBvFSy+549o/BPkPO2pljkEeEzu2/h8DlKiJQXY1zd+XtxWo
	 lyyKz2HiOXOvhjksVDmA8HVN7C/tBGSV0m7YT4jLlQD6U5/iC8y0ceKNHxwH8rDeiU
	 u6oT5+Y1s+Q2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AD3C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835850279.20724.8203779583342123586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57af6a6e0da9a2469858b49ea957ee9dfac2a34533337e88afdb72ebd10d8bf6
Date: Fri, 14 Jun 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718358502
