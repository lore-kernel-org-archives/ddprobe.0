Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3670D125DF
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737255354; cv=none; b=GPB9a9wI/FsJvTC0n7Do7oEzAQAm7A45mDEqlPOI3IXM5LxdVy5743AmhjhByFacPh7Hflfb0/yu6hT2zo5Kh7IQF/nT7RacsVyoNWbAYj+SOIbR2070EEcY78q6XWsgI8TxnNhHLpl4+Teb5CL1l7QQwUe7KsD0WlGSHDd1rcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737255354; c=relaxed/simple;
	bh=DvZkqAfZ/BqFP0/uwM0JsHE3awK9uD1R9846Ec83Eoo=;
	h=To:Subject:From:Message-Id:Date; b=GdwA/efph0Ck+BgUWPQAcY8ijlcaIyWd3N4oTh8f6aLu4RxhDtCBUzg617JPD0qWJzJ2uFFSrcTPOYeZss5EFMddx4w5JO9CMRFQwPqN0zIhzDpCgjpSHyCj0mPqfTuLI0OuVbY3KNP2LjAdJSbb46MYLT4LJVrEENSKj5EtRNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNnme0fZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNnme0fZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A390AC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737255353;
	bh=DvZkqAfZ/BqFP0/uwM0JsHE3awK9uD1R9846Ec83Eoo=;
	h=To:Subject:From:Date:From;
	b=aNnme0fZV0/g3ktJIhKVYzQNmoLQDAFKBpGT8fmryf9wvwfmSCwulAUL+pusax9IC
	 N0rwDV8nbQjhEeLoJKvvdV1oo16zEoKQ4cZE6/BUidxzAuwB9s3rxYq+1CJcnHWOZ/
	 Os8+2dxSotM1TFDujj813/hXspn6prsPjo8p+7B8nKHrq31/woTb2X83ymC6s8LHaH
	 R9x8s6htPBg2naRUweEXlQc1NLGFvwsDqDZ3pfPTIg7X5qIY7B55LU812y25DuLX+I
	 7qBxa6f0U71tsaUKGMX1chvL7TWf06GbBytgvNThYJEtO3KhpVsq/5Vw/MZS9dzQ0w
	 M3J+97TMGxtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0FC02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725535357.854.14666746869724772269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785a2984e84df8edf12d409516c84ee69be5e84897ae8f3f640b5babd3fe213d
Date: Sun, 19 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737255353
