Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC8B33DED3
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761137994; cv=none; b=GhAsHX7UPCA+0daohNAtIlWq+s5o397zZKJRjxoNcxkZy/odFyeQkwlMUCdq54k8RMuOCNyHbEIO4jkzjeu+5aLVI4UcSRhXhWfEXCHxxwgiyDZ0KqnY/UuEU7uLmDZSBuxXPAZaz7ks/0nLD/47bB+uhCQAygTwUMrK/Ihw6MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761137994; c=relaxed/simple;
	bh=43Qfjf8tsFRQowNby0boUbvoFGIEw1H5unEY/RH5I5c=;
	h=To:Subject:From:Message-Id:Date; b=CA1f7zPjKJ07A6prTykbwO5PGBympZ0frdxMrAZ6u+96VvLovVNWsWi2smMFdIhyB9iC/91g4CDbMYxh20CuZtpC9QoZojJn7lkTjwK+cLTBJqZbxWVLaoefoUNDTFYXLeAcNEvhqwiAFZJRmH4o/vj9H/XJLfjX5h/5DeGOlNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cODk3NLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cODk3NLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5978C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761137993;
	bh=43Qfjf8tsFRQowNby0boUbvoFGIEw1H5unEY/RH5I5c=;
	h=To:Subject:From:Date:From;
	b=cODk3NLdxj14c+WMOdoyWgJUJ6dstL3W9gpUuw2rg1LQqzb/ulNSMdpQ6Oerszwn/
	 2gdSvznuMFgZAhtnkEnYiEAxny4LZPwMXEm+fJ99jrLVlGhl++rTL2Tr6tysl7f5gE
	 Z8DiTy72HS5Y9sVRRhm1zt7zwJrAt+PxBGIU/L+a6oJ2SQQC6qi52lVRBMmC5myZo0
	 KfXy2yj5md3NlwigDJQoIwH6YeZZkMNr6rr6pNceHfEP+fiMqXa50gBDQTUHCGnuqw
	 esYLw6o2Kpz3QIJHMBrm7247tOCxB10F1rp90KwnJJ24eRP0PcUX7wg1vUsef8E7z7
	 tr4mhgZjlX9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C35CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113799358.20316.3107056578524291003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f4f4f2393c2f46385c622dde965f60e475c9399f6643929c1dba2220fdc9d2
Date: Wed, 22 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761137993
