Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB722D9EEA
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764942774; cv=none; b=NoXWboftDKykavpifMvlywhL6ixkx3BL0pIlO374KF3TicHYT0WBfdfL+qNNZ52FSC+XVwqFc3sUyifsQZI9+K0HNkENXZ8IES0Vt5vrDiCThHE7muSA6WBR//t4QqtF7CSlOD0ue8kpz4yebXSOW8Z/MrMHtt5fsEj9/er1u+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764942774; c=relaxed/simple;
	bh=a4betsOjLmaSj/hESbS7g6dfvth0Igs4g+zIDRsgaLQ=;
	h=To:Subject:From:Message-Id:Date; b=lt4y5X6+ORO972/TecjNQISTvEeDEXAAuUvcO+LjRjnh//WxBN3rYEKdb5xIxHsX0AfG8GY95xW3iJZ3uyQcuQ0YLF/ihW2Lu6gTypIWxh71XMtTcqFNSlAJuf6Ncu1jo+aqEyo4elTZbl4XVAIqrB/ouQBOe9/DsZQxzTEgNAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF3UGy2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF3UGy2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9CCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764942773;
	bh=a4betsOjLmaSj/hESbS7g6dfvth0Igs4g+zIDRsgaLQ=;
	h=To:Subject:From:Date:From;
	b=qF3UGy2JVTzokW1n69IamtLADfBWHaOATQjAzZNr96Qh63HiBg+x3ePY5bSQVtwu9
	 RJJ3/+7+YLwYe5eK6EKD7aXeFctciJr7uEpqjBFkVfJwlzInAPh+8yRrQIdmSeJ8qa
	 osnzL9Va76O4nu9aOkHvBK/ZD385FiPbCSISxZFwOTkYEGTcr64zVgCJALrQ7LaJ8l
	 /CVUVvlmXEeSK5YBziJgZ21HxXCZkH7jMmeGfO3IZQ2gxTb4birvHLXqN8r1Li8fk6
	 TNfDYpdfXVUtS8v7wgGSsOF8OUI5UWD1DZPiRm8RZ+V2F0I8vKrB4pgjH+l+DceZXK
	 /TlTh1JvymRTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC8BD2F7EE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494277362.11191.161380835708784745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8ebdfc361acb4dd8a30bb8364220cc768c72cd015675727c66b46a57df4d8e
Date: Fri, 05 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764942773
