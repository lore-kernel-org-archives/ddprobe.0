Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369102441B8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781185594; cv=none; b=cliMAhdTYDol3ei/1N5nwRNkMY8PeR1z2FBy7tZlW6tzT+N3Pa9oza1cbf1O76y9solNpxHFRqFpmjd48YXO70SAROZy18OWh0Vj2kN3dWWBcs8CwQdm/GLoirH6Ujz8neGI7OlOHnlN+XEXwztJQWgcE/LCdqu8hKL6QRWpzEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781185594; c=relaxed/simple;
	bh=1kr0LJcSsltf+EZdei0gzuKdyTXYi0sKSfQBu7s+ZkA=;
	h=To:Subject:From:Message-Id:Date; b=RW7HJ1jYOTraISN8ozrk4yDQflyTcK2HXok28p7Mr9aCBZPw1yl4b8w07bYWJ84n4Wr8Y50n5eaX+FiJJsNOHoqVyMqWFY8dTB+HXCzgevqwib3VT4bvq3Q6eqlvnvFDaud1yNmOidanE+3T66v76Y/wmJzWK79nHXX3X48r+i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jef5Ea2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jef5Ea2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8179C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781185593;
	bh=1kr0LJcSsltf+EZdei0gzuKdyTXYi0sKSfQBu7s+ZkA=;
	h=To:Subject:From:Date:From;
	b=jef5Ea2tXmwLg+tZTuP9FDs3Peq+3p208UFy1diRXg8cExl6pgH6H20w5HRkyKDV5
	 4AO8tdQ09ronl2UDvM/LdrKaGVxqGBFtx24et7NcqzkAWnaPtU4c6cSAI9hRAAU1LC
	 J0OJo0y1KS49XsL9SJULpU6PyxNLOpJrc+dfbMDBZ5qPTj1RWo+ykHdhjO7C1pOz15
	 eOYI24wcF5MC4iNQjLlwuqA3w/TmZ4Cm/MHT9WBj8+ld+H+S1Ya8k7bSs1FdBmmREQ
	 4McPNlCo1IP6wKMM6rtIm4XAWL82E3cJqYkVGmrN7Clq3L8ozdJeXuSIOfle2eBm0V
	 PUtYMn3tS33QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1BDCD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118559370.13372.2613823833446814606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b592fd00416e27b86ef727ff045fe6ce0cc4a5210d1b5dfac0af7ced3f90f1
Date: Thu, 11 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781185593
