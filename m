Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBCC1581F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738536954; cv=none; b=mgpc0GZC5rJZoDv0KKEFTPBwbN/xRO/aK2/UqWebI0rSBA35W1OOL2kGx8Lhbc2HbvbC9sP6IdYrnBUPHJJOxI9pjY/SonmowQfBMMjg73YEulaAJ7V6r9tPqtNWWewKmgQhSk0cko1YLK6qh/qbZqeMBxXJCupifJhsili72Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738536954; c=relaxed/simple;
	bh=ZmiFe9ouyQhI4TUC0nh45nAW8aO/wNrYdJGK79tNERY=;
	h=To:Subject:From:Message-Id:Date; b=gV6hhUBtU6rYuMYkhjyz7alIw2gqfjsqagScMF0hec3/0U21qZ6VRMIMbnSjHRjTZFGiTFlZ69lem/tEiZvZy69apSZlReV6Zi2LaCIpGmsBMsFsikB/lis/utghys+QkCve2FycRrVa+zSMMIwXSVphkyWJnDoNDCVOhRHRBjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGVUlxgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGVUlxgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72A7C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738536953;
	bh=ZmiFe9ouyQhI4TUC0nh45nAW8aO/wNrYdJGK79tNERY=;
	h=To:Subject:From:Date:From;
	b=DGVUlxgCnayzlQSMfR3hScstxlIcu+9XxoyfgKvja6aF73EzxRymxQHPmx+ZrqtUY
	 OsMbN04/TKhoAz80f+aA7i3UMbxRKpiZtUqTkqSaYhECBramCJW0Se+nSYI8crV2kU
	 vBb2VAHegT7M/mpJ36TP/gDZYTN82cxm9ZKWzfQjuQDBRSNAF4YG5yQkTHWM6ocXb6
	 L7t+tJ6w8pcAngWrcTj2UPWifgIHfezUlw2P+1jNZaSZZhiL4Vy8KwdNUK62R3tEgW
	 i3EVUMXMjr0+3AeFadfLv+IsU5RadHxsuFpHmkoIigtTqziISatEk3DpgfSIS+CNSc
	 hncfYJN6OaACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0F4C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853695358.25965.12358506639227312394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9f68b4c116863703122cf280499c41a822c93ac3ff4196b8d5704293ed0f59
Date: Sun, 02 Feb 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738536953
