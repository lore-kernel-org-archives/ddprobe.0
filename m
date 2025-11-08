Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162217B43F
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762606794; cv=none; b=jTOrH8212hBAo4bGbNL0RCUpFzR1qrjH7zYWzTLjA5MZsYAYBacBsD9k4lhubEhtfls2IZQ2OhX1ytWNvzA6w0K776wgDQZOn2Lim+h8y3ciHtODxsrYj6lFiczcXQvd+xmRPQP79xBr4sgwzU1rW43mlhlpcrhdXnxpwsBhR+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762606794; c=relaxed/simple;
	bh=eIXNPWTRp/+UqfL2XNFO5JEfmEc+QfaFM+clgHLPINU=;
	h=To:Subject:From:Message-Id:Date; b=MYxlBheEmBuTXl0yrsTKdNH59oJHLpL/HyUo93JgjdosE5zUG7Nm1RozL1UU7HT/+wGiXSQDtsywz6jr88Vz1N0FJkPVIhEn1flY3je5K01vtxB30J7BbnO6oqX5+TpwKnaofKHZ+IBieUT81tGt+KZOVLb44C3+H0bFY9JpMk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoxT8FYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoxT8FYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A329C19423
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762606793;
	bh=eIXNPWTRp/+UqfL2XNFO5JEfmEc+QfaFM+clgHLPINU=;
	h=To:Subject:From:Date:From;
	b=KoxT8FYc1Xe5FjhMrqm3RKYSiONVPqn0ateBuGR875wTlcKMGmHB/Q+jWUeeCLMu5
	 oF3meo5AVkEDEWSTAuJtKXH1X6q8hJAGe2OFJknl/DMmzSvTIYXW0WclNSWGIZW4B/
	 oroNs+PDO1w5uXFOEZXx70U0cxh/IN9tMdQrmpcroDK7nSmNLgwGs+w0l96creK0bC
	 YoFEA6I7pdO8yiBfmgQqbB1OUlsPSbMdkk0otOyqNg+lzt1IMe5RhHGMe+8dpbeLmT
	 2jMy6xht6vshENyuOX0UiF9OzI5xRh6dwEejLa0bXD74BP4vUffWxl+MMJiiFJAiTG
	 eskfitcMn2eLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A2CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260679357.20232.1065735640928943034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8146339c6ce9b3e1dc545e25a43d8e0f6386b6277f68d8dc30673586f22d5184
Date: Sat, 08 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762606793
