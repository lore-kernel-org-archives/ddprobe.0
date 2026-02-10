Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0A2F49F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752034; cv=none; b=qixNLYtYcMhnYlh++MD+CuJrPT/8Fzgwg/UarFLOWId3/kOnm7yyoLUpFr/K1tJrlUQSocdLBc0EkaChYg8DxPYA0D/JtHnK2eLFfLw1P4Hy5ZLu7inK34J7rn5qrXoO8FCHl7u9XzDIPOMoojuc16GV3sNJ3PXexItYS6/XSRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752034; c=relaxed/simple;
	bh=HkTqL/SfyjwTazsUs0HhCj2+oNHpGftUMiHXB4NVbn8=;
	h=To:Subject:From:Message-Id:Date; b=U04XQf1U0MKxY/0GB183rw6nadlbv/FYMEJeXiYASRUKk1vvvazwCODFj+RgQtWdT5WWC5wmhHNYE4PqU0iuHXkcsi/9OnnnkMQAsd/irm3xxgsSUUw/M3qSsSSHdprepsHPyh4XSTQFwcVLZzv8gCTV5c98lSX8wR/m03lz6V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u72VuLry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u72VuLry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B426CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770752033;
	bh=HkTqL/SfyjwTazsUs0HhCj2+oNHpGftUMiHXB4NVbn8=;
	h=To:Subject:From:Date:From;
	b=u72VuLryUjjeUtzHTbdPLM7Eq8R0+NJV/BgYjdwHDhPSUUCjWBymJgHXCCMDpaO3v
	 epoGAjsYDXIGVbFI0aED98mfdpZ+Kvo80wUsCFijWReVa2JllNwmdphC5DtYbfgk9M
	 FQ9StlG8mPGAMxjYl2+01QKcZuKOgVbWIfrhD0jtUmyx5It21Nr/EWPF8kdbfAROCF
	 tn1Z7i4JauQT6ErVZ8k2Y4OSExS+JmWGeuTe4JR9bw0n2Zn8KARqCaJTDjNc3gJVP5
	 cJlCv4V7LQ7qZH+c8md4LCj1T0yNWRJLw0n6e+C0H5A2i0wYiXmlvLZB7pxrDBz5iu
	 kiwm9JrTCZFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C3CEB2705
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075203361.10872.11879089331789065798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b25471c268232bab2ea7e979eb8a076a51a37ec96fb314af89a2881718ad1d
Date: Tue, 10 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770752033
