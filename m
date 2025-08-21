Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C105C26D4DA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755808193; cv=none; b=a1CMhAL/m3YlRz56STlWy1/hThM+LJ34xf/+tYpXxcgOhQ8kzPLh5H1MWeKJQSAJ9PicGcRkdHsLUn1U/dnwameo2L9UdPBUQjOUARUlHcww6oIFFiy+pRFaNVJyiiAalqBGQoLQAl/Vb2dBtVx9dPRPtkl0GMyUH1qHVsNtZ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755808193; c=relaxed/simple;
	bh=voONKHhbEMjs+HPEKnCSZq8VUEm+2P0sLNbf7Xx61mc=;
	h=To:Subject:From:Message-Id:Date; b=Fdvg2P7g7wm97YvRrelR+oytuLaW1++qFLL393kiIqL87JvaXNGKjADa+JrXI6jy5gcOlS9TPlQlFvucvl7aqbIFUXfcdoMg3mE21s2zLdWHpLHuCEvSHvEutWBBM4Fms8FPc0y93HGFzlLY4h8iN9sLWwRanEDcO4e9AzqJhxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR4UfRdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR4UfRdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F999C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755808193;
	bh=voONKHhbEMjs+HPEKnCSZq8VUEm+2P0sLNbf7Xx61mc=;
	h=To:Subject:From:Date:From;
	b=rR4UfRdGDGZw0ax+F2N8+vED/9dWd64rkamV1fVxanL3ZwhIp9KgdjGVAgwlNJj23
	 6vPoaaT6x47e78ZXfN0wypO601G26gp0B3T2M0jGLtJP68dKw0sDqHXGZs+hYXV+Yp
	 cFWyNs8ywQIfMm7DsIqEm3MvH8hUbhSCJir2PiPpF9492RBnt+jhw4PlJsegOTqz4O
	 3GM9tUVmySBoYj8ir4TW1AhnYfdTZ4oH+p/skfnOtY3Ti5qz4Tz1GzxXEsyp4M+tp7
	 nSxDWyVKRbSr18PQXTjiIJVgA4TYvYPCyg0IBFQABMxF52/DvFyf8R0I1lO9T32Yag
	 0dJp3szQwsWGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC14CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580819357.4406.17735929811101032220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f6d0802463b4a3d2b92665a47bc9a66ba8a3d7291fab19ea0e90869274e9d4
Date: Thu, 21 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755808193
