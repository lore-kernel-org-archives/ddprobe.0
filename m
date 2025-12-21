Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2D8194A6C
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766286834; cv=none; b=AFug3hJUuiBJ7L1bPIpNWtY6SqWlWyJL80PsJ6tGW1KjihuV4Jl3tqLSty20ENT2eRc6WKvw/fRF9W0ZW2T+G6X8yugWVIbflB1c8xkHipLvYtfFZydKBKt47CVlm+hExJMDw4f70+4pHTpAeL3P1rnwcMUOWQxHNhb6luuD0JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766286834; c=relaxed/simple;
	bh=mAW4QwKjger1v33OQPhG1T3u3GmHpSsbQspr9GlBkhI=;
	h=To:Subject:From:Message-Id:Date; b=QX/aEFySUIXFQMoyU5XYmmDYJBEouBBqcrKIxc3429iZ4+JbENsrGQSOomImyYmkzHAc3WcoRiE2CjWtkkJPMQ8dEPwuOpGbZaYWuXG/qOrkHgoF+ul42Vc7B7XIL3o9h1ucS418lyFt5PfbkCpsxBeRudTn3nkkcg2Ck+ALgJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh6MeM8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh6MeM8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AEDC113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766286833;
	bh=mAW4QwKjger1v33OQPhG1T3u3GmHpSsbQspr9GlBkhI=;
	h=To:Subject:From:Date:From;
	b=kh6MeM8LWSxN/15AKRwztDSVVU/eWj5U5vIf9ZOJ6o7JaZEp9eTCf8MGd61xBaLei
	 DUvbB8FbvM2ogfLBUwiqzipu6L0WLElA/IEAmEZcFyNJdY7Tk3azVFSxjDKx/1Lr4p
	 4wl6H26t2lMrYGZrvXCb4pPsHDBvZ7CcoBSnR0ialHsnSmj+izUYw4XMhhurx+5ZwD
	 I6CIPOm/Bui/AJMNT7+iK0VZs3E0FY9mINQzktb6Yk1SgyWnlMzhgPf71PkQRN+tUT
	 rs8vr/Mz20p2inN1DJORC+ieSLmFekFzBbu/9yieTaXB1a2rKnGrkH9LkorNneeIL6
	 /SnqL7Bmsx5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD1E67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628683358.22360.1935698936598463176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e07941495550614531ad5e0f33229c0c7ceb5dbacaf3e817a4056c0f4b9d286
Date: Sun, 21 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766286833
