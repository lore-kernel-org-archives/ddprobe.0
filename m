Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327FA18A6D4
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727687754; cv=none; b=bVgEY0puueOGxCT36QRdOBwZXcsY5gL2aHTWdRWMyfS+/MXFYFMt7Pj/Nu0nr3fcjLXqOUspbPM7hug9IgsWiXp1YuRFeQzMt2Ylkk+YLnVt6xIEcLITXpTxAYwquxM9vd0jPwJoebCKRo7U9k8ZgeiX6csXSGS0+BiZvc9WjWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727687754; c=relaxed/simple;
	bh=/gauLgMcSBhDSxNro+ZEqrQhmQLiOEsWOvvN6ATi3Qo=;
	h=To:Subject:From:Message-Id:Date; b=pPJ3uM5Q6W8iOmwcLgkXXOPCYanipyXP1HkowEmldoa+dT89xEhABudnnFxL797J1kbObWYv9lNxkUY1TQFUO6jQRfwcTein1wEhmoc5oRJQDymzBmXmDD5fL+JHHuty6tBOQP6aFTJR6V+t2P85tvzq7g37eTUBdNbKX5phPvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvG3n4SC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvG3n4SC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD46C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727687753;
	bh=/gauLgMcSBhDSxNro+ZEqrQhmQLiOEsWOvvN6ATi3Qo=;
	h=To:Subject:From:Date:From;
	b=XvG3n4SCBf04U4EO+xwzhLWuMhxrCAJjkCrFUzXe48hQo8cBxNKjSt+6UHmQsk4oQ
	 S9wlsLKwRqBu4rmtWbadDV04t8UsLsv5VHN+ahRo6MHdggwsML3WZfkxceT4HdZd0k
	 WdxCe+k4lt5GbWJnIKs2Jvthkd1zpWF+3LXAhPisr2HWy5kr5jdlL0td5nJ02ofTKS
	 desQJ+LrID42SQOraZWbB2bzYVkg2REygca0BkBJRBBrswyovmfAqYe1zmGlqG5i96
	 I0DidK5OeoONPNjxbZwQLyMMR1iBRePx2DtAIKpgLiBTtfFt3WfS3WN+3G3dclaSxd
	 jjZbtkpzCQ1UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC69CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768775362.10195.14130536684662744497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f574fa35aa7cd4f540f488ee6b7ece2f831e9138e0b12570211b3fe312d8bfb1
Date: Mon, 30 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727687753
