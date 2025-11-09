Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247E41A0BD6
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762720794; cv=none; b=jGySxYjO1sZvkqnt19XJlhMWPsm5b0+jg6simmgRESlhnNeyrQpht+E4k0rznDK3ShFEugde2YBFJE1p1k5nkRzXwbYTOp0Aq2CeTuWcu8uIjLTQ8RVgAdCAVz4MX873uOxj5n7UfCIeWStjpCZgQUaoxkUxWkw/yJCPq9/1HCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762720794; c=relaxed/simple;
	bh=rBa0Ls1oYuHpwWbmtfR4TiZJ/kcA7r358gpJ1/DFjWY=;
	h=To:Subject:From:Message-Id:Date; b=OK8fVfKd/h+DP45PpnNMGzNmwTB9J5iIpdLYGNBTzzDJa4ynHC4vysaHpF+tECM5wEduVeuVpYFrQANCgZjmLgYNORyZgsjZrT1hhFjaRCoGT+poOiT3bMe7ljvMyMzcbdSRZjbE0OoCRdzdnxojNLry9m+8+zxm3I8etYNN1Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jG5Zwjut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jG5Zwjut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEBC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762720793;
	bh=rBa0Ls1oYuHpwWbmtfR4TiZJ/kcA7r358gpJ1/DFjWY=;
	h=To:Subject:From:Date:From;
	b=jG5Zwjut9V+myZxEmgVzdA5bWKTzvgG5eZ+3SluT+1HzBWinZuyxrpzDXt6pLH7Ac
	 6qEE+MUCeK9E3LrFj7K83yCb7MUIvfW3y3I5gtJMaf7nadGCVd+attE7Re0PphEIET
	 iKyP1fMX+AyuptceV8ZzXTcDWL6eT9M9u1mWbKetjlmHnth+zwmYrwf2PYEiRajtd2
	 c9qW7UDZT09eNUsiLlQKDWS/RSp36Myc4jkt4Nhh/cFVTMn4KB9jdw4W3LVFfT7aTe
	 h4D8MUkjmagav1iO1zxYWiX+hwqZtx0Jhcv1L/vobKbCMup54vFhUp7kEB7CazuxXm
	 hAOnEIHre3bXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99558CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272079358.5808.16637906608000032853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f020532ef4e4854b65022ee800dd2f027815b1e49b64ad28c657e56c5f9146c
Date: Sun, 09 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762720793
