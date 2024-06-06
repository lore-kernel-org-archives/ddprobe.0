Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9AE134B6
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717648043; cv=none; b=MQNw3n5ycWnOuuDm8BMBHOnao1lbsHSF/gWUPRMmeXLKTVE0xvioCbRD13dS0oMGwo9QCJJIKVP+PIFVPvOmJ87YHV1GvYJh1YrK31QxOPckpNDyTK7jTQB6zz4fC9irVCHGu1ZH8IFvY4pDT6m7kEpB2QmURG5q4Nf/trBxiiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717648043; c=relaxed/simple;
	bh=XvW+AG3BDndNCuI9wyiam8f+8K93ENk87v27vpuzDuk=;
	h=To:Subject:From:Message-Id:Date; b=mTis79VbdaugNbzV4T7Q+hOlWudreybeMRY5EOOzCDtgU4mQU0vxSmlGQ7XBylTjDLfhc7VYNPIlvpl5NNJAlRE7AUyCq+yiandUT2N0XeRY4EeZEfY5Tp37bYA0Jpwg+yPOBGJb2lW/7/5GHPtui7gH6xJfeL89WdPAGPiz6kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcxLszG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcxLszG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D312C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717648043;
	bh=XvW+AG3BDndNCuI9wyiam8f+8K93ENk87v27vpuzDuk=;
	h=To:Subject:From:Date:From;
	b=YcxLszG2yI0G+RDQs4cAnYIPFV8DzWAHAfVkzwyPW3oL1Q71hRY+iiphMXkCXojaM
	 QkQ3PeLbSB59ii3ubpz4DHJSpPbv43M8Nh7wRN+yAHmL3pndLASjtzhmutFl4Vgj9r
	 xoSQAXNg/urTuFJHGkIA741d5JVpQGP3ZOado8abBiW0vegznxHkRbsBlCqjNL5EHA
	 J/6dSvJVZmrk0+zUSiD/bYnrOp4WI8yvRT2XOkMYYIo5A3Q7eXyT7MxYZ6OOsMyCBn
	 0uN/qrt3ys4ltg+8wCE/PzB5GlhO4D8uCu/BAEfeT9GUcqqeJeUR58uREmoHIE0Bd2
	 EB+ojdGv04SQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4081C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764804291.24334.235123518483252420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bedfcbdd112cc11881f87a514cd1cd94cfbcf6a87405fb65136336c3c8be205
Date: Thu, 06 Jun 2024 04:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717648042
