Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF6C37CD21
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791615634; cv=none; b=YMlDyjsxjSZ+b8hMd3dOX4+x30d88QnOCG6dVDjwEVlorG3zoxCR81DLzyG9zC9lYyXUxYrBs5mMIawv0YMr3ANvvH3djb7EDHJL2aXlaXvFegD33WuoEWfs3B6ob/TurjvoUUVZ0qb3lmToJg0yyq+6/dgxe6DkFbmTef+EF1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791615634; c=relaxed/simple;
	bh=XDu8qvj3Azsi4pvIhOmrQgGGuPQMsgvdVcURdIuIIyU=;
	h=To:Subject:From:Message-Id:Date; b=uJgAwuUQf5ZnmVtKfILdaTlzNEMp2pFEWHRJPj9HqOWNx6ywR8Dc/SNKxTJvp9oYf5sXlPTz4JfA/CpsFxNx+kg1WLgsQaLiNf8bxsH3Va9chK7Ie1kSL3MGI0FRq4mfozkz1fRFAyCORjGLQkcvuYLexTT5F/B/X+SJvv+p47A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWtmXC7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWtmXC7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD27C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791615633;
	bh=XDu8qvj3Azsi4pvIhOmrQgGGuPQMsgvdVcURdIuIIyU=;
	h=To:Subject:From:Date:From;
	b=CWtmXC7XGuiTBYt2YX/PcyzDc7qfuVEv0/aIZssvt+PyDC0VAR/IGeMAmiQgR5IlD
	 0US7hoP3eaYlcf0JPNgwK6OxWJ5LZ2HMa/n/FtYu+Evghdunb3P1AwbPYoWPi9kiMv
	 g7L+oNYazrNUUx29kQ2LGHwUYszZ5K+212cOu4RYjduk+iInm0ybufALMoD5EOxXOK
	 wU8pA04yntZzRxQCyHvtz8C+cMhkYk2j9JAuUxyNi2CtGs8AZnDvKIV7MwbLX1LBe1
	 mKe5OkXoySPMhaPGp203g//wunAsoUZHMIGW4yXAiF6sHN2ePtIGCjM227ourDAreT
	 5Nn1e2UrymeGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD54CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161563369.20847.8595736323331602542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4bc1a972cc2217ec11428b900db4f6f991fa5b2a716c5d88b05d372c03c204
Date: Sat, 10 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791615633
