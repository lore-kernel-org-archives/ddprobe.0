Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2CC30BB9E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766391234; cv=none; b=W3MkwFwlI259OPKM9EZKG9Fach0rRtlhGmTHXbzkOjMynUVkl3GoU6RdJRoOo09xdx9RdWAAeOePAvFHUEBpFkhVxNRN6Knq1rLRrxPN8KtE0emJK7Gfk3wGEnI1nu8+fUmWnOTEmx0Eyqu3XaEdojwXX18RbFcJwrhpfAdly64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766391234; c=relaxed/simple;
	bh=0bxm5UBD7z4fvks3jBDH2l8ccW0OF2S6ix/LSPMZugc=;
	h=To:Subject:From:Message-Id:Date; b=MRWmFzTi1aGyw0uLUb8XL95y1TtBmWlqtO1VI122Hjwnxgu9JvFcQGveL+3mv+THhh4/19mnKvAhpGIdJW6vXfE0L4hgDpxl27abF/stcLiBFk+FETIHMPtjjaAcN9nbL+AaryneqIMsa0vxyjlCiX1Oqf6Y86Awovzmapffl9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlmwI2yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlmwI2yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC51C116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766391233;
	bh=0bxm5UBD7z4fvks3jBDH2l8ccW0OF2S6ix/LSPMZugc=;
	h=To:Subject:From:Date:From;
	b=hlmwI2yjf9rZAx7wJ7iaVhAb3N9uzFhtt9N+yDpAjvftZS9mFv2l/Hw/QliFqbtc4
	 bzOqjLT9W6Uvf99ApD0aA/lfW+TmhEjo1MVWPpDmKNIv+qlWk5VBEZFLMWZub5bca3
	 qg9eC8Ivn/cf/uvKxh1K4baeKLF4/H+8oXEI80FLverRLqtBIbkrsJcTLTt8HgGI3q
	 zVrK9nmVhp5su4zLV/NVfYJ+2XB248GaHUnaOuq9QzVykvB3M1pCR5w6JFeayJMfB/
	 c1/HlaZI3/t8EYM7TlTJfrrmYTWavafq1AOOHRiiNkEZLjnz8XKT1ng6mr0oBb5ea+
	 upQ3JglA0JxKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015EE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639123358.13073.7250082844704960007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8a70faad4ce9c91a92e74489e3d5a5f16939fdebd42b62124b6ca899671da1
Date: Mon, 22 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766391233
