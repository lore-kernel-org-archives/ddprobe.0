Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AE82E7635
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785734434; cv=none; b=ulbD3YEbBfV5vDc6OWTLRJsOOD9909ExeADgV/8Sg9OoZHoyD2RWaBpYXsESKUwhET78BXpWcfypKfoOjmUiS6sRpy5FpFAN3cgHmhGgKVSADXYj3/MvO7++ZHiy3Y9uaKHJk0qQqUYw/zqYRGLmWMr8ukOgXUH9t4ZduJl/34I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785734434; c=relaxed/simple;
	bh=YGW2EsxsOUB7Sp/7NqzNxK0+7vX8tt/0zUQuhp3wz10=;
	h=To:Subject:From:Message-Id:Date; b=Qi7gROwf1SFY+mTIK4Hin2gd5JyEyuFTMsg3VUoFXqPLNDUiTpYnETADB/vfqraZbhmRl/e8BmEo/sbAjzMjKO+6oGRXrmS1HKcpEqfJ1JsCCHK5S/Mb311+4PFWLu/qDIu1LVj7PUISLyZtxeAG+e7qdbFgi/7lUdx+xgyMq5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsiulU+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsiulU+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA259C2BCFB
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785734433;
	bh=YGW2EsxsOUB7Sp/7NqzNxK0+7vX8tt/0zUQuhp3wz10=;
	h=To:Subject:From:Date:From;
	b=QsiulU+yzrrDr7Y0+qQYsv+hAXnfCshfhl3p5UuX8kN3dENKggW3i1LtBfedS4bKP
	 EvOLPPQ8dlxD54hkrTzQpczVPaoWrGjazvGN7LOivi9os72wQ68XMcWqCChLKi+ccm
	 AroyQkj85Msykx3R/y/RY7kioMlDmdHZUi9lpWhAGsYUofJy2Dj2+K7qQqAYkN3sHb
	 71FYdIRZyEBkU0B1WeyqEmTd+bYR0oX6IcvMFLSQfblFzei+IMz9z+zmgza9zvkoUc
	 yUjZ9LNwYWygWopQlwCGGeUysUCyUqhfDVZXugDf871OSH8IHApzTxO5D4mpI1qFCy
	 WQzmvZ4v3A5Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4329C5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573443371.20754.1617422930655577090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676d6e0e16fddeeee97714ee7b700717bdd47eb4b693136a2c54b3a976f48b90
Date: Mon, 03 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785734433
