Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404241F3B8A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786677034; cv=none; b=cFeX99fiiyliXqZaoiAL+VN69izwokqncY3yQQr2VeHcBFs2ES/vyhgyMTv9vO3arQaiWXnVREypL9jnEOy7fxMxLLZpPKKV/YST5h3/5VeYPvD9/61dCb3ITc3BJpmCdaIuthqDvmV021gFtaAF2viwPgjNJ0MU9a2/x5AUMSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786677034; c=relaxed/simple;
	bh=Q+rzhbqTPpiboCZGshRCzp0xWSvcvMd9CQTed1xuc4Y=;
	h=To:Subject:From:Message-Id:Date; b=kNkpqMvhv7LF+edoSCanxeNxaX1dgwRXXBIJXHDTyXLroDeXT2R3IxUIX8mntYr9ldTSDd+Hl0dfwN15RmxbnRR5O9hS+XClid8PEav5UG36NGJJi7c5tILnuTe05SnL+6vhN7P4W0QlCLsGzuNHLV1/aLRk1K5LXs3TxgHUg54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzSF91gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzSF91gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D124AC19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786677033;
	bh=Q+rzhbqTPpiboCZGshRCzp0xWSvcvMd9CQTed1xuc4Y=;
	h=To:Subject:From:Date:From;
	b=ZzSF91gtFSPXC2f9hXl5kgPVjaTQ8oP1wKESLid/XcVvoIin6o7JB7Ear0h1agxhZ
	 wRRXzmMnIoq/sEQUo5JAMUGBmYar9uQXOgvpJ7T8S4xYQVxy0NpQLB6J2FD2eJTDrl
	 fL7Md3Q6J9dvqQbwhDa4MZlT39UjxwTykqlnXTi9ip8tQuoa125MwZve5wkE3ntNj+
	 kmLNgWR9IJ9h8LTa7Px8FUTKvnpLbEMe2oUJLdsadriJAlZ4UaxeoapW5oJ547tLIp
	 Sxu5A9JAYvlv19HOS2dgTLDVtQf4AC3URiZE/grVvbwzpe0LLi0a3i6sqBmF2vQAg+
	 2CITU6sj7GvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE640C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667703368.22306.3359556345747574682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a461386049a3199bcce3c81ed85553dc9b9960629add5055e3ad88bde22c667
Date: Fri, 14 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786677033
