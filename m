Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4DD3B9D9B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781514994; cv=none; b=MH+W7/zeVnAv7JCzU7WsWspsqHVEjCuQ9BCobOxc8cQQmY6I7QLifCjyOso/BCQH6scJ/97VGbTIVMrjL5yYWLDtaNS3BPLa3KGuGb+b5t0NqHl7y7rePUx60vYAqaFTP0KfhyRqvDCEtZaTbuUXzGvMxs1zTksd4Z7dC3rW1CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781514994; c=relaxed/simple;
	bh=+duvOCdeRZRiMdo3wmtKYzwygGLkDpo7rIvdrYWCQFY=;
	h=To:Subject:From:Message-Id:Date; b=TFUIcda59k2QZF/KIMdOhlViBY1HS2kbWygu416VHDa9oMLV4ito5OVRRSTGGJlloTMVd4Vy5/lrMyqdh7SzwFK0Ac2jIG9Z0NMc5B4l1/1myqrM01ZKqmghEMEOq/08D763UWE3x5itjgekPWubFVW/eXBfZOzHeZthrDTZTlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsnMnozl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsnMnozl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D236DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781514993;
	bh=+duvOCdeRZRiMdo3wmtKYzwygGLkDpo7rIvdrYWCQFY=;
	h=To:Subject:From:Date:From;
	b=OsnMnozlNuw40XhKVraPHkAQdrlkcUcTzupjGFxHbP8o/ceuAIYe3dodS1geneXe2
	 DgVrOPl9EkvTClSX0Z8eqoi3ojStkQOOuy8BujhGRsGVebe7mc2ZwzCWPVRnNuKdLF
	 bUNcf1obO8M1ys9bTcxPn2s7FZUMjbm4YP6x9sON+J2IroZfHgckL5aRqttkSBP5/R
	 y1o5kpq8uFuMHZU1tKLgnzoluLjx4I5ShnAFhK/kwjOuNUC0iybmfn5EIQ50gcTyES
	 kdjxzjQgXRsZsrj/Q4opw+XtKIp0eb7WrloT4otuUTwnzt/m4D0jb8V4FYbHaozA1f
	 obZq56L2zh7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A5CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151499369.26124.14478001887501051037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1207a83e6dc93b6e0c337a8628e713aef18ecdf6ff873f3b122db7f9833b29e
Date: Mon, 15 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781514993
