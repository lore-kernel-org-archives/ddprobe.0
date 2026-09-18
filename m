Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E743A4F33
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789704034; cv=none; b=dNL4losvv/GcgMj7BgQaR+t5W1vAyfU5LcVGo8ydLz/1yuI34Ovn8rAqaEYefNuPC3QHaW97gXM97gRhNUZyopz1XE4Mqd3VUbWBYkpya2lLD8Y/eS7zRpX7ISjgOWAY+gBVhG7JnT7yCsACZkNODgFm+SultTJ5Om+MHfMpT/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789704034; c=relaxed/simple;
	bh=KvYX7QgVA71Ka8SzGaYPuSksbbyfNrQlqdH4j7irMAc=;
	h=To:Subject:From:Message-Id:Date; b=Yu1ZzQTSjEJ9PvKOOn/WXBqyfO3+wegAjeIjjXOkJ02Ga7jEYt220GFhGY3pif4EKTpzC6kJ7cqdggJY+Sj+1+AWRpgOnAI6GZIgUMgrGG7ZBrq5hchT2UF8a0hgQj641sjCjqJ/FlaYwTSRpuWc8vFai/eQ4QESLKh/LLTePd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk250Rwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk250Rwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC12C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789704033;
	bh=KvYX7QgVA71Ka8SzGaYPuSksbbyfNrQlqdH4j7irMAc=;
	h=To:Subject:From:Date:From;
	b=mk250RwxVSjahG++J41sW8q9fHjDGNnPxBN+alBGT1DhpFQ5nPkPP/3vggk3LNwc+
	 6L/jy1ETpSTEvAEZO9+Ad7tVJ7yDNMXiJnHH9Bf5kXcoitksSRZWT+G8UFpxr1JDwF
	 L1Rv4Guf7tgGy+GjH9YGw9uPAHG/dhijYoeEPvHxL0S9HgLWjai4njPvlb7iBM6OOu
	 RLZHmOxj3Kjks8yGuume6bBOQvW2TgBi1DGWZCIt0of233qKrE5zmdzv8Vva9MHGhX
	 LMllBnF4dz1S6k9TGwBEDoQQddcZK2AmcmDbKgRyELGlIiUCl9h3wwaoFS7e/kn4+G
	 6C+T7R2EVfL5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A941BC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970403368.16026.9935924883546036852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1547d813a6c445fe1944703c69b3d38e7a03d83dd7314ce8b44084b37f2ee3dc
Date: Fri, 18 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789704033
