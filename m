Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385E43C00
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748046594; cv=none; b=Hi3LmgP2CRMUvE6s4PBFWNYrLyc2clujZ9pFN3utPPcdah/x4AXDM9VL8iWurG1ska8IDbiS+ht8J7Uwr55LDbi4hv4JkQFpU99xOiFTe6jFS6mWh3NmrQ2q3M3Fq9Y+5uciZavqbAHXUz0nXusRx9HfRUE3MMVYKGL72++WvvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748046594; c=relaxed/simple;
	bh=+p19gLxhwqu5LpwwtjOq6aoun/PDisPg89nKv68RhM0=;
	h=To:Subject:From:Message-Id:Date; b=IQDF2A/TChAvJvKc0AMpdJILSJhZumeu9BdBOK1cpDcSQwFejemc7HFhH7ftFeZLFzORXA9BYK2sVMcg7ch69sRAq8QKa7Cq7TO5Jk1TJVf0PkB68neFTe5+uChbKVQh0299TUrySqGD0K+RxYdYfP8M97J2OiRF6XQYuFB5vbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUUiH7tw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUUiH7tw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D5C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748046593;
	bh=+p19gLxhwqu5LpwwtjOq6aoun/PDisPg89nKv68RhM0=;
	h=To:Subject:From:Date:From;
	b=qUUiH7twTALjKvRJnocXxKFEcy4R5r51GY6AohX8T8G6DGHthMLl6pPdD02vuW0q5
	 ysCMWGd3aBQAX9ZuZUuO+BgYpQYy/8iyRQT3pLqFfTw7ku+ADsZe9hAmuU4bj+zDUO
	 BR1/Q+R5NR2h5/5aye273KpHat7uJ6WaybfGWr8jtUCquz7SjWLE56llnfzF/RJQBp
	 aOombTC/LrmRkfUo9dH2kxVI0VB78g/w45yj6ArlFekyw7CwFd+cSplErDmZOD4FO9
	 Tbr+MkWw0b7Ku2efa3KHMOdcMV4am+K6ux7M3jYqtoNK20dx4oXccEBrDS+/eD/nNZ
	 k8Uu9ofMhCEkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9485EC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804659357.24283.17188357394921820545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa089cbfcbbfe694acfb4da4c243bb6e82e17eb82ccfdb34112409020abf85d
Date: Sat, 24 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748046593
