Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5F61F5820
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751435994; cv=none; b=usqazcOhbGJ5AK9g6IZM90Bl4Ay4g43HjItjuZINTRqe0h7Q2373adaLt3wEvAFFHeEqc0Z7nCGkEFgUF3TQ2vMjMky6DKJoUuNNBwOZORKHk4GMfSgLR73IF9CgaqoNYihTf9/OZRbSgzTEtteK0Xvs1ZW9ute1S87RUPHQoOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751435994; c=relaxed/simple;
	bh=k1nXDG7GsiIwYnTB8hLnVPxkFOWY5PjRErsuUXKPksw=;
	h=To:Subject:From:Message-Id:Date; b=PJQN8NHj7MPG5dw/iibnzoFQ3J34d5Xtf/EfZ98k1jTBD6KcAbNVPwoR+day+STzog8wFK20f1NWa2quPMO3RGktJ1sknyr/qtL4y+t/fsdKznebkeMwk4U9Y9ZHGPVnGI/OnPzW5yCnvYZZf1g4C9SNOh6evJhNxQPZXMMjgAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPoqI92M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPoqI92M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB6CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751435993;
	bh=k1nXDG7GsiIwYnTB8hLnVPxkFOWY5PjRErsuUXKPksw=;
	h=To:Subject:From:Date:From;
	b=hPoqI92Mra6ayAjzpwqo7pK0yRXRQxJMHFmHMG0qclvXEGJDlAGkQWSUssBMt4hXo
	 k8CgG4fhx5hdr3M+yyLv57i17eA7L+HLkreEyfq8PnjGwmIKH7puXTNH7nLI/HWjkr
	 VNdf9kD2arEcRF8YnMDVHoloXEaRZ5HmvI1XGOw72WJMDuVUmx4e5FP6tcTy9Sp7vu
	 eAR5kVDfaJTuDYFD+7Kn+o6O/TGc7ZtpA/cWbzQEKyuVlp6d12jaTJJQ8iWezCVZEQ
	 acVXgCPYdreiUvw4GleR57T+tD/iOeIFc5KdjW34jKJjkBDeLvbOEITXQNCkjbNKbQ
	 smSb2Jq9nHIFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAFC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143599358.928.17861047236509169937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c357094749b7e2555d7914c3ec2d31cf3da73c9c7cf301979d8bb9ad3df1b1d3
Date: Wed, 02 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751435993
