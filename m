Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9BA1A2393
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742077795; cv=none; b=ZxAola/HaPoUVlJ1LHN26ugATbBshpO4DQgWYHmzMI+LySwEngViFzOCltN564soVtcA21BZp/gSCJoufFCwsAvcLnLUpVxM0GH+pqvagQcUYXtBc719Tsh6LnHghuDwtmSqrV2Vtu6pEeH0t1G8VnK0s12+etZ2LsbetuHeBaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742077795; c=relaxed/simple;
	bh=rBSavfNjoXnmicJr8dy5vPc8nx7e+O7cRpPnE7Bxung=;
	h=To:Subject:From:Message-Id:Date; b=g3pXO2MZuMLijO6D1gWrtcTqQzYep460d8W/HlUO3GhxJ7yg6/ZmGVEkHTfjoOBS+CW+7xeF/m+cVBhGtdGogedLeNEfFAtsjWho957E0ZmiL2+RSmL6YSQm6M88fb2YJtkEoCq0+gW2VD0GOUboaF0UWw1CCWSXiviVpBNSwsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mg/WyJ7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg/WyJ7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62F2C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742077793;
	bh=rBSavfNjoXnmicJr8dy5vPc8nx7e+O7cRpPnE7Bxung=;
	h=To:Subject:From:Date:From;
	b=Mg/WyJ7nfRydGDooCUonR3BWCFQfZ9c1xJ8dtLDpqpwm6g95hcK9S9OlfOG5mO1z0
	 ygn2dDHrStteWdys7Qb+SIfkYy6+/kBKWxfklgBtPT3ov2RmO6wvTtDkKqyItnCeqT
	 XKNRlLu5yPXoJFUcxhE7Nt38YKNWEDNylHDIl/VSJZJlSBea9A7Lvcq/fc179Hniw0
	 8XE0gdlWEyRWNXMtLar6/jDnZRdH0p7oFzObbvsBVsHgJNXXMJq2aqSogqMcbunplo
	 xLAFgmeVtvbRZNopSF9j/2yw8Hw9HJ3At4wDU6SHQYfM3f+ekO+/eD4eBFG6Ve6VOG
	 0zGEPa7igTdCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956EEC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207779360.12200.13313064416116528405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a76bc775614901a79701c59bbba2f1223d1f79c50ad04896c03f33332797df
Date: Sat, 15 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742077793
