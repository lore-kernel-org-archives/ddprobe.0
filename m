Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA41175BF
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718483303; cv=none; b=FhOz/thPzoTkg1SELm/9B5FYbjjtRTbz071ekoTpb2TAhHbF6yRFRzA2lm53Z6U3hKK4l371NNl0qP34qpNmkRrKa0wOV37027eNI+cYMeaRoVQK3AeOsCGgXGS8XEPsEBq/tUZW1+O+4u4zBuU5ed2GKhHngWXQfn5Fk2/mmsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718483303; c=relaxed/simple;
	bh=e36m4goHJG57b22asKdoLKeBaz5NMQdz7GzyQvpTviU=;
	h=To:Subject:From:Message-Id:Date; b=qqSDYqxuzf27SfD0STLSQvuuP47OodAoJkE160pAlwmpM8H+yWSVvOryZpUl6iX/uaiy76kSQCuSl/L+LIyXSmUOrsJQXbYBz+jw1ZKr3SwiSTVEryTfiFeV9KFYQKTbuih2tXNS2lMiIe6aTQDAcXSj98levzkg3rNatf9uPQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJKYDvtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJKYDvtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5BB1CC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718483303;
	bh=e36m4goHJG57b22asKdoLKeBaz5NMQdz7GzyQvpTviU=;
	h=To:Subject:From:Date:From;
	b=vJKYDvtCvkhZ1wH+n7ZniMKRt7wV4Hgj6lVZRINTA3+7SGpPU52Ee0lFhDmvJVE0d
	 0jdoPLl+LuXe7lJRcAEtp9DL3MYnM8yQnJ4IdYLR8kzn4RC43usEFozrsMNlZ9AiEX
	 3k0PGSpHoFltNT9b6VL0f6BYxWNjmFD8aRoJGW3aXEHK2jQhC4IXyVAm5BvRXMFBYy
	 Nmg3cV4DKtcKHAbzeDBjtq+Nt0dVhAwcx71uHDCYyTUsRzrWQF5rNCdcumC9U4kW1Q
	 H+RfhvOMzSjV9LNWqJQRWLbOgNOHAK5bBWyIPEEHVTdP1/cRktA0Qob82ax/3v5ere
	 tznB+EUkPm9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 148D2C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:28:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848330294.32374.8982739085298950560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a4a048c6b039eb1c118ea2746dc0333ee0715cc15afd42320bcba6744d254c
Date: Sat, 15 Jun 2024 20:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718483302
