Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E5B1F9F70
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767747833; cv=none; b=AoWnInRIzvfErJkKYNUaFC5w+0+aK3EEevc7Q33i3+0/Msc+8AOeG9mgeupOFjydDsxkJUvsuSXj7N/V+qhkHzLyZbYW44uVr6pmWk0S2Jwt3mh6IYAwUh1QPSTSUbneV11SS50e7ZglntG7iNAfLZsQ0PjvNE3AExoVmxZIodw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767747833; c=relaxed/simple;
	bh=UbF6aWA+dDCWzy2rm+bRADxKYNqgBgEOy6Jf5DIiFiM=;
	h=To:Subject:From:Message-Id:Date; b=sr38EglqAnqJ/RB4nMHOMl+IG1+bjRwgh9cH+YW/pr9R4zvaqjQ93FuQuOYg2fakI6F7GQ7DzBQ9CL4sDDrlsCgHFg2jZlDwBse+B6a5bQ4HeBDwKXrc4eTrgujZ6jwvLzjxyz0R4npQL7Vufz7dYbUxui+Ckq/MuyPuunpuLvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMHFQkW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMHFQkW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B45C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767747833;
	bh=UbF6aWA+dDCWzy2rm+bRADxKYNqgBgEOy6Jf5DIiFiM=;
	h=To:Subject:From:Date:From;
	b=HMHFQkW0S1R9Rc7BvEXr2UzSRbjgEulPjXRFFHSWnBSoAAfCNtKiioguwmJwqaUc5
	 8tO46Wlt0TOeribL6W16CLHXvVwdhuBlmij+Hvtde3PzUM3os/J8w7uHjjlZNDD5BD
	 +/+HzHy8Wam81Aw9+g6tdt+fedksFK8HMTO58QKWq/TKoMI19cWVI1z41QHAAXD5Hv
	 je05+EaEadahcjr7JPBt3aYsBp8jIetoR5+DKBUH6MNChUlIRSnK11rVUesSNa1WXq
	 GECHpL8I7d8hcGZyoDNea82RxuK5UMdKs0lTcxnzG5yigxMUwXAXy+bKSdpokhsn6O
	 tHCCMIwP7LhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6CCF6BE3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774783357.3004.1482698068706681499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9415e89ed4f3a7189589e1db1218eb03c4b624117364ad316c29f27adf70a3f
Date: Wed, 07 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767747833
