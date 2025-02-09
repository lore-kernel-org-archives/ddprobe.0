Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C711D934D
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739126755; cv=none; b=KO3KzyoSloqoeZt4c6T+L+bEg5JXVhXna9N4XppRfh7W9AksfmEZEfEctBNWqcFLTYsjbcF44GjNWadfQTaGHgNPs1XxT35+9wzrpPYm2bZv2UQW6L8PqxfMeTMWyywztCPsMCcgZHTzYeP3JNXQMBzYwSRc/3teLHBP6+/zo6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739126755; c=relaxed/simple;
	bh=PdDfKBNq4vzgsAglzvogTaHxdlDACtySnc0DQ5qD8n4=;
	h=To:Subject:From:Message-Id:Date; b=mFP4aDUF6uIntJi7/IdSV5pQrexts8hK2xOrAxLN7aYjTfYgV0Fk8P8F6YMQ9k86Q7BMgi/Rmn7ZyJglUT8DKo/xQYOsBSIfMSP2G62QRft1WADRpj1Dpndo2gjLi8VQr8uLFKEiKzdc71rPOJg6Gptl7XnqVo9KxWSUh+mAcM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTgfDMBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTgfDMBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5EAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739126753;
	bh=PdDfKBNq4vzgsAglzvogTaHxdlDACtySnc0DQ5qD8n4=;
	h=To:Subject:From:Date:From;
	b=oTgfDMBFlP2Alj4bCEXD9b2qMig7TNUpS3c7drumHQy9R3zvVhKWNbHp6qa77x9pq
	 SBW7dD1KYQL3tfbb7vkMsFpdfWVWk++wglPLM2dwZmedIg6g5Zre24VwG89YkAJeVr
	 8OqR3j6/XlhcwsNcnBIaakdbc+WWdvXFUzES89jSt0CBSEQn10BZE3dw/qGhEEk4pw
	 /xIizM+6OOiMI5dBy31ZsX4QkQ3ssVvXv7nMbF6dR9mt20wwSXTScz4vsIPArBemLC
	 rXnlpQk03r8M5OdLuZp9Uu7r8GSEyXWLRMOozFA4aBLpnAzu5G2B1NF78YnAi1oM/M
	 z7aqlwlKKhcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634AC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912675360.17484.12060447714748488791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108cc4b68fe1237a69f273ce01558b5e3841173ab8a3ce1a87ca22f9ee55a924
Date: Sun, 09 Feb 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739126753
