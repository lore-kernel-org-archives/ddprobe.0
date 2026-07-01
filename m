Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9CF21B191
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782876514; cv=none; b=UHEW3DHJEpBcqrilGfN6pS2aexCefOcU+gJgmOTeMObAncsnNekc24n3ld0+liWALIs9ZRqpdiiu8O0MUS2LuCuTgu1dRsKk6/iPzvf0me2AWvqjNHOSzs7cziTBIhxzeI3FAexlJvIepSwvm1XbIe/MZVyR42h6kUhsM82X4+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782876514; c=relaxed/simple;
	bh=yjNpCeROrAcAKro+Faxhvsd/wAkgnWaSMk6NSTSe1bQ=;
	h=To:Subject:From:Message-Id:Date; b=MxfCo8r8m40AKGyoCtgkrcdodevTKz5F+WfkP5MU7hEEhcLFOp90Ilcjhy//78Dl5AvmJRLLUxc4ayi0BpdCsPHQT0e/9xZhiVdThTO/PR3TdHBtrbygx8pF90pbLwEN+a+LQ5ii7gBL3aIxNf2gXkU7XLmUGGxQczaFPx5GLnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYMDu+fG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYMDu+fG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0669C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782876513;
	bh=yjNpCeROrAcAKro+Faxhvsd/wAkgnWaSMk6NSTSe1bQ=;
	h=To:Subject:From:Date:From;
	b=EYMDu+fGMRflRsep7QBB8nPmF55m9tORcZ1HJ+AkimSNIWqW/qGZc3jk4Tjgm1Ctg
	 KXCoHVXDFk54X8GnUYwoyx0WrwFPrLgF6QIucbaEx8MlRKs5+MDWR7eWFKrGyo1yvB
	 iVtzqMkqeJvpLTGVzKLxFZjKRr/sWNm0TeCnjJdAibytRdFa9Wc6mUzD/t5AoZfwTN
	 So9EA6kLxdjKVeLNdG2gLG+ctZ873hLGSKNyedKKeuTu+nKcTLFWIDegEJ1iJZBvNH
	 e0TNNEgKDf5gOmRF4trlypH7a8TOfxtdujC6FFe10zETF2FazIksGRUTh8nme3CphM
	 m3ZP8pt4DaAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9072C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287651368.9262.12720303146640509570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56af13a1992e876ae3fe3cc17f5e7529ed912a87aad075758a1a16668358ea83
Date: Wed, 01 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782876513
