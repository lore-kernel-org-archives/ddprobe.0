Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E144689
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732682154; cv=none; b=uud9OIwxkxWc3DbdGz/ri7lBL6y7rdOvZRhRPrw7DGMyxrpSGLSX+51RKvF9Hir9HYNQVJVk4vpLuMQRz5LKH+fxkQFSEzQlsySOqfTB04Z+NxcvVbXqh2cx52uXPAgP1iQcV2AQFr4ppTtCaHrP8zYw96iS2cziIOAt9Szk+kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732682154; c=relaxed/simple;
	bh=QQmw4+jBZzh8yC19jDrG0PUADOfINJlAVrY3arOTg/A=;
	h=To:Subject:From:Message-Id:Date; b=bnmPWngQ+Nnt2UlM/CdWm7nL6eEbEXEEK/wK9ZD+BMuAbhitNl/RciOMNmUkQrYDZdNt0XUbE/v3fX1cXWWMGN0O5/o8BGiATWS9+0OhAf7RU45bbFXSbFvgv2xUQAi0KjLI6huBFXaf4Up51J1kSS6K3jZ4IRTZ/Rv+RU8YX8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARgQ73l/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARgQ73l/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF6FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732682153;
	bh=QQmw4+jBZzh8yC19jDrG0PUADOfINJlAVrY3arOTg/A=;
	h=To:Subject:From:Date:From;
	b=ARgQ73l/CzYMkdNIhsOczSh/sBjQuNjkCoS3gZOKPoZNHZJUGCy2AmFPrJmcpbuWL
	 udfUCI3+p/Jke2fOk/V1CW3LEB/ScWN8pGYg8o21o7L7xnud+zCaA1FGNWKmxFPkJa
	 p4W6jOPA4IjDw/q9+dVbrx1Ao9wwI5IJ3wzrvoJMQwNu6U8AO13nTZoNt6LXK9iW7g
	 +5AWwwFLzuqJT61WfB6qftVfO1rsaEk0qZBlRiqAsPXuuaUucIV4I7QQD2WxpjAPX6
	 gk28uLjVhYtXA3U2VWCAmwzPqjMgBCQweCmqPDLykT5kcNmEyoZheqzAuLEX7wayaw
	 SL8xwFh4KIzoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A638D5A6DA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268215362.19406.2841337184938130285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21cf262a5d76124a97bf7316e1c611e20e24928a35e10a13185fa0484683f01
Date: Wed, 27 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732682153
