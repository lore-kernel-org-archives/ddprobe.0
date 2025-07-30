Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C032E0B59
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753897794; cv=none; b=ovlJhUqFVJQIQ1/8Je6KDZ0YXPK+F+IOq4X1R5O1vttjT2HVngD9R05WZFAvgwgj4HJnYfMXn8VjyZ5sONmNL2RxRa4KH57okauDA9lv9OyzDOwwAl2fc+j0oDXwyQ9O2AdXPAr55VeeTfDP1ZHfOI308J0piDRtGt3dDhvqDcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753897794; c=relaxed/simple;
	bh=aZDZURgzKNYy2QdLNxxqKPa07amdQdrUDZ6P/28HSAg=;
	h=To:Subject:From:Message-Id:Date; b=ZfZURoqrv/QycMCe6HBE1Rb/OZ0YeB9kdDr0wNGRwGZ9vdGUrims8qNPAIpA6hFC11RNkmunpNF9gdtHkqfipkvYm5uo8ThkBa20jksHgZR3lziXXacE0SEILNRakV+ui1GFy7tlAb4zbaVI0RbsoThooXbUC8nmEXo+ZPIRMNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzStzAvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzStzAvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753897793;
	bh=aZDZURgzKNYy2QdLNxxqKPa07amdQdrUDZ6P/28HSAg=;
	h=To:Subject:From:Date:From;
	b=IzStzAvLJI5cmaj1jBBFIBcu9xhCbiE9h3lM44/GQaeNCWgv1NyKL01+toGbYXdie
	 higzTrulgyaYkU1nw6EyaXIBnyZ4OpUroFLJWNjJuUaxXKl2IULhyrYKW6lCrO4++2
	 nFmo52Q7A2Ebst9SiBJ6Y4LFj14D20SRvKh/LnlQ0XEpvLPNANlIs8SAG4jKcA4m3r
	 RXEpeEdcQwylRq6h8vmgJOMU0v59tXVd7WgHnEqwlG18TM2Uvj5ZPgFeZRvGz6KhNx
	 ls2etl72TyrsEvA+HUc/mr9OfswZ6yFTNa/7Lit4qaUPg1HSNyNd7UdDkmj99nB+x9
	 JjTlvIs/IBv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90079C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389779358.24037.6907650138732401553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf915f6460984cbb6ee4aacb3df647a0d02902c7e9e6d76beb67517ca7ca1ee3
Date: Wed, 30 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753897793
