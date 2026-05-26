Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FBB1891A9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779756754; cv=none; b=ZZra0UquAVRAWMFWyP/N91Z/C2zeuKMMmSFxG5cNkdhS4RMcNQMnH4LxXHuiE3YzCo2qohFZaAPJr/JnmfiIz+I92grWqTusz3vtM9Wbb4fgfSK4BK9zmZwhuQthwn8CVwmsPk6VGs8dhPw4wrcwoVvjYs7av5k2aPmkaeTsXgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779756754; c=relaxed/simple;
	bh=rACF9PRxEaMYkBZr5lJwy3gwtogu9oUEhyn8uu0UWfk=;
	h=To:Subject:From:Message-Id:Date; b=mppda6lneXPYI/KwjY5qNbZE9vrdhvjYp/P9F09WU0YEMWyHwGhdf7hNhN6z6T14igRL7qyhmvcfQIKn1xqjsAxqqNZxKt8lHgIme6s9ON2R7sql4poKSKWvc/G3s5qq/hcSJJx01CCJtR0/MH9oD8ga+w9USU9xZzyKexnnnIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yz6xYhZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yz6xYhZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D406FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779756753;
	bh=rACF9PRxEaMYkBZr5lJwy3gwtogu9oUEhyn8uu0UWfk=;
	h=To:Subject:From:Date:From;
	b=Yz6xYhZNypwOFZHpxcUX/4daQMyY+emw3rBZ1U5w4M+b3PlV0E6p4JdOBeS3P8R+2
	 JpN054edI5izWHD4Si8yoGIndhszYsRMfk28utYo07sB9C2fox5MtQBo8q6VsuTNin
	 euX9IJd3FTjOP3Ft9S7DuB3kj+HVxri0Jg8NAAg5pCQcHVXAzbe3lUqMnDa9UjxuCj
	 T1h1oEAP554caWg56AssXh9w8zHkkKkVJ2jHNsRZQEw1Diw4HVCB6r5ebPSdzx1iRC
	 1Gwg72iIMYgKDYsMr86kGuet7lMvtgtEsp3iJPhs8jrcjaCQc5amUVEETQ2fNx8w8X
	 FEhgZ9OFtgtIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6319CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975675373.29410.4998331958232190008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9377ac595658d29bf33162e26eb5016be4c27a43d583766e0914285da65f2f07
Date: Tue, 26 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779756753
