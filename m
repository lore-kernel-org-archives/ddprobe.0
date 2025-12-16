Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCDC3C38
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765845174; cv=none; b=YYqLlTGv8dgqsV6b+VwF6eSN3mWb2c29PBWtwpyVNC4o5EVRFiTIBllkrefT9BvAoNm2w02lsQaAEOpJVAiEdQhlRQEcuCXjN6JLdMtu0+rH+TlbSvRnQKzLRKDVW7npbXteBbzbW4VbD4E1dsyVE+7weUAsS7R6B1J6WWou9WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765845174; c=relaxed/simple;
	bh=c8WbeK+zbcvc8KjlcGMkioYg+wQDZyIziTONGE9RKAU=;
	h=To:Subject:From:Message-Id:Date; b=Jv8xKJcGuz15tOdPRPKouGVtF3CAkZFo5d6qnUNHx177nsa6dBiMtjsA43Jnc4l24JVcommu93E4k+q2OlNCU+VrX6LUnOECxc+xMJySz22Bav1OmA4WM/C9DQbhEMNwZbArRfT5WD3JDXZjMYIuQS9Ak86nwkExVCJFH1zozgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ln8GlhIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ln8GlhIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765845173;
	bh=c8WbeK+zbcvc8KjlcGMkioYg+wQDZyIziTONGE9RKAU=;
	h=To:Subject:From:Date:From;
	b=Ln8GlhIJ7AJAz8mPIRXoOa6h3Dv2KCGaE2/DAGtaJi2RpUvmjTGCLwQA/YqIS5S7z
	 1kJEoc3q/pUKsCA2PpE0ESQxdE+V5tH38h3fHMYzJg3xjan54OXHr5owPlgS/S/djq
	 z0JH20/yWrZuOfvjFncQ50lreripSn9lP2BCqEkXm+lWzq1BajvvC16UbN6d4547+D
	 29AMusz3ZsuMjdJZsw0sJ+YoK3cnE+xAPMNtR0zTISFr3nhKaWvb9vPbKBs3XMyknO
	 d7jufQYGiUsE5TwZCY5BZmEPpGTX4RXrkyg5EfFhEcVuyFUp16HZdsMC5xZhg9rsT3
	 vzCC0JcLz5bJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F51D5B87B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584517358.24819.14089733258139710004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d046d3128e2863f1bdb0f5155e42ec71a722ce7f447d98336505695d0c218bfc
Date: Tue, 16 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765845173
