Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F50045D19F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789591835; cv=none; b=o41l9s3yY4o6qcfydPN47H40aWkt4t8P5+HD5fpVGp6c3+a7ZrUCU5fW/jO9+WEKKy9aGBKVXNfaTkys2wdIBtAK3lSRE12ytlhv9HxD7xvoyViLZM0hbQZ4GH+KtuJnIu9Q3zak+0DHNKTS1zksal/CmPmR3WpULBV1ckdnaFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789591835; c=relaxed/simple;
	bh=Cr2N6MO1LUZVlBQLiFzZ40nn6mdOPmjmoeQkGb59phE=;
	h=To:Subject:From:Message-Id:Date; b=TN4V8LUsn77+cwBWK2PGRTqCT66rZ//+VZrl9MLvow5NtMDE6eDqxlTac5Bkn6iOZ2L/WF48qyoaKnsUV2Faa+aU7Sif1b3IsWBNyLwN2DsWwFlo11V0pFrXRR5OkD8zhDnpQHSEWwyYvOx5gHVB5LGJX86P4cbcY4jeGOZYygY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNicLkAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNicLkAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D917FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789591833;
	bh=Cr2N6MO1LUZVlBQLiFzZ40nn6mdOPmjmoeQkGb59phE=;
	h=To:Subject:From:Date:From;
	b=UNicLkAmVG5o9TEA016bZtSXW0d0VbTu2b7SLTHPqoJ74fXZ9XeUUATLee1w+j2qI
	 L173J2kjcVP/bmwWeGMnv2Y1MQ0ZDeNR0MkEVRw9jptM68eiFYDU/QBX3Y12U5/ELW
	 xKby/Qpo/nBpmitWSerA23MdFR34dBiPDUAav9bby9Ze1tvR00StGQr967PHVya0k0
	 4GzALFvZqT/JYj6IOgVadSJHaTVytBWrb3k9NGavaWxv9+AdpEMMlUmnfym3wCe/eD
	 BSAFqiE9nDA/kUFYg+1K+i4b9qOpF4NwMu/vzSJLdxrRLJ3s5v00pJyJFaySXhpfUg
	 wtObG0hQC3qqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A1CC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959183372.9022.15263842718067644439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d64d8df1ec63c85e40b986a7f49cafb9449465210415bed838122a5b8d9b693
Date: Wed, 16 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789591833
