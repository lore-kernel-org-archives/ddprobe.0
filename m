Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADF71F3FEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745497794; cv=none; b=OIMVyyOg75qzbBnTX85OWH6/3oidRdfvC7Eq/6xZC2SigXmqwKj17VT+2exAddpCL8xddPW/wELan3kTgL2K1sworYt8Oewx+pcbbfa7WTh3rudcHEpU9JI7gn2tOq01bkV8TMaqEmNqPBf1qXrZVnf0wIMWk6UHXMXBZP+zdpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745497794; c=relaxed/simple;
	bh=TglbHGD1TBz5T5G34h6ve8bBCH+8AAjVC97nIBZivvI=;
	h=To:Subject:From:Message-Id:Date; b=SEu0l0ZiVBgx/r92Wc3lmhUWiXbRBYFaG+AVTXf7c9x0/32Agn24a52lrDQbgNp3BmEA4u8W0KUabmeps9nUOwNxG0w+v0BFkUeWse59BDQc7iQIYrm/QJX1dda9FFLTi68MbfupxgD+277n1CEOAaPshnu7Xqt3KQkEqu1GKLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDQYleDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDQYleDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1148C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745497793;
	bh=TglbHGD1TBz5T5G34h6ve8bBCH+8AAjVC97nIBZivvI=;
	h=To:Subject:From:Date:From;
	b=QDQYleDJOZGX8QfBdQXolUIAVtF2mlCBHyHFoipz5kZ7kwDSMGVBFsM0BLeNjCenc
	 DjG/bz7N934sG4hlTLHby/eQRoNf+9Z++DlqYHK0yiyFmW60j5CLbzKAbYoo581/dX
	 YbzIIjkOmzbXhGEH8/TcrAyygEeRU2JPwNTUBomVAnCD72JtJAjOZhYcg7AQENd3q+
	 xdAw3KpkBpM5ncGJ+DiMIE6E8UUIUA3roq5O1AovgyJZ8f3DaHRtF3Rz8b+JF7qAEk
	 068JhEwtNHOF4M8VZ7JrjOKNxwFr0jnKhavXrFqPyDCF3NddnljWTaKKXHnYxslOcG
	 gYJKQz8QkHVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BEC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549779357.1804.17486652835297488708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8063e5ff7a7ad03a1bddba6cfabcad303b531687cec2657eecbe46ca38a8b0e8
Date: Thu, 24 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745497793
