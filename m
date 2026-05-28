Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D693AF677
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779975154; cv=none; b=ZDU1gWmTn29ooq9rvbiJfZ2N8UN6D+FYFptjX7hhXMhVrWn6ZvBHP+LpfxjcIjuDVrlKyGI+DJv5JGvSSMpTNpDoQW690/LMNcJU+6jMm5OOHD3yNSOQ1I935xhM9/xUrjIYt/i3uFpqUs6e6/dwMm/9YuYQjmO686S3s4CmKQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779975154; c=relaxed/simple;
	bh=uv527U8KAEPj+S9OJif0ci2ngVEJreK6m7nswygfbGc=;
	h=To:Subject:From:Message-Id:Date; b=RwK8FaTuNYa45CQKlmHJKUrQt+hS7+60AooTR1kP1rLvMs5XvPABC05NMAv/Po9ZsWmsnT7lhfP9FcG7df010AUIgFSaEE+hTVX7wHrSfxMoEKZlKiQZWJ1ASxVnQzGVXENjYRrei05wQl0KDy7WglDsKouooGK/PIJh9/MiVOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGDEeRwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGDEeRwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33A7C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779975153;
	bh=uv527U8KAEPj+S9OJif0ci2ngVEJreK6m7nswygfbGc=;
	h=To:Subject:From:Date:From;
	b=pGDEeRwvfXbHVSwLC9uOux/lmd4GSShQfjRtyWtTUeH6iVekwkYGiJ8gJDgOogQfP
	 9RkWFdx2i4KsrxtIKG0J//72sgCQso350NQ/gTQRHQWZZlEP/QMnuWGJXll+8/9AZh
	 ed2sTwuCYvvE56sOMt3Ng+V/AqEYs5lIKYWYF87JLSMQ0T9wQekwbmCSSrOq4pkQo8
	 PtgL4oiC4YwTXEMc3nMHOw3sb5et7MXhWq13rYn0SVzwq5Njqwr/1KNYmukesD0jWu
	 O3IsCweGytDS4Qq6UQs+zNNACJuLUBfZKR0QMKl+2knqa8iF9xxRKiRfziI7lV6UBG
	 Bhjf2RT8p5IpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89D6CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997515368.15483.3020365098517399914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a73efe593deb12e2f68fe8d87c7eaaa0931904aa0f849bfaf7f8f3f99534bd
Date: Thu, 28 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779975153
