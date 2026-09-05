Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ECF35676B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788613834; cv=none; b=QIfJgoWksCSoW1iivXf80NWykXFUDRqunZu7YUpPs1ACQst62IlVoiJ1zp4LvawzoqQwJNnpmridNXE22UDXMCT4Ad4t6fsaPibzCw/YJ2jML4VytAvWZF7kWjR3hrGwYQTegN/JYFUBHhSRc4Z175yfQY5QnP4uXlydcIHTlfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788613834; c=relaxed/simple;
	bh=HWmsjt+YmO/u/7bHbA0bI+kJM0gJMdf2AQ8Op6SPkaY=;
	h=To:Subject:From:Message-Id:Date; b=L+PerQTKTFf0X3BFahkzufZ7Srf8Byz82Gov7Lc/SZliL6orZCxFvDAkuGpbixZisZs7+Gaqob9urUlODkHufGQz4NkLIjntuBV67me+Q6f5vbwBw0fOnPz1QkxW1d8rM/mj9YzyTcxHzBRZKwm0dQi89Wrc0DYffn32W47uLLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKuZu6RI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKuZu6RI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37B9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788613833;
	bh=HWmsjt+YmO/u/7bHbA0bI+kJM0gJMdf2AQ8Op6SPkaY=;
	h=To:Subject:From:Date:From;
	b=kKuZu6RIeAhO2RhYQmj5pwKeJLW9P7Px3HbqYeuJvlIh8rE4YbAzlKDnnnvrrgFzG
	 8dWv/ruXDMGh85Ql0AVWOd5D6Rt0WApbzg0yHPrjVGwDuvJ9mDnIUlF2v8wNJUCG2i
	 X3nsvhycYwWsJVmgFTpOiNcZZsIa6IOzVn3n4ZEO6T+AfT3aKfQcMjftNCWTbE61VR
	 5OgTnw3WR8oeuOdCTEQSctFosD85hE7W7u/sK8lIVHr2ZrKTfBbvDhnmknRKbqWTN/
	 2RUmtyJETLa1arH/NJZVnph7gXf61p+0jlQkN4fwA89rm2zARs7bR1KmcBg+rk3Ur+
	 Q+e09sXp4xgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D02C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861383368.16619.4216747280702822147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772aec6e5d30bd25ae6037c21de96c3e4ce8f05d6972b380af1a2f9346689abe
Date: Sat, 05 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788613833
