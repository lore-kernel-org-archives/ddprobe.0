Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4829F3B5306
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768428834; cv=none; b=HH7hMz+3OMA0NgJgPLRfIi2F+fuyF7ZmpX92dkgJtYlPacnKU37HmzRC3J6z3s9kU5zekqfp6C6yZEgs0Hebo3ewtS93ZGf9nusG4Li7M+Kj6I0MrDFkirdDxfJOJt2rwqVRvquit46iApiOxakn4EgCdlHeDrf9VoOLxbfSXf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768428834; c=relaxed/simple;
	bh=L+YkFOOevgTn5XE1mp7AEj8QWCZGecO06hSsbVp08ew=;
	h=To:Subject:From:Message-Id:Date; b=udmIl/Tfab90k89l3sIiaJsFRh9N0h/HmD6uO3xeQ0qldK7vSiN3Jiq3ZrWFKYzqyNxzNl97vogNEIGWF02CLDqup5F/OVD8j1pk31hPoUdSXdU+mSx16NvCWoRryeSYVQ57mzPLEfky8oR6XhB5rnIpszp82gL86ixb138+Gyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMaoyTGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMaoyTGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F66BC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768428833;
	bh=L+YkFOOevgTn5XE1mp7AEj8QWCZGecO06hSsbVp08ew=;
	h=To:Subject:From:Date:From;
	b=UMaoyTGbsRVWEZgFsKTVNwhU+IEE4dciJUKlyKKdgcKofduAk+wQtDGL/FrSc8pQE
	 RcjtaJzfLxarv/ou7wF54MMKYsn8j9CXzhRaRNe9SuiiI53XX5UjflbfyxcP3g2f7L
	 hx9QLDAjdWylw7D7uShRi27fPNP7DHUiJGwJJpeWfRaQkONmkZR7hfGAe9+msS6Cvr
	 aExRXyLbMOWmbdG7u7ejn+FWUUH01cXJ3sx0DqoqIKQWHCDnjkeDAsozDzSjQBFs12
	 fHpxYTpBsTnSchCO+go4t1MZkdZhVelyzml3ShsDLyoU2ivGZgqgWcchgeR/q4pR6I
	 b3hmseoO4kzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90846D3CC80
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842883358.28457.1295521933998065812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9546cdcb88c7c21c2ef056fb1199bdacebe6f4facabe09aece949fc6e4bfcb
Date: Wed, 14 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768428833
