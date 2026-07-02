Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A00939A4B3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783014514; cv=none; b=gnkh7PJd0pMUWvplUaH/q91Ajcllm76+4+rYvkm++9r9TQz/2lJS3Rp5BfgXsoWrWod/DmgzmHvPUP34lsYROE8XEzQj4COzoWyWlU/1614zhBAbpi1HGb6k5fVjCQPBahuvEoMYldqldy9xMnP7XdqFDMCHKHpBYTkTtoNNUjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783014514; c=relaxed/simple;
	bh=l/GzTpxkVboQ+pBeUew5TUYxfJwuXsznRyVrDgDD7Ls=;
	h=To:Subject:From:Message-Id:Date; b=g2a7H29lLDis0mKKYPFmPXghRN7ojg6pNL0/Tr2+ZXryrBi54st14liM+kqKv/v5GWd8iHqefJN+90QncsgRVexmberemejupzrY3zzaZQWXFPNCzIHbuQfpSCyc/qDCfRzbBz00c4yd/Bt7aIxPCOwfKUza40qpeMSwUS632fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAHyidGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAHyidGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB1AC2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783014513;
	bh=l/GzTpxkVboQ+pBeUew5TUYxfJwuXsznRyVrDgDD7Ls=;
	h=To:Subject:From:Date:From;
	b=sAHyidGoHceWJeYKao6cON2th0BuPJg+gCUwrd1H0C5bFYikXqT7nb90bFKvlVxyK
	 v81O0rZO/UqTxhhIDvl8XIUsA6zU6BiwO2jDaHSuLkt3S5wnNNtMOds2yqgphTlqTM
	 eIY1MICp+Pumatf7KMgqiR6Br5r62DN1YtUSVnYE3PvLjN8eXrbY3dCH5CzrBtvVJR
	 /p730/PuBSAh27D5TtBCBB1SbYec959HaCd8znDh7tGx6pDC/zpHnG0YZyJrUvC0XY
	 TuN0WrplbEAjUgsvGulSmP9ga5dgZYGxuIq3cQleBw0dJWwr57nABQP4A8pQkHpPu/
	 Xnk76FnRHqpYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEDC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301451368.2863.14055680465038960370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48fcf377cafb82e5b32f2f8d90e34317ab50b6198f7102515639e63705bd692
Date: Thu, 02 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783014513
