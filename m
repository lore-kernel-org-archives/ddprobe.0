Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA0A8F54
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751231395; cv=none; b=ZHAW+dSxEoh52egyAtbbgmbj3aGmyV6bJSPrs+Coq6k2T56PvXWP3+yaE0GAzB5fBOwyZ/v0emV8YHGvrNvALX1YzMBimDQm3rFEEnq+FLU5eiNVgl+KkMq/+0pEJALNQjaBKuwNzvHTWW313BS3g/x9IgzevkE/FCh7YkZQ0tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751231395; c=relaxed/simple;
	bh=0BKOhDHdJAkjQu8WfoZKiEZ76mFp8iTRdxbndXd0cas=;
	h=To:Subject:From:Message-Id:Date; b=CJpmQRcqexKSJ4HlAJRddIcxNDkesXlmSyv31wl5h4voBqXB342fD9U4EepRxWar4D7CnSYpM9W2W+ZtiVqV7p6QaqEoDo51UI5H4M70lFJ5ET+QL7XfcX7I+kMppnhlqQs+78DJZUPyQFM2bk/5vQoQINzvPYme2XoFjdqsZzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiVZLjbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiVZLjbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5244C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751231393;
	bh=0BKOhDHdJAkjQu8WfoZKiEZ76mFp8iTRdxbndXd0cas=;
	h=To:Subject:From:Date:From;
	b=TiVZLjbqll39ac/awDA3Rd2z6W/UVx9UmRu2e0tZ52kbONhA3Q5ztQj61VN1LKsya
	 A8I4siRC/zdlvtIjWpPgr16kL5O886IEwQL+tTuPZb6R93OfnyyJsK01dRbEqJljDy
	 AZBJTKH4cBMkHdbw/fdZW27ivDP+74lJ3tIpLgcYTxe/ZkDElOdFosmgsmaOAJk6dT
	 JTs305EEafWhKri4558MXaKTvk2VyhQPig4yu6fAfqUnuCOaVPfZ92puX/ByexDxyy
	 0+EZPsvzv7QV8KRESXll0YORn18nYy+8mJT/0/QTdrr3jLs1g3J/Yo7n1pR70iaa3u
	 OZvT9FxzgDbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92108C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123139357.24632.4065073237980821264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0138c2dc8c146a4593d50ea7e82e5fc3d43e2aab70f2896bdce78d16c25ca6
Date: Sun, 29 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751231393
