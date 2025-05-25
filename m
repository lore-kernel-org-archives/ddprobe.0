Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F179225D7
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748171994; cv=none; b=u85Y4wFnrnejLs+4DihbhuQpIzOrJazsamwshexjxGvntCB5jkFfGhumFJgIpJVQnv/FhSMWfVq6q/R3vyJcDuS+rbmU4fXWsmAu5KOR36PV6rnb4oEapz8FLtvOKZBlTO08rzoxi6LZOxnW+0dVcxxnToOJaUH6wtMUEFt75qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748171994; c=relaxed/simple;
	bh=LyJNQWuvDKcZ1Xw8xjZHKCCaFXY+u0yJOWaZuqHra58=;
	h=To:Subject:From:Message-Id:Date; b=R+CstTHptyWIVHv4ELyGGdm5VY6q7sEv7l27KrXOzYTnccT+TTIZ7y9ENUC9ACTGwCzsOrOJLrxPeJN6nf78xJPOgGaXHl0xJPCnNMISHiTDmo3mvXdg3lY5Jxwn6kqZYJKA7JZxoQoNr2NeFd1E4A7WLSm3uVrshOdCEcMO1hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qt8eW7L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qt8eW7L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89CDC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748171993;
	bh=LyJNQWuvDKcZ1Xw8xjZHKCCaFXY+u0yJOWaZuqHra58=;
	h=To:Subject:From:Date:From;
	b=qt8eW7L/Dk+FIgeic0L0qhd2nNXD9xT5W05lq54LJmUz1CDK36MxHfZ2oKdedJ0k3
	 /oWBk+NFL/BYdBn9fNMa7fuJ0morxTMOAJ3w6NzR9sIT1BrJE3cU75fMrO1kztM0s2
	 5sqKCMvpP/qdGKW4n/Tm5oMbtv1skpYwEeNA4wIXAfGUtgvAJZIlwU14D9hoLUtURP
	 iIclguIt6LJFQ4PYSiOccuh8MMDD/vQjOToncvLxMNFDtnLWjNpI23bwHheHI9T8nj
	 bLVA45m2X/GuZ7DMw+CZk2gOrbTYAq7QN2cPXzSGJrGOMivlH0ZZy1Jo4+8ZVeQrEG
	 ixnkOK6N8RFRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251BC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817199357.21632.4981689733675171632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1dcf1c301131ca936227826ac07a4bd99e7af8c85be23cee3ee27c7a465ca73
Date: Sun, 25 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748171993
