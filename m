Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A652E370E
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757368794; cv=none; b=VJj18smshSA9gN9yoyWG6n0zyzeWSRtKHQMHGg46xm8hZJy27nKuwzZZpyBhT5SPsNLENOL2poz5v57oi6ZCodf/I1CeCjrldcO4iNcX7UFUcnDVPA2WmdDpsj1j/X1n3BAB8cSAdnWOSx/q8bwXUpElWRap0i1VLznIQWJ5K88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757368794; c=relaxed/simple;
	bh=0yzEqKwYXVY4C0WUYRDb7kC6CADB68wU6Uzs4vaYr80=;
	h=To:Subject:From:Message-Id:Date; b=EJ66j/sgfU0KdicTM8ieR8Db0z6fi08zH637ue3NMICWNg6JolZOKAdJBeSMZTemkaeC7Q/2kV3lDm1zIFjRdfX6xq1RkU2ULt0NdAiDLPr6OXKOaov07tv1uBfNhUd6lnJC6oPJsdbcXQ0r7BeCR+rOAKlf7RARsTm9pK56Plw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqW3+Ew/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqW3+Ew/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BEAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757368793;
	bh=0yzEqKwYXVY4C0WUYRDb7kC6CADB68wU6Uzs4vaYr80=;
	h=To:Subject:From:Date:From;
	b=jqW3+Ew/422WlxBKpwlRZRMPZI2MoMe5pVYUGm+UMBDzRUZ6aPPm5PpGje8DOJ0QW
	 CYgq4dKdV9R+h15U8psLTGCMiasGOGKSz9+Dh20SpXHTb1D0A/rLqF1XH/cih/4/yS
	 QTdip6u00BU8yQ31+WoZ6CRgNU49UeopUbpemU24tqHeZzZnvpt8j6ZRnPph1CLpMr
	 PWXafoz/a0o2AZdRBCjsgkGzwqmblUl816r/OAJ15RzIpMWH6ELwp1yIqeHYd34iOt
	 PiDxqj46HDwdtiEsAdD3cCSFKYYgZevEHSjMZIF6QJf5wF6zK2LTNhtKkcGiUvEtaU
	 cmRfJv9wjn31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F249CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736879357.32376.7550697280426892189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdb93ee8646443025c606f29c3cb48b5c4999d8ce4ade7147cccdfc82d25794
Date: Mon, 08 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757368793
