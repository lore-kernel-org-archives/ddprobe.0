Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A9C2E06EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762985394; cv=none; b=eu7Kc6aaOjBA+T+C8hGOE0oaL/LGmWpnSeDP9/90k9dJGFlr4EOF44igsolZE59U6Wd5rQ1P325SDKC4xnbAyPn35acIqYqIkwC8Mptm9E2yZswc6QpyqSLR6WNhbnaOni/RT9c602xut58lOR9fwAxSenZDX+6vuYar6LWlABA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762985394; c=relaxed/simple;
	bh=CUtyl4EcgkpbhB+UPF7VqgBkVUB//2IGmnNCwe/zyaM=;
	h=To:Subject:From:Message-Id:Date; b=JnTljydpEpB6SiwUuhoMhxXSY2+qhS6Nhp8UOLyPTaoqnSsJ5PrzMT527FiUydA53SlJ5oBtFCMXD/Tqy5IPla4EQIjdT5iTix5Z5Mgb8Jb/ojel5vSdUTwlHJDrok5TThtkhsL5xBiOJJzirwPN1F60JODfRpEOOdfxSz9bFPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8sltPqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8sltPqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF824C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762985393;
	bh=CUtyl4EcgkpbhB+UPF7VqgBkVUB//2IGmnNCwe/zyaM=;
	h=To:Subject:From:Date:From;
	b=h8sltPqRZGhKyxliNE50Pn4ar2sKgtRgcNZk0DBorsU9IBGs58FfQj0m60fBT+loQ
	 tZ3scm8oeVcb/x4mfAuU+pRkDU1b6p5f1aIDSVvnjSnd7ffHHmEj6HeycdgbFYS7ns
	 L9/V4PCDo/XlMHIWxoBPWMg7/xM6Q7jCrzQhd3Wb8D/XGJr4KG4Xyt5l3m55Ij8+Kh
	 z9PKZ7ReDFyNEWJlLrm2XO39lLU4n+eDWICfW/LTasdcWDgz9F3MzYJOXIKnKkqvPP
	 O+EFJbNGtLuKOmbtr33EAjgSkZUNbiIgF5B8sTcPlbUAWSHZSK4fEyyk34r4iXPegy
	 tdMZIQoFWWfvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41FECD4853
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298539365.27638.11113644628647560593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f8eaffd20ed5164ccaf358a7ed2300d39c7288824f34f56681b5c0ac78c3fb
Date: Wed, 12 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762985393
