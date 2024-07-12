Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6669D24B2F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720766843; cv=none; b=BXPQIQwHX4IRYJV8QIEiric8jTx1q/fCvpOSj5tcFL9YUTaQQ/hyShpUvdp/KzbBvQkNxrsG7AQ5aH13wN2V+jFyIqwsb9QBC4WxRJDVmJ2QfeH0iGjRpJedXPWpkJPXsWTwxlfaI6KUeZT1D7MJGi7dOYi4CO9qUsZAjV6YAlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720766843; c=relaxed/simple;
	bh=uOGe8HXImqIhMGldiVm20xBjQpKWFWg1p8dU1oj/efg=;
	h=To:Subject:From:Message-Id:Date; b=KhagLjo0mi6I/Dnx6lnWZqheh33/b7/Bu5Zo1OEjVQDqp+AMr7F0MZF+JU0EP180K3IjZRADMqwBlyichDPIaycKoJtxS8ZtmUtt7wEsfNVhUXDYaEZv9Lu2DH2admaEqQMVMQLLqyTJ3j3+7eZG/HpjHvddy94RBBoftZPnMi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwMfUHnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwMfUHnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E297AC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720766842;
	bh=uOGe8HXImqIhMGldiVm20xBjQpKWFWg1p8dU1oj/efg=;
	h=To:Subject:From:Date:From;
	b=BwMfUHnxdqU8l2fi+qMyW31QDVNZZ1A0q+gyFIqO7EWal3wdHYrFnF0fyhWbCDx/Q
	 ToaIkclpG74E8rZVTP5Cx/zhyWbbbdLwqB3BUlJe3/RBbB7d6227uFHB9i/NsJJFHE
	 qO9yN5PB2XLd+CyzWEA1DaLZtLkJJlhCJ9JWRzMZ7KTZ2erhCTeubjF21HuqUwCFhx
	 10G+UXxEXG/lvNxl8nQoEH+f18y+xzulV39l2YQ/Vi2KrJTUsB7fpmaBovvqEwtwiR
	 0wDt7maVH5DMcnHAbg6+jJ622pOMBdy4vC9jdhSTXCGO2l88xtALNKb0b8AYwMbutm
	 1eacfbYJUhFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE71C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076684282.13849.1432199300857285050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28a9e4b2bb5e3884702b5c4ddb98c95f1c74ad45bc8a48f523990a885ce4229
Date: Fri, 12 Jul 2024 06:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720766842
