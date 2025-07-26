Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4AE199EAD
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753499994; cv=none; b=bc9t6AdMI4kRuB81ktLXnCD9ii4GPtpC0vSAkvF2IeOilqDZzjweIFArDtjIsHNhc2WbypuNVotmSg3V9X/PdW2yV3KEsbBW9Vsgq1vGU199vUci5NT7rdVHkWbXz0X5SolKIbkopgCXmQeOBXg9/WJ3Q3bry0t+4M8K7BQRjk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753499994; c=relaxed/simple;
	bh=sweN7TYw1+SZLZZ/se7ovnvx3ir0b1Hq130ouL8OWh0=;
	h=To:Subject:From:Message-Id:Date; b=C8zflAEwE/QI7LD0WwITrm9kG/VGFuzLbbauIHn5XndT7RFKAt6kf5d3cxjrz6OgXQMOAn5eXSz/tC+1kK5piNimvN9J4BHVRRwAY2CaDiO+i4ctBQ/ADnXBK0sql1ZLDO4CYEOE5q9spZDxrO/9Q+GPekK4/DQbaVHUmCIYrz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdemJ6Kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdemJ6Kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B8C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753499993;
	bh=sweN7TYw1+SZLZZ/se7ovnvx3ir0b1Hq130ouL8OWh0=;
	h=To:Subject:From:Date:From;
	b=PdemJ6Ktc1feWel6v41mnzuS5NfusSOo1K8N9v5NYwiZblUaW2bpPDAPLM4JqapWp
	 Em1CXJ3lf20PD2cqti6IVxZzxNRosIDUeEZvnj5VwokvX367dEJwuFByuuHctW6cPp
	 5+egRoRlAyQtHJFW3lUFvruvJHaZr1ctaBi7KVu1mK2wzq24TQ45QgzGU00DLhf/83
	 CxZW819KTaj/vwV3WPKWMyvd4xd/c5H2A0ZjCqWDiLOZda2zmI9VrUNUtNWfG6PpNm
	 nq/pUYps7gGi97xDaXKgXVwk+qTVpejc/Z+YD26ukd74Fj8Dx703KhGTLlVmjmAgyC
	 wmzsOGOj5OXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC9C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349999357.24994.14716581248763473319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9ee490a0549dcdf15602a27eaafdc9bb4420463f2d7025bd6e2236d52113f7
Date: Sat, 26 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753499993
