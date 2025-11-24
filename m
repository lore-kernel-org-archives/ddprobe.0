Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0996614B96E
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763994714; cv=none; b=Jb46quk0m9Dw2q6O7cRPmWDVi/35T7QNGO6KZApjHVFwRxTto2hhjSBNlRjSxp/KYVeBKLnhXcu+NW7DifE4d9G71+cEpDewO1zPdeSDY5peqmyl/D5+OWJuHuJrFNPNVUhgIsh1djSPBgxfv6pqD2pkV7E8941R54/7smwZD40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763994714; c=relaxed/simple;
	bh=m5CymnXzu2khGsp66V3p92fidAZniti1ueJ/HFowwVw=;
	h=To:Subject:From:Message-Id:Date; b=mEe/DVDxLAT+selS9gCvu73JPdF0f3Ao5YAvcVZyoXi2DXdUkDyYV5jaCuz+JRtHAZu8XnnO+TnwzFtmOb+zVdKmysiNWLuV47PLs9Hph91dTPmw6d4sy5eRuzdOW2vrC17xZ6N5AXa+qxSs/xy5umvDIt7CardYlM/i3ArdWb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rd04tjO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rd04tjO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763994713;
	bh=m5CymnXzu2khGsp66V3p92fidAZniti1ueJ/HFowwVw=;
	h=To:Subject:From:Date:From;
	b=rd04tjO8zhMoSOS9sGi72q/t9Q0DnerkMasULXlN6bA0C67wqN43AMAgsMKcgVVOG
	 04vnZXJtfZT4ZqWETqgEQUhBWEK8IVO0V6WHrBBtB0q5RUk6DYOtVq7CyNykRP3EUO
	 t62lZ2hkg7skv628Y8/DXsnDIlQRu4RSP6EGge0n/5fKa8sB03nchA1lTP457aBISZ
	 19ntIIsH7T7Q9hetBp5ylhiwC28Xp8wYfnxMqUz6DLm6LxBtpgJZu2p7TUEcwCHlSy
	 agFAscYZy6JgaSpt8/62GGTUYGeZfsdL+rBXA1W+Q70O8QGNrxh+Lipu1vxHczQuXR
	 5bJQgXliP2xGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EBCFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399471358.14705.18168377531738172749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7b2f042b43efce46aec5c0bae14ca90c1a707a722755778982f369f15c1c91
Date: Mon, 24 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763994713
