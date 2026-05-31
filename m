Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E392772E
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780220074; cv=none; b=OdK99Lkh5g82dyATWkjydNzGIONB2CixnNeu0EMq0yOzxARS5tvU0wj4IVqBzBXBC9GVTSVjkkdNEPA2236cIvSpm9QODHMtBFhpPVV+thjkaG35szTeW1uN8U7lt5U0w+lRRF6wNm7n70tGIktXkjdKiw123Mq9XV3lxaeY0YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780220074; c=relaxed/simple;
	bh=LzjrjIevxsXPpjkK+YDvTvMRedblpCx1iJ/7WL8rZWo=;
	h=To:Subject:From:Message-Id:Date; b=QiK7ko/LAP3QtT1rApLQwG13LYuHWvoYJMzf9rfr75cRie7Y6vflbdaftP4QF+OSg8F+jtOEdvQC6ILT6gtf+vnFW0CIgxfNP0fVlUV2AvrkDjod2cwso/pkMesHOKyhdcCvBHsul7JQR64xqJpkkVi4JRcDtCCtyVEmH2LRRcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdZhvFgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdZhvFgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2878C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780220073;
	bh=LzjrjIevxsXPpjkK+YDvTvMRedblpCx1iJ/7WL8rZWo=;
	h=To:Subject:From:Date:From;
	b=EdZhvFgEhNlCqH8y14aT1t1TMrvymTc8RNk5kyj7yWY/+xCoYKqRg7iMuLQnSzqXy
	 szG/+pCkztTkFrqzZ/bnd+tCohc+c7cgNJIKaz+YR7swM5lvIQFjLl/qiz4zx9x2/E
	 OOid58iN+dDiSVKR+xVpX4Za6HYzfuXd9/Nho4U3eYrmLnxKcp+lqcGYc9cHAfggcS
	 H62UiGJ6GnB8JOODUmnAtMoj032ESSBxh4BFqv4HCvz4+uKdMN6OxAkoLOhLdmidmC
	 LQXmkwVlUU3rgiLCjLjUIU5X+iBoJ3K921KE92o+UoptjgD292mOY1jB0tOSBs3WUz
	 T9aHmfuW3UC0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B8CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022007368.14851.4561687524257161003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ae91d38ce2df681b650beeb2ae31b6bd1a689c91203981484ec31599168e9a
Date: Sun, 31 May 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780220073
