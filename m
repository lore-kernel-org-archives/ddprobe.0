Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398A42114
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735766154; cv=none; b=oKVU/hSsh1JQykeqmHS2HmJsZDuDJCfI6B0HEIOWwFAmZmVtrZv6HQae7x5895YqFNCGg1Hde39fDmEDCnVAu2MSfoyx00Uk8A2nkA6b/3f0nEy8tN5hDpAKxz5dXH2k7GhDpUR7gMb15scBmneXz6IUNLrznQRnCTQkcWeeVj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735766154; c=relaxed/simple;
	bh=vq33kkwzh1h86J2oZrcDWapSG2q9bVQeT2RmzcDuGLw=;
	h=To:Subject:From:Message-Id:Date; b=GXg4EmMf0+TqdQ61ewha/GBi2FQR/92H7asevzYv1ugOveREsaVYpt5LYnuGB/8yJI6I1JiopL8egWWQEvknMzbkY/QsTXXCPrg8cAuluAPEaRY6ijV8LkOHqi1lnlOmviBWthx1Hq2kS6jhNxZsyBDJkzNK3uaDxirPk6CCtJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDzZfIHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDzZfIHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB0EC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735766153;
	bh=vq33kkwzh1h86J2oZrcDWapSG2q9bVQeT2RmzcDuGLw=;
	h=To:Subject:From:Date:From;
	b=EDzZfIHhpC+t7kjBAwiD/wjEIZaAFVqGucWrmMqMc3sGImofshmSIxydk8+8M+p8p
	 rj9mf58IMAhTvlLb4+vZOLo4Y11cPFfK6ud0FMXcK+CjVbm0ZW78xaW3lrtUJeQDAL
	 dZIlcw0BoDA0IlOwA5LMRxFMbScqX8Rdj2I42hYKsov765sR7oLf/Zt2KPrAdEAd+n
	 6rbWdLdoLfCsIs2VwM1NYiuQsfowk2rsqWsPzUbwJUBLR2uTPA2PdZU+P509GuBAQU
	 7CZ5WlMDQ+PK12z4zVi3zTq8T7Qaqa+yUphTBd9o97la+YZgG8mqaeFVG6nXXuOfU+
	 QnwxDue9uCzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98344E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576615358.29876.11009235647159352989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a86b48702e2fb460d03862efcd1c0e97a388a07563466a3e79e2cf2373ef99d
Date: Wed, 01 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735766153
