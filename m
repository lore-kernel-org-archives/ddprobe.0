Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF8026D4E9
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751362794; cv=none; b=m1+IJY6nUsPGTiMG8TGx5rHa8Iyh9xdPj8qtoEXANE7n/RAGaC5XwD/7XOak/8LJYEsaTCyT+q9mGb3VqponbX8vKn5t47lRaNC+h7iuUttk8Y3hUhde/OVrr2ef6oJkVSXWJa6q3kZfnXBkW7PDhRmxMfbZgk7A6978jW8EW6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751362794; c=relaxed/simple;
	bh=DCwkcLVxY7qk/LbAt815nfFnRMZmR+Yj5MbKc+gQyhs=;
	h=To:Subject:From:Message-Id:Date; b=TR8RFRu0uFgeutjn3CS7mO6qei60QAdAvIO2dPxYhvVhjbExVOqkbpKlX/lZ+VXjPw8inB9IP+1jqPW/IfmSS4ity18UQGUVyjj/M2a+OR5WfvmR5p9eMtzhMDB+0Kti/SAf53Ls3n+AzgFK6S/ZzyfXeUDyZzdr2bzQuDNkQoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaGtrYiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaGtrYiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751362793;
	bh=DCwkcLVxY7qk/LbAt815nfFnRMZmR+Yj5MbKc+gQyhs=;
	h=To:Subject:From:Date:From;
	b=NaGtrYiY7h0OsYrpWj0wTEaq4iE3sR+4z9t1sztcCfpzVDEbCCPva7PieiGOHCYk9
	 dzJxygtgVmJevsQOZvXXH1iL0TVDssb/7/THuNfLleQDXdmksVcUvAeo8CSr0QDHTO
	 Fn9ckJuxeSAbTPbQ3/ycS4V2bQweOIM4MQkXDYSzH7kLLBSBJO71dszDEKZUu2nPBe
	 cEWYSZsOeWfeRIEF9KCT1IhcPgnycLglSRzwAZ6q9IcahyW/faHejLSfBBkTYQoJz5
	 h0xgItb5U+prdod4bH59/9K/7LymF74cIubfF14EsTYgZpPsequEIV16y7e9olvN/R
	 Uicv1E9rPNoZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5AC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136279358.32318.3249125883969009592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60db8e9615627d52e3aaa4ff6d554cc8d031abe546eb33875f8ba37662a43ec4
Date: Tue, 01 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751362793
