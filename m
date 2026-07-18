Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5953138E8AB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784392714; cv=none; b=kGwAp/AoqlcEpKa9dXlQwN6ljSyRRjCGVJrjaFGduhoAhzaAOEkOf/jFcWOvJOqW16PIo1pWFkH17CjWaCryYYvpbbVDmYyYfLbRlWrf8oz7wG6E0ki8knE3kS/ahUDL8OB7o++MOEoymihVD/yeYfNf2Yb2tLzHvCCnnrXe5w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784392714; c=relaxed/simple;
	bh=s/iCJL8p2ZQ4scO5izFhvzuTIiKeVmMVzbrf5jkbkmI=;
	h=To:Subject:From:Message-Id:Date; b=lAvDC6X4Gp0pDUAKjH/e6jwmtOu+Tdz3BArbh3P0d9st50q6AKDfWY26mi4lGzkCUtPKTqxtn+SJoCTz3UxOd+UbNyzsvMmWQxcz8VTRs12IwT72CCokD9gA1lzlkiS6yOuQIojWYWNhyRMgEZFe2y6ca/PLfq5oRYx+SIqFlVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBXwUQ0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBXwUQ0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF9FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784392713;
	bh=s/iCJL8p2ZQ4scO5izFhvzuTIiKeVmMVzbrf5jkbkmI=;
	h=To:Subject:From:Date:From;
	b=RBXwUQ0xUbuyoUuWUy1UDx9PYBUfsMYJR1G07Y91U4XgKFobyrNMInauBaLTWujOL
	 unl8SEwNIci18l7JGpAUweOp8C7e+/5hoemPwSbKNq8S8RpGZldJ2HwnpiiQEwFjhh
	 qfN124PVgUwzzsgvEgCj27rUdQ0tttBvY5iEyG47oV1tpAB+mtO2zECz7AT8QUXQhP
	 NJUzcoNG3Q3j8NVer75o9rgLZX8HVU6bkvUzlEdpzeAWXJUzKYKrxRTUf6c5xfmzST
	 wiXqLBUya68+PVQtc+DJEBq9a+Ai96KviPZuKeIJW0mkE3aSicC8c6dk05YmLtefPy
	 N+Ive96tjVkAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA64C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439271369.7539.14863179078300072242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1880246f2cfe91fc09d474c97d6b6931215554753e3fcbc93da1951332dacf
Date: Sat, 18 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784392713
