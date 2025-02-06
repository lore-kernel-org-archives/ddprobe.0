Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58348225A49
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738824354; cv=none; b=iMXuMOZSfzZCBUWYhtURqnIo9ndd9FvEvNrATl5xwNVVWBBzykS43T2/GkYa1NWZFuOHiu+FkGX6biYmC1tKM/39Lu3Z1pWlT9+uSbe0/MzD8e0ykHn8JsacoVDEZ1LmUpj61s8uQKAs5DXfOXTu4KPlZxyKdMHICzHl8LbRUiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738824354; c=relaxed/simple;
	bh=ZgOvfi6rTWg2diAlqaRp3XFfmf8pDycLyTq9UF3H0+k=;
	h=To:Subject:From:Message-Id:Date; b=FCoBmEc9O9vnxLvHlixbd/s0EC8KdILBrhpH9qjVtqcaRRBTAstIqJaBsCASck3hlnV0LAoWXwJ9/t4DujZoxKZ3QHWCz5h6EiURHQFYRLHFpw1Suty2YPjDNHZbDhf4mDJAaGFrGjQZav4LIXu1wU5PusrFdHoKbQskFkli39o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fdlt98nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fdlt98nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE893C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738824353;
	bh=ZgOvfi6rTWg2diAlqaRp3XFfmf8pDycLyTq9UF3H0+k=;
	h=To:Subject:From:Date:From;
	b=Fdlt98nLQkCDkJpX4i3n4LJewCpZ9l34NVka2uFqqxRckSAYHFzQqNKU9+zxwY7LP
	 NYrdSjALKEyWD2cvql5LWGkhmDy+dT1ZyAIHxI75N7rNw/oUMfZX3jbTkzwIpApMI8
	 qJYkrRqX6kvyCwHc2wI9CCafb/eeHYn8EkbnQjl+ZZ2HjzZVgfBHdouZKAfqbwkNFR
	 o1vucGsf7+JRTYJ821vKQmRcZBc91oPTOZCBLu02FHnwa2FTWd6qITNxzxRDYboPFE
	 g4ieAnmjFSzt4UVHYZJalVFjVsbRCjG28+Du2UkQOtMyvkzdv1wbXPacF+6WMZPGd7
	 hT+/tC4Lunxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A203FC02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882435364.27129.9687078746626436130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c572d5a0b056899ce6605616b4b6c8263712d2e8b1d1b3843a61457a677048c4
Date: Thu, 06 Feb 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738824353
