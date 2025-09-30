Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128C33054C5
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759251594; cv=none; b=d+Yf40pvLECM843yuyu9fwaUoIKd1xff1ttu8XrCDHpyTlxpjU693C55y60drl73sjVixejmDxqRveZYgzwEHHJSWCDu8I+UT35kzduBBmdm9V+brAKYGlJV8dhhd7IcJnBBotNooPLJHtPtGgkEubsGQ0Kt+668uSdsDBllaCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759251594; c=relaxed/simple;
	bh=ZX9SFP0mVKCO9pQ0ZtrjjuEEppnPcD/STj9kYzizB4o=;
	h=To:Subject:From:Message-Id:Date; b=S7DdvKJnA7wz1CWNJqp/wvaIPFV6XPp379CayKBqEP4zssJlES67B6J4rwVGeYcKT32pgxlALZ7cA2EGoNqLrqSUCA1xDS6HTHTJltk9W8s4M9hiqoFOveUkNu6IknLXye+wD+y0ljQCNWpdaEBvvF+EPsUya6g+QkFSWzQ0P7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei1/RVoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei1/RVoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFC6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759251593;
	bh=ZX9SFP0mVKCO9pQ0ZtrjjuEEppnPcD/STj9kYzizB4o=;
	h=To:Subject:From:Date:From;
	b=Ei1/RVocM0keqXF5UuYZ2ZCHIap4s1DrlK+0lLTHxrVKHMn693HyitMXnnFy4QZ0T
	 MfbPqTl1t/jdLNfVW8xP0LG+Qy5Hdfc5HP9weJnwkgFRycFynyeFAAthNFd1V6Lf0F
	 VKSVPVcQBHQpZadp9eY+aZl+dCajybVvh7LVedO7q/DOM+IymF4krL3fg82cHv4GNe
	 N/BiIx2k45jjZ2uBA+C+pz6OruHRapMfFc+ezKPSMghne1jcWCtYBH+zXKWskP7jCE
	 gSA6erz3mSDbKuS+K2ji+CblH2XyijJpCZsf+0v9WVklR9brpH/RLjrGv3iPsXh4A0
	 +w4kDwCK4Lq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948DACCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925159358.14588.12279612840601629271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd8b4497afeb341864e3909195ed30bcf06f9c4bae8d850668b4341fafc7494
Date: Tue, 30 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759251593
