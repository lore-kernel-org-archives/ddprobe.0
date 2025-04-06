Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F321A5BBC
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743968394; cv=none; b=Y+IEslEeVBJRwS7jjqzBqkHFRyW3aGSkI4xC2qBPmuBGtzHCcHeGbVBVEMddz87HHeFyCNW53hqacA23cwJZfDxPnXr5C2/nLh4gbZavnNE7UeQJaOlQAnLSXfxYcHjctqk7Iuy9HI3UT66jfVOPBZUS1IpMjB3+vo4fxuORygI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743968394; c=relaxed/simple;
	bh=kaBgRFZCyJKNqaMOw45wExgyPi1tPMSTdJJBZbpgzH4=;
	h=To:Subject:From:Message-Id:Date; b=eTgPo4UJnbTfimm3d/JTEYSmTxwPEtu8Ppu1f+36ekYBUJxwn0Ub8pp0XpgVIw567z/Raz1rX71oeaun+fZYPGykldUWz/8uYT/iT5U94/si/PqIW6SV0Y9iwf7Tj6ZCZ2P8qyRMhXVR7xER316ht24DNHhXyCiZ5I9wA6yMMdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UshO/Kal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UshO/Kal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E0DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743968393;
	bh=kaBgRFZCyJKNqaMOw45wExgyPi1tPMSTdJJBZbpgzH4=;
	h=To:Subject:From:Date:From;
	b=UshO/KalJmWWwpzbqf3VuAjK+BFAGt5na0hb662xOpYk/+wrvIThHOYyRcNNKPjla
	 lsDCpOjDgrept7lDz+JHuYH744/PY2hCXGNLo2FNFZfLt/diAmex6vp6SZvQrIJOXl
	 vfQMznO5cenVMUU2ch25g+pn1XLgmIJuaLlU7RNLbajnpxv5U/1FXXo0WMCHPTJCY7
	 n9qGxLY8Fd9gxWknE5cooUfxiXJSoIZvz3VFuySGuU8bMD4mi2sy5DQnvhdSCc3A0d
	 AmVG4wITUmxfvC1yuPYrIP7lOQjf80s4NMNHpuWD/g+4rUFQYct9P5XhXZ5WN5qywn
	 asnfA5beaO/ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBC5C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396839361.4464.15063656393520547765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08280ee01e6bd81c9a39c7357c9b614473217e36360f537fda19ff3e3c644fb
Date: Sun, 06 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743968393
