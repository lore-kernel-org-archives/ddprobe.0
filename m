Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98162D29AC
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762262393; cv=none; b=L/gbOvLK/QrDUWqgSlJZp+9RmO0w7A/7BkTKptV797pUw89CVXB2PPyE4vHfIVEmRP5F4sqeKsorVpNjtohxNSi8QXB5V2GVZNQP0uB3F0miKzn7q6YPtzwnQB0iZL2gM0tiMClP7WrnOxDV2tcmIL2dTcLrwqS1jmFSJpFUS8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762262393; c=relaxed/simple;
	bh=8JHAiKYK14vhRZtxes9dtEuP4c4LjuBFQNjox9jopVY=;
	h=To:Subject:From:Message-Id:Date; b=nIQaNrFlEZSVloFVAVN6jp/tY+Sc2htQcHsyuAt8J/C1moSWS6wmIF7kZv6dLndPKlXS/Dx5/DKtf+2FO7JCB1IdAlIOsgITU40OPUlhz3ZpwRa4dhSB/OJvsZ0grENQVE9EmtETLXmET1oWtcJiOdhY9Y8ze1kcSo7I5rPZE6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZXUuIlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZXUuIlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0BFC116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762262393;
	bh=8JHAiKYK14vhRZtxes9dtEuP4c4LjuBFQNjox9jopVY=;
	h=To:Subject:From:Date:From;
	b=bZXUuIlC8z1XTva+QTMFACG540Ti1MkOJGILFZaMgZNzGpnnWFVZiBUZ6ArcalsKg
	 ACApozVRCHaDJMHs6HFMKWJ05WeC94hdmoWeiJ7L8KyER2sFbxEzrE8sS73vAcrSxL
	 rv4KkKwDp5O/9vK/cMQpBs2IeNQEwRKMlLXC+QYXYFiyaElV41q6Ubmrh9V2JD/giU
	 UfTlNOycO77FDRj1e2Jw+2yUZ96jqf+h+kzkZG7pAsq5Iu4p1a6stwfhOcU2gb6SCS
	 CvQ8n18N75F2YMRLhsUA+sQrcMlanW0iyxLQfoPloEf8n7lFTWsv0RJh65d+LYcecI
	 fkfB/PvfyYzNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB89CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226239358.27547.1415167645780392466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36e3ba2cda2f2120dd72585b8521dcc7477610722efb026f9266745a7d848ba
Date: Tue, 04 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762262393
