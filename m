Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4781A223DFF
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757842194; cv=none; b=YuAv4oMuuwdJ18pa8wSKfy78MroDrXmARtBoPIrclz+6YmkVvnBMoOzyO6+LVCAmhHxyo3oBlJIEr3zGLCdsr65JeC9ebkNUDqA65k+4l642FMuDvaUC35EsqR5nIjvt8ebchebOuqynDBxJhYMhK3NnfPqyOAUFH+kxn3w3uUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757842194; c=relaxed/simple;
	bh=MUycP15G4AtJA8kbDGJUHDzpWku6vs8TYiC8hFavZHY=;
	h=To:Subject:From:Message-Id:Date; b=JqU1VtJrunKLe3hyGqEAJTTCO4Ba3xwPy62SRyUpb3YiktNYzfSW8/0RDv3FOShbay9oxusq+OQzTJxE+BtxClzGPnALG8F7B2gvuSMRyzb2lrr8fkWwQQu/xYngodoWC/3oVtBErIAScAKuu87WT3Y2wYiP5CI9s3bew25LXFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFKv5yK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFKv5yK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757842193;
	bh=MUycP15G4AtJA8kbDGJUHDzpWku6vs8TYiC8hFavZHY=;
	h=To:Subject:From:Date:From;
	b=CFKv5yK77RxsGTwVyGRa2UDEHRF8yLW3GRmZNdZMIFj4mOMUoMrsYdURIO0EBqEQ+
	 dRN2JpG58M8FrJ9MJywqU/l/6iNi69vZu7tQeH204gH8tmTIuG0DwWtTRABCZ/3Hk0
	 Ou70ImBxzE+jQToiZ+K9BBMRscIBJiFAH9GeOWEt2tq7SU8hr2EZcCfvXtTzqiQ8dR
	 VbR/A3qxKdYPVzf1wJUKCfATPkU87b1kODVCQS0hu9rPdesBwqQv7G/R+D/Cj6P2io
	 +QQ20VxI2GEK5wcZxvmA+ZP/W9EWHPWkl2eqoKcASeZ8EtYieHgxipyq5aQjhsiWNY
	 4KOALN+OBXLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBCCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784219358.13704.13538547249858828904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923e55ca419f87b01c94aab011cf412943899364863518cf8430da938e62bf96
Date: Sun, 14 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757842193
