Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C776330DECB
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790989234; cv=none; b=FFNzIXVTdIXcP1bVIXIBtenZG24eQnJjNiKPz/smDi4tnBmYvXYJXstSBr5bk0OazKVCNlryf0OwjZezHSnfIFRfnig3pnt8V8gE0kHKMhY6aX8oQxAjNjd/G6mrPIRNEUB6IpZAtz/8ZmU0522GXXxBhvAeD2+pUJKovB5L+eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790989234; c=relaxed/simple;
	bh=3JcikASnJJ8RMARcX5WmDyhlAKYo3BgV8kaMKCcxPA4=;
	h=To:Subject:From:Message-Id:Date; b=Q+Odc1p6f5he0wha6udjqG4qj4/Yzz8geN4hnPNXB1JxX0o7oH6I7BiAe5IzL7jVNEwWdebRAlXxPbtTrFik58/SA+Ajl2/gdEzTQ6CwN+0U9gHMaWol8ZSdV655utaPJgFJl2MCPjwxFQeO7Yi/qiAzQ71icuk+JLiF6rc2PMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+1KIFj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+1KIFj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FD8C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790989233;
	bh=3JcikASnJJ8RMARcX5WmDyhlAKYo3BgV8kaMKCcxPA4=;
	h=To:Subject:From:Date:From;
	b=j+1KIFj5gWsSdwv9odQjkkZHl/Sb1EedeWA2eC5vBf8knrtZnASTpe7dtbQHzB4F5
	 0JRLqLN1dV7T/R99Ns8KOT7mvYaS4RluteQsBiOmkMZMFZqj4lakg+Rpz3jp9TdcPI
	 4llw/ExUwr+yWpX3KlRKO0Elbe1/a9uCrPCTuOlOLe/ne2u6VW1RPm1NjVucHsnlO1
	 zXbEuq4Qdv77Wy7J9eMYyNXJ5FvoFT1YeMta+t7WHTK3+FoVnreZjuUtFFY8Okvvan
	 QAxULyGXO0A+2gDYMi35BDvXh/MeIFsVGgbVRv+hq9XcJohti9vN+SD8Q/LSByueP1
	 Z+D6DD+YrRpRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B392DCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098923368.27563.12228416855967344993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88436ff9bb866b00e860d2b882a18d3b7cd287fa1b7ee06def51b1779f96eef6
Date: Sat, 03 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790989233
