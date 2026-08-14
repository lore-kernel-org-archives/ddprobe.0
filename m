Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28EE3CA4A0
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786737034; cv=none; b=g2OzesXgftI7x9eXPfhcCdDARChHFanOBUn8j837x0N5CZa9+mskS581XDa2fMXFa9b4en21zepDWl5ZFTGFEGF5w9CzU8QlPQTp1+V+XvbZrgmCNKUsX8TXDjQNDH6MDJN3dOxK4/SvugIOUuuoPL3dgG7Xl/8aQdHdXEpDWwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786737034; c=relaxed/simple;
	bh=WfEuFybfeJFHkflWUtj/RXMtuBw4knneRTmRf3ceMh0=;
	h=To:Subject:From:Message-Id:Date; b=QXLlOiqn/G+upofMTwRHGxwud5S5ktGBhXbpOdqxi+e/iBrZ15qnpBHa8gAMI6RqqnXDd20WxO/dzimPVVOwbXdTmsBYAMWVT7y8P25X2EGPet1jtsgh+sbcOvz9z8MQR4ys2rrKumhyKsZm/1shJEvP84wp6BAs/ziEqRAOQBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rt4q3mwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rt4q3mwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1935C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786737033;
	bh=WfEuFybfeJFHkflWUtj/RXMtuBw4knneRTmRf3ceMh0=;
	h=To:Subject:From:Date:From;
	b=rt4q3mwz2ahp7JTZEWA47l5GIM+4FR4rV6xnInERKpQ1MLvyrIG4CF13mMRRiwqnW
	 Zg8DURN5a5PyvbWc0733C05gb45zSvmb2Re51uEdXF1U1OGnvHsY9iQDBNExu7OHGI
	 LIH4nTm62MSx1vHJ4jiXz2Qx+uiyVvVC39T3AIS1shUKFlWSh7NDJ70osvSE+enJcG
	 rfdC0oj+yu8xLajkYI3em9yTg86KlmMdUidBA/D2/w565OedOosXOj8lKAShmcvrpu
	 X4SpNrwg1CT9jCRy+oIZNmadIlmC8ZrtKeMMIrgFraoWxCaWfiPmvlIxHpNIkLcwdc
	 I5JKQr++18MXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA30C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673703369.7806.18393245443879679132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f721fbf530901d38136c2e530b3c53bfbd08b20431d0c890a128e749ceac22
Date: Fri, 14 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786737033
