Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499676D1A7
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766895234; cv=none; b=R0FuZxkUQWBlUsqf2UAdbrpviY3+MCoyEkTo3mYKeNxve1NgJtlvArBu/rv16io8zoLk6md7KJ1O/FlvO+4oFvw54oMXGFsdUWWLj8zCq0aJR5XkJbZKf2uTY/aN1UFLr9jtNaNflelFdjOihmG5DwQ6oerOtu+YOaScmak0jlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766895234; c=relaxed/simple;
	bh=1Ah0JeGG/vtNJLzppMhuQuFE5/lGmegOg8hGIG1YKdI=;
	h=To:Subject:From:Message-Id:Date; b=cRZFGMXquZdvHViWOLHOQt5F94dFyMYpkQF27rbziH56GijfZwEv78ebW9DE+rSK0YBQJhSbb5eH/1d0NgPkTydv0TzckAgY7UtEuP5zzGM7zlHHmm1cgMxnAsBaGjXdnsIw5tgQ/1uz5pbLncUK3inHPySaerdM1i8cZFCxL6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+TcMmxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+TcMmxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B6DC113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766895233;
	bh=1Ah0JeGG/vtNJLzppMhuQuFE5/lGmegOg8hGIG1YKdI=;
	h=To:Subject:From:Date:From;
	b=o+TcMmxrCSkRtocJjwEsmAPLzTkylCYIcbMWp+h9kvtvpANTklRkuH8fDLbdbVkFM
	 AlkOYdM3oCe/xL/KKMGCwx7QZGHgQ7PqF540HW4nvkXVhUjxTy+sNhngXNPbRU06Vi
	 dYcm/JV065Ie3qPQgo08BGjgVpSr/1v3hGBfLW0cyx+8RPqIIe5KeP8MdUYFc+d78v
	 NPWLKdO/PQkLQ3hxnrNv65IzsJgmE+WA63aFZ2ECQ6GKBOzrKJDvsnuTLhtT0HXavH
	 m+vXPhsIdzKFmK2uk7aV3rfPofjlV0DTNueU2eWGQmYYJ4J4QxJ9Gk/9TLaC64rP52
	 sKWBLsRjOdlPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C669D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689523361.6266.13869489390382717641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724d2df32210681dd55943e3c9cf248c7f31a6bf282f9110c63b62f62e3e994d
Date: Sun, 28 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766895233
