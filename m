Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E73231829
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791279634; cv=none; b=jJjh3B3okFfFR9T/zLtUa8FweZ+iebV4tpeZ3A3pX570+9hT7MTus7c6uUcf5oBD842kEC5mpUIxxlKb2Jx4gpKh9RskMQTGitQ9IhEadcxrHpwecFNTpagfP34hDaeQbraCb2wUvS3w80Ceu+ud/43vqhVbvQt1pLz9L/d8zSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791279634; c=relaxed/simple;
	bh=bo+qXvNHitQhQMuByedOQ51bW2Yi0UOj+WboUO7YmAs=;
	h=To:Subject:From:Message-Id:Date; b=GEJE20Wig/6sAwz8JIjaVZQtDLIJvQLWyEhCLcY2sAB2RXapJiRyFV0LEHUiWms2yFkzOOPtK8temHYUfpct+Z0GQHF30uAWzxxU/B623Zt1PDRqoedg5mkk4uACK29ul+17zzxLZQ2wqmTMttBLptJWhMZlivsDFLKYswR7ouo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hu7UWqJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hu7UWqJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19C1C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791279633;
	bh=bo+qXvNHitQhQMuByedOQ51bW2Yi0UOj+WboUO7YmAs=;
	h=To:Subject:From:Date:From;
	b=hu7UWqJUke3UtEgX9oGjq4n5EtBORoZNu0Fy/wr4Fs1ZSD9cL+g4iKhWNsf99eT/y
	 Rvhe43M/UFgKgx8ye7jHOyuo9bSlmWP688mnOLmljzAtbF03lOWBEouRg/tWiKYyTN
	 5xy1rnlZOXvcfizSOTQIBrrc3LtYSfPF7Y/Sfvd7DNSAo7fDuEahrgxN5HOW/ImUyh
	 ZhGuVbVAuC95jLxDc48+Xg/p1tJRl+sF0JpYqDXqh7tBtrCMoiUvheGDeslNeoST2l
	 dG5OBnVkUBM2IGGdeI/xl0inoZRvo8O7cFwvUkrGfhAgGhi0Aqa/Vgk/hb9teSGjjr
	 7ufytib2udswg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD945CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127963370.23282.3589725855155552120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31cd0331888e151794dbfe83e2d304ced841c695da298f1b0a9a6f3e5ba33a1
Date: Tue, 06 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791279633
