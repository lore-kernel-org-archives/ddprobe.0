Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D4137C112
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788693634; cv=none; b=tyiBnq7wB06E+OUb++NJnY2cI8lbq3n5EdmBfZdi9rj9Nq8vttP1qQBAuBNmj/zhmN0gSBpCwvXk5mqwhIfLyh5uWfPenlEW2IZc/UQWuPM/RZgTgYzgGuSF1N7Nl2Uy3v+WCbjgv1U3Aah8VvehemUanw/i3nVzdWv4GOYPmco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788693634; c=relaxed/simple;
	bh=z0KrGG75H70CgHeWI5mFvtd3Ev1Ia4twj97aao8emHY=;
	h=To:Subject:From:Message-Id:Date; b=KDnCzUJMh7QEjufCxlG4V//KdByhPE5j5Mbi64rw3AWeFDlz3hVLOxKRXrE0rqietHsg2RQJ3fAzVOHtkfBEkH62cUDESt95uXjms0ECg0I4eSpr5VmBXYaI3F1GNJswL6g44Da5KyAgIePpVZWHB+ZAwPOeSdhfxvYKZ0lknp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKKlZBVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKKlZBVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E8AC2BCFB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788693633;
	bh=z0KrGG75H70CgHeWI5mFvtd3Ev1Ia4twj97aao8emHY=;
	h=To:Subject:From:Date:From;
	b=aKKlZBVo+xbgKenNsqQCnRfGx7zUe4Q+CjJY/2ljtH36klfKAi72y73iexNxxP23b
	 WF40I31G5JzIoJCyYpKmepJedUAs1mPThXfE01HQKXg65cZKAJz0I9zDBYVqqf6cX0
	 xRUMpmp2iyrJOtonmtqavUSaS6yQXc0uQAuBFNF9zvfmN5T49h/TDGFSIp90UQrrue
	 z5WegtvjCqVaKG3H9dmpR4TBoTlenUp1TJzWZD93iZtE2+qamj/OmFVBZks402/Mmk
	 SPJQsz7q55AfzS46BdLOWgaRzCYxG4T7T9kJqjg+FloCf9vYVIITpT5QO593mxVqSZ
	 qvrNETsNFTx5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39C2C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869363369.6654.16931223057680390052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4de000a1a07cc7a1f1d3f78e66140ac5cc367480368620a30985e8ebc56bb2
Date: Sun, 06 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788693633
