Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E48C1C2AD
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722660354; cv=none; b=Dl/d72kuop3X4X6VSqVcrQlfi37ithZtbXq+mgzFYCamtEirX3GxiK4xASY3Gwzd+7AUCRT7Cl+5R5nfiMT7akHpSDGzWy/I+3kUW5UOJnfI7YxDOTicwQrVYjR7lK+dOaJDo+WiVu8BNx6DDX7jgFlJFA3/CNB3ZIQUv3mC1dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722660354; c=relaxed/simple;
	bh=qmSrV16N/EYswEvxBZGe3n2jVtohEA0OAGp4dC87Cao=;
	h=To:Subject:From:Message-Id:Date; b=GnaEBVpcYHVRljnqk2Z3cyq5D1Sw5woDy/3Ipk9XZBSAUn5PO/vxqFGoewzN4jUHvNQD/2JIIcDenxZaO2TpeDQq+gXjQDL10++sPjWNK2yawaNlHKAUNn1IO7o+2KW8nTEZttcOB83kVl/6n7A49+Ta/eyTVwlOT2bwtteecQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8SIsAvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8SIsAvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86EDC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722660353;
	bh=qmSrV16N/EYswEvxBZGe3n2jVtohEA0OAGp4dC87Cao=;
	h=To:Subject:From:Date:From;
	b=D8SIsAvoDkYc9fbNrHB/43W3KwNg9KxfpyBE1k8oYM6kDWFk9b+G3u4Fo08/abJpr
	 lSyf2DZaovJiHf4XCzjTK0DlqKJ1Fvw5KcO972Wy488O5JLTPtuTq0LD5aHL8otxZQ
	 LG00LOaV71QcVvYRSIIzCEsue0vh4EiNGnLs2yFYygjXXDKLIEWW8uOdNwsOnfarCN
	 0UugKj5G9PcZNoIIsXrp5s8dMIfpnr/ml1kDdsKfIK3Ipr+p2CAfMrf7l9u9/NThYg
	 82t5PqkIGRfyhgtOpYxAaoG256GafPWiPuJM1eLW3dJBcS4Cmp+8i6NvtktFq9d7bf
	 gRdJP/kMU1Zlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12BDC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266035360.26463.3891633498595310221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71fa18a920ac732bfd0e718863258660675cc592af5338ff092264da77eb216
Date: Sat, 03 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722660353
