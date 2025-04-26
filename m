Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB802A1A4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745702994; cv=none; b=PKdNBb+SeWRYbki377o0ZoH1oVjY2JMYpdHPFqiddEMRHkUHGJRy91BQRcakEMhAUh7gRoklo55TrGAysaLJ67H5pxG/9BuN13m2PSizyBQbUubIvjj0dV9aqCFlnin+5peLBhENux7mqPmQN2X2E/qxIWNvL2rxKpOCRGVOYfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745702994; c=relaxed/simple;
	bh=9cCL8WBG177G1wTPY0cLYjircQyKe3BlA+sUW99c76U=;
	h=To:Subject:From:Message-Id:Date; b=Ku8KHSo72XorcJXZ/FknprRmJFCxKfxjWsiRVYsQnmXN9Eb9rb6qRUaFwqGMebKUhV8W/S0A0A0SdRIyDqXzNLnOFOx9GaMSW9z8tIO/qhqfXdi0skQS6kB43bfx8e97v5ePRBJUoPRZlegXhG2mxn9+HQ4NJQJxYmAUuBmm8Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgASOBRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgASOBRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A939EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745702993;
	bh=9cCL8WBG177G1wTPY0cLYjircQyKe3BlA+sUW99c76U=;
	h=To:Subject:From:Date:From;
	b=JgASOBRbzktEsX9npmAZXhjcqNcVRnGBT9UAngaYeMXbolORDt0dxQ+5a/Qy4xQn0
	 D+X0TkU8/ZHcMCCzrAsOSKkCxNma5s//br3gxasPzUDOKPCeu1TBczhpPeAC96OJF7
	 4O7jxKOwID9UEV87CJ3WmuTSOKkJuBueJkTr0rwsinZ4NOz0BMVIPsLSlPAbGzhax8
	 MSzwAOQaUQ8lywbWMflA0gGVKnhiVjHMJeW+quyVf4C8qla+dian8jiKtaxenY5Y5s
	 WPsWzQmlXrUByPqWMZWfHjRfymjL3PcxLkE+ElRjV8G9phd07pb+6n1IVvfj2RXaw5
	 N5NShQq4XsfQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D05C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570299358.15884.7364570527376703867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9677826ea716a80954c13d00b48035f6dfe577d1426454c543f05252abacbd2c
Date: Sat, 26 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745702993
