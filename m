Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D34B168BE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734570954; cv=none; b=YXzjEQZ0TVEdhkHpypIgHPWfWgfFTEoMmIaSgkf92zFie9N7C8lIvkQS71qMV5DvJ8Asss6MagNm/+FGzB/dfHUzcEsSi/1OPCNhjT4bCxIhhqhyh5yLRkfVWNyt+dbosQd/vtojfveek34wQ5DYsm08ZEJ+ZTrxacy3LfE5Ynw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734570954; c=relaxed/simple;
	bh=PAReeq01W+OgS3fzXbXG0JX3VZjuThj9dfCLd7Ft9E8=;
	h=To:Subject:From:Message-Id:Date; b=uaFNxVqOtsAA9HLqp37DNYunSnRe9Md9a3tahRZE1+9WTLy9ibGEHNjUMPUIAUnCj3ux8YpASiqpzZt6BUBR15kK9WmU69kwL92UmNGcVEViEpOIq0+q9tlnYSpnDs1nopx0znkQ5DMmx11Orwh52Tn4s4Kxl/i/l7lylXm/bbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJ41RFNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJ41RFNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F6CC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734570953;
	bh=PAReeq01W+OgS3fzXbXG0JX3VZjuThj9dfCLd7Ft9E8=;
	h=To:Subject:From:Date:From;
	b=HJ41RFNUfyWCQIKs7pi8H8j8PYxDRKfGm2jtvQr+VBr+k5qztNcUmW3U7cBKGONVi
	 8AbMmZLe06gQvsLFJfe8M0omTUFbQ5QmjOZFh9+6he+c+i88zvFTb162QZJw6cZLqT
	 IkBOaTPn1+0pzl9xzZoX9/tdQbRVotO7xjf+64XnqeAD3Nj5uziZ8NKrON+uQVDasA
	 7UJwLyxZSp4GJeaakQVb7tPQysfWUiX4ZD9RRlBGRGhaB8CBbrVqLJIttDCKrSR7qb
	 sTCMd+t15Yy8b7P26OI9pzTJRK2aDudaHQvoWS5e8Y+6fjcdJtToadHRWfTq96nrJM
	 dvTtwbvpIYkuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A6FE77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173457095360.16640.6623983692677190682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2e51be178e5154ec381ada0fb7e1a479c57d21b84c45b55390f9ac7af7bf51
Date: Thu, 19 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734570953
