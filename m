Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9521A23EA83
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784469514; cv=none; b=aRnjESr0qhbeWLeEHmdNutBnvjLWjdNsw+NOFx1Dj9Rkj9ZMLsWcBTsd61ktiDxKd8rTclub+tmfZzey5KX6IO4iahjEZw3JdGhUjbPAREp1Sb3ZcLSnP5pbJVSb6zG5vnMTeOAwdtvdJ/egJa5eTVMBq2Di8NBsCz/HJ3GTn4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784469514; c=relaxed/simple;
	bh=hyOjqJUWwVFmvEBO3DXVolzOQuMEMYWZj+VC0eX/NWQ=;
	h=To:Subject:From:Message-Id:Date; b=Um86KpPST+AL6XukHqTf379zRcGboSKqmYx2G3rl3+Qc+MUsb8KWhFE7pJHHS+7lRMuUWdnbEAxeFni6gvkAsgrH0xcuHMnpN6MQgJelQa5cU4rIci8CJkP0zxttOV1diruGEYmSKIx41J11dl+qK+t/LMD5lNkMn8npRhmgoBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xhg7VE4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xhg7VE4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF999C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784469513;
	bh=hyOjqJUWwVFmvEBO3DXVolzOQuMEMYWZj+VC0eX/NWQ=;
	h=To:Subject:From:Date:From;
	b=Xhg7VE4NOwt1Jb4XCfTrNOpZYLWhp3ahAUv15tGN0OF7t3kkeAZyaHk8Yn89AJE6V
	 tf3sSXMg9NcuAX0lj+RZSbNrXyQHvDdf8VfC8L2qwCTqGxfsr/hfrkHoaOSP77e/si
	 4XR7pIqdApTeAklNRcZ+HKVIyw4rADSH+zS04glizDIhbuP+E/wZFl/s7JJRwDKFM1
	 uQbKxtWNis2LahAntVA6kHmdRbuOwdWd7wmRVWXzyz1gXl2BubqHzHo6m2zn4mqrbf
	 6Z4Oip3Z1FQYVK+RWAee1bPya+xShGRpbZW6kSjKMwqfwlGFuoi36TKUs/fxmAN2KJ
	 QkxC+yvIlzQlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE44BC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446951368.20730.8188519816136937089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d21eaae0ce1eec9c53362cfb3e7457827ced8ffae6169ec7c434cfbd0a72c68
Date: Sun, 19 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784469513
