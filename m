Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FABC57C9F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757879394; cv=none; b=id6CGKU7iwqNBN955cbgLNTfch4dR6SbiBcZAlBRm5vAqCN3/UFErQe7776A5LztwFXuyDuXaA3/jDgQzY5e2EOuzaWVQjRAvHqpaRJkUzJhdiqXSaV2N5Tk7L4MLHa5YJ/l+YN0UKupii3BvIxK08pSuuZeCS7N5pgpmR1xzpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757879394; c=relaxed/simple;
	bh=aENzx3Fi7P3Yf4q4McQNalzwIFcKGhT57Hbai8Ucoso=;
	h=To:Subject:From:Message-Id:Date; b=UzeWiey6IYXVurMrIPmoqcyqDymWXN+YtT1FhgEamg5V8i96Sd00mDeEOhzpCM/3YaV2Bys09dslBT/X5M/3sTRe6QkrwAPsx4pOINvmyVgKgtvkEaGq8L4o1XYCgSlcNFO5RgvEkWZ+dS58hG9s/lDfMqmgmidqVz+AhvPgIBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFMIgt4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFMIgt4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A895EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757879393;
	bh=aENzx3Fi7P3Yf4q4McQNalzwIFcKGhT57Hbai8Ucoso=;
	h=To:Subject:From:Date:From;
	b=pFMIgt4Xqi66RYBjIkmztPUD5qkubA3fBCmnU043Q6CVn0SiZX+feCU6PaIJCCxqs
	 ojn1u6xNc5qg9P/U6fAyr6NegEEDzJTsfq2TM199EkaiHElFsJpzaPpHxZ5KpfYclW
	 HhE/FLtVAQblGRe0D0D5QYud7XigrCmfSkH7l/ucK20uuBJdlOUO7p3tiaGnvOjwxU
	 lYOJZz2xv1PEg1ZlVMrVQV160vUxDc7WvsX61ZbIHtgvN89IPJxiSnM2IohVfYtkem
	 6kmuhjwWoRpqYREvghdey7/14rbTiSyhyrGJZVHwhn2zX+N9af3RgbSaS+o9g9WhX9
	 /hmneohv6iwVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE8CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787939359.1153.16953129449369725008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9afc5696b386bd3ff9fc7f8cb16416e6b09721bbd33582d79dbcb6cd635cd0
Date: Sun, 14 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757879393
