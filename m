Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E48129E72
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714509743; cv=none; b=qh8RzakTwbaD+vNxDIhBEAfNCb1bwow8FrvpIztwIIbSC3irMBYTOvchV5QMxfsVaUe5KveHN9CF3OSqT9540/IyK3zpBeRiMjaAN7u7YTml9wwVPkFb5CxLPIEhOxGSJKUAPwIw9ZK1UIoOSaB6PAFlEEhicSe3sxL9EDfyHkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714509743; c=relaxed/simple;
	bh=0Q67Ydnaq9OZ77Cl261UU9f4tXj+0CNKBqRwBfqimBI=;
	h=To:Subject:From:Message-Id:Date; b=ebW9gIrYL2WykgfTWqrXdRITXzqelia7LMuiiAfa88F3kLgPq+izEIExIHtckoDnGNgsZsgMFKfyX27rcKnZfv+vaP4UWe5Dwocg1is7yIrcP2sMVaKZoI0IiKW/QdPqxU4gyvsJjBrjnFmqQ3my+Ly+nXM5F5Pb65A0uRohc+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK/WFPc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK/WFPc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B72C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714509742;
	bh=0Q67Ydnaq9OZ77Cl261UU9f4tXj+0CNKBqRwBfqimBI=;
	h=To:Subject:From:Date:From;
	b=CK/WFPc+0FCRi9S9kZ3wa3UP1NS/TCAf1DFTcYs4nLHfe1uFSwUaJQVTMCONp7HvC
	 Ar0TedT5G7j3YmanniquFq6ECmg3jm+Mhq4dFXs951GjhxcWiNKgwnj9ZcErwARIHW
	 3ygSkY80ltZ/gN1uvwoJ96WjN+zk7dqaq3awjHPwtYQVgoO1JhN7L8N0bJRvyxzRYn
	 sKwDE3CPV6mc+aS6lreOO/HL3cOCz47MfJ4rtRRVRA3hYPiIiiAaH6pu4myBZLla6T
	 1BNLNN6WmoVlcTI0vGsHftb+loRa+epCa78fxLoTucjteUrEeCZVcE7/N4ymrkBhqg
	 DwNf9UUBNziYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C5AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450974279.28384.2706427813063988927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77ca5ef04912af4cf26f292f48a56bf66cff930762900df1b4be3f4473534a4
Date: Tue, 30 Apr 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714509742
