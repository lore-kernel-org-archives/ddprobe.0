Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EED13C90B
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719309803; cv=none; b=YJhpURcOYtEyJGQ2iXbdPI9YdwKyvfUMD25eVLkvBryuXA2I/B/sBHxWCCJGffz9lB73PApUvN/kPh8kSD+EtJkOBda/70mg+eTM8jOZyWJeL5JhUzjY4I1uffn4BPZYaYwE326VtRVuE1cO91Hprqd6auTMSAGLG+7D/KSi4Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719309803; c=relaxed/simple;
	bh=cQDF/45pDXtMd2jX12LmhallHNze4KKSO5RUG+4rhf0=;
	h=To:Subject:From:Message-Id:Date; b=D8HO7cnhyl4pojKwU+XoK+ww3EDiOcq0OPt3Lz1a8/1wMKu+ShRBNHkZdpfwajs899q09Nrqgq4xhrA12m4BM06hvRvQoZBGZW4e9ciYxOqL3Lc5FVXCB1pAVg5wUvGquHvRcAJy7l62M+vnbQgOZMBznFx6SOwTnDQNCKtuyes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/a5ERp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/a5ERp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8EEC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719309802;
	bh=cQDF/45pDXtMd2jX12LmhallHNze4KKSO5RUG+4rhf0=;
	h=To:Subject:From:Date:From;
	b=C/a5ERp96KIGcrwuJiIXNHxflzTAcncBZlQXlKeydL4EJTB8gd6YeedSa3tQs1gdq
	 d/DPJ3Kl1S/R0gxLfdprQ3GF4x/f/u7QnS9Vu4Lch5twH1uyO+2uIzFJSPzeyeudfF
	 E4rcGiq2twcNyhztPGf4ZG16eUFPO4U9REroohMRVIvBT4e4Zl0uXk1LfZDh362UOr
	 NWiFVoD1iDZaWuzJ+FoSZa4modqhw5hnEHVNVQFjekJp3pQpgBe5G7veij7UCHO8OY
	 0JfI78m4dEdU0jpbCDZEu4EtiM2ThgaryPWfDNs+pwd3wZTNiWean2yv2iwUwsGWjw
	 LXom69QzVtD7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC684C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930980276.12709.4760535047706393498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1630f1e75a56b71b7906f0ae5849e07d996fc07bf3b4512e9dc011658aca9f
Date: Tue, 25 Jun 2024 10:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719309802
