Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF0481B6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726550754; cv=none; b=Ey7bbZz/FfFDcncJR+y1Vk34al36f25wbkNJNta7Fbd7RzwL28OmCxkt1V0EttuaKrgrZ8zcnHj9n3qZsF9idBdNn63MNTDBdNe8mQJCkLw9GBEVaDP4usO9HdyZlKDbj/KQAgjrXS/DCypWPN1v81XfN2/IbxRs0UrayFglgxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726550754; c=relaxed/simple;
	bh=2/kT2elGghFus7/f4wrjqdOCevYx23Y7Sv8/d3F1vTs=;
	h=To:Subject:From:Message-Id:Date; b=FYyg4mJtwjchHcKpmY+Os7MRd7yKY50GwcUTUdFtAH0Kc3cMOuVRhUzjsiSiygxUVjGFbAGdOclK+9dHs7bveF67p3Umrtjdoy4QmP/VTB1odtKZnFw6pZJsBSAq++gyoYPEZO+bPId2odpcQm7K087iO21qMXgbg7ENvpCQql0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1Drqioe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1Drqioe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ADEC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726550753;
	bh=2/kT2elGghFus7/f4wrjqdOCevYx23Y7Sv8/d3F1vTs=;
	h=To:Subject:From:Date:From;
	b=c1DrqioebeZV8o6K1n1aj0GHT14DuaLD/xkSF9/XQloufuSPmRO1WrwZ5cb9FkRjz
	 OSZ2fZXNmi/vTxtRDXA7IkMSPCcInb4/HXqPnSnYRrWTzcKoMYqWQX+lOi117YCFsF
	 P99xZxAQmRCrWq9o6Ko3yeJyNswe6OuaPLWFNY5BOhy12DrSmA3N9gWhXYLRs9ETC6
	 YPcB9K+9ibHB8rLgV6YmJo1vk98Q20bsWb8zGvbPZQjE1v8qKtZz5+CSI6B7Ftaohi
	 6BsUurwaNvn2bN+j2sAed7g+pFqqLg42vYObhERCHkef/WTIFCAAFbY1r6MK+M9du/
	 F3f5qnG08bGNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DEC3ABD4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655075357.29847.13318648163106271716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630f0338975eef03c63f48de8d2f959317304812519c575c675375610497147c
Date: Tue, 17 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726550753
