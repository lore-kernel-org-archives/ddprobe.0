Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D8019CD1B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781977594; cv=none; b=WZfVk47gb8ZMPtgWs40Do4dLmgRnzWVQ2ApBzn16o1jg8vLJsi67T7SXgGAtuR8CooSYlDBDNkYWz0XE0tWldkw+KAqOCKdf9WJuJpIAiJLnXiGxSl6bH1wQOWf2FOOBoXh1yySm97fL12pueBoqFCMt6e05Pdxpz4YW8ClN574=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781977594; c=relaxed/simple;
	bh=qRocIDAV0F4dihhNVtYgJLcPgg/AxFgSlKaSf6qLsAo=;
	h=To:Subject:From:Message-Id:Date; b=SXW9IEjEZxJxEAuZaGvK1GiKseMU1XHmeeg73JY5qIod0B6w2TOjwQh2c7YURCUXN49TITj9ckC4OUEtZ+BgJzh0HlnJ1SVfEPV9K9w3Zc6oqDWDdJ1Es6j6ZvbZqZBUbSDUoxhVDaBNgOyFSxWqRVTEQrUuql96QqzhROPahxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcdG9hB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcdG9hB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C875FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781977593;
	bh=qRocIDAV0F4dihhNVtYgJLcPgg/AxFgSlKaSf6qLsAo=;
	h=To:Subject:From:Date:From;
	b=hcdG9hB3aMk7OsV1BTGnatmnZQYFHhWsqtw4LsZ1R6Z0OuiK5282Q0Jke/uCgtNdZ
	 gxeLvEpW2MN+CQJjFEJCGb4WqxubaBY/EspRXT39cZKPKAIPlCfLDKkVf7sHcd3l/P
	 z66TdIQ0xXSO9pZo4s4dtGuIPi0I8BVratNpTRYuQ2ylkLKle72dASW+YGDhr1ZCL0
	 u1wkupVC9dyc2zvTr64kpoVNv9cjlyGl2suEpaHtaD6l6EVBkXTCvjKOQ4zfIhoJHt
	 eIwFGkhEKz1ZBn0hN8SEbRWs7+/0cEnOb962Jss/ktx9cJ/jHUZ9HbOis6U5g18SmN
	 NxqAiDxm/GAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC732CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197759369.24089.12289664165117893259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8dad03e6a0e825b6325a685a2881019c783f06dd26d5e9f00ee0dbda15727d8
Date: Sat, 20 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781977593
