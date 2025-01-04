Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A3846D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736029554; cv=none; b=ZpiU1OLSSGu35dZYpbsHqICU3urktA79umtkH4MgrltD/fjbqnrq30jw3aHTGKpEbnNGVwe+oJjpndDppC2sLAtcgaxoYBTSdV4HaH9bm9XPLaG4NfFyPtaddVNx+UClC1dRp4EQqw6l82+fh3I4490U6fUp3vQBkL3Rc3H3bSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736029554; c=relaxed/simple;
	bh=5hfdkNlNVfD4Pi8Gay+HMy9htP8gQP0f0Ogoy1lyTcQ=;
	h=To:Subject:From:Message-Id:Date; b=elD+LNi1X1r4jjQnM9dmoGaqLQe4Mzikho5+1xJUDicuKmuVnOPMteW5CN019aKSM5UsZX9DGwaIqqngPMTxNfnz0QGD52/nwiHYhwDEi2/9XD2aCehH2o6rfljU/4KgsQPF0LczbAn3BFxpjrq+q1dnOsNRjKCcQFbxfgTGZBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLenarqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLenarqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8403C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736029553;
	bh=5hfdkNlNVfD4Pi8Gay+HMy9htP8gQP0f0Ogoy1lyTcQ=;
	h=To:Subject:From:Date:From;
	b=SLenarqEB4sxBd7hQjurCx7xhp8ctXlVtevp7zqCPmhscbhPhBtwHhlgAGyz3Ae60
	 /K4nJkVFW5BSmWVKCiei3ExSh+igGJlKkVw/hTqORMRJdndFp+LLHBtxZedCbZRbRu
	 arPpLeuY680umDz+dPdDPN0YcP/vRdBwUc5/yiJlBRNacaeMJjtvWLdVLZlr1d3qYK
	 b0o0S5mjgihtrWaYqzoWi8DTTRPrUpUYneoTmddObQqioT82Dl4O5gs4U2dnCCwW5V
	 fyyAK8UqWWskKspZ46YZ/tbmDOCKz5DjLZXnm1JP2X0aJolAusQYyTP1qpOkYFHFSd
	 tvgKZdqeRe7YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A98E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602955359.2636.1062207785380281957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8cd40e0a5d25415f90ba2e84e9c90ce1d6dd9a998c13b02b770690841078c9
Date: Sat, 04 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736029553
