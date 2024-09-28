Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC164A08
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727503554; cv=none; b=e8MDDcWTIuuCPMeIav0xXmFklay0JJS3LXaZr/7wA3SKfbqSCHHrlBA4sN693IgMRRNX5F0F0nYOUxP6mrar0MX4F7Ch126lfYV7hbWiHF0mVKRdlnqaeNI8Z9yIloD5R3UiauZ5KADrrswNJr3GLzMyHyU2Sbza/jVkbqb56ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727503554; c=relaxed/simple;
	bh=CBsR9UFVXTOudLNwjH0zgSGqA9nbj8ix9l2uXMJ9Dg8=;
	h=To:Subject:From:Message-Id:Date; b=oZXZQiu1gQUFdoDvd6AeAOyZP4lwfHAC5iospaj+T5FbGFAn6+9jLFE7J1KVN6xuKasXgP6j5pbDx3sGXPyu3qWLH850n2J9yoPOlqdOqsC6Wmmzjvz3buyiKmFWcFOhj+PdIvj7KyyClLH0hrbcY3bGBrDvgXIS66HhJVfkj/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtWeR2IE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtWeR2IE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA98EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727503553;
	bh=CBsR9UFVXTOudLNwjH0zgSGqA9nbj8ix9l2uXMJ9Dg8=;
	h=To:Subject:From:Date:From;
	b=RtWeR2IE3pkq5QSV11j/oDNUMewIshtjRUepaONOF6Ezyi/LnvJFeH4jWVhS6ab7K
	 I9w75aB3XgkelUR/2OytBex/uj3lkrcBPVE7zuFmrcvB2XkqfgGFsIlLQRHhYOQpp7
	 lto+z+9aKNUcwo2+lxANyM9tCnVqRmsABQZf9LAYcOjRvDCYGcMTbi6JObMCNLWmhR
	 U2llwUS3EL4+UF91CTpQ0+YlURB0bdSq6sYCNfhpbme4EG7eLZ94lZG7egUIn7B7kP
	 n9+RwTdwtccN9wbMKL9oLpYWvGJMJXjPDeZ+hiUR8k7iwNsYYl7349HUc5/Bp3sPIU
	 KnSGuvDEyxFfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5E7CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750355359.19564.11632838068115124376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ec806fb5aba20a08756e5e8fd56d2eff385d4b108896f029436eab6c8ffb41
Date: Sat, 28 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727503553
