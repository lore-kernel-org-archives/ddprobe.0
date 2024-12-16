Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB3DF9DA
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734357954; cv=none; b=G6yU3timBtju1xvHhLQaIvZ4aWzQXqjTxRXEk1/WERKbsu2SnWja9Tsw/rjquoyzDrz3GdlqAatjIvTVuer3ANXMFJF43hOiyruy51ShWLCMFwQswFJDeHeQPA25U8Gt8STc/FyuH/PKD5m4FZooF4Uedoe0ulIwoujVFsOeXAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734357954; c=relaxed/simple;
	bh=3m//MQDrOzyrjU73gayo7FdrDOqZsd/9VhhtmMqAnHY=;
	h=To:Subject:From:Message-Id:Date; b=f4QwEsohT3noenxmj8Cfs+72JzDkUv2ABMPFlTLRuNP7yngNTOwnfehgMcBFkgaeEHJtDknKNl0lUEywXW93NSGnwu105usgeTfpZqIagKjk6QfDgDq0n0qDioGo/46f5TL9slfqNGXgu8sxu/Vbne5PH02PAKMzS/iaKIvC5jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/preFpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/preFpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EB7C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734357953;
	bh=3m//MQDrOzyrjU73gayo7FdrDOqZsd/9VhhtmMqAnHY=;
	h=To:Subject:From:Date:From;
	b=g/preFpBTuP0Ti8DG4X+iAonVEt1O4CdpN1pHjm4m5C9GrLWAiyBu9tiALj0eblM6
	 RdhgfP49GzkEVjnxMmEdzai9jWiQF1wmT+KFEB+JKcWZjFuuyVhSRriHATsJdhWdW4
	 c2vW/0TLCZGQd2kpoDU1bofxG0B+fnOT0HtUBu0MxlOIZkq3phGxDhWFthz8hkh1hH
	 3nYxZvIjMJ0c/1xFmnBq0G/MPNuGNNbSqyXsNyMNiA2omvB7RB1HiremDL1C9q4S9Y
	 Ob9S+X4n6/u7DVPiFycIIRrsIzqWBMdebTGrQ6NGaZll4rkjthCkX/bcjrD9lE1Exy
	 M+HcqICq5cpHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C7E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173435795358.4159.14648892751793367994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1e58dc659d0092d3a9a8bbdb780b708c6d45585493aa8ba2154c08eadbb4e9
Date: Mon, 16 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734357953
