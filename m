Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1441F2451E2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733902554; cv=none; b=q44qUs1Nd1JfrMToqy+IjjVdVo3MRzeLtrtdwylzY5Z8K4SJIRYmJdmTxyma2wfgRMzx5Eq/Fuq4uV2jbDVI1WydgQWjrKQ9X5U88iWiQCwxkiTnoTaW5FBmAC+9yawcZdJy0Ed/mpjC7tY4oJqTmR5xR5tOAZMgyMV8H09cpdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733902554; c=relaxed/simple;
	bh=4HeFRibyBJ9RL69RQPjFK1FEqiuWSL4G7/qMswevrVA=;
	h=To:Subject:From:Message-Id:Date; b=riKnwIEe7fJFeNOP0DH9pHByvgHtno/NYbQ9AlohxK7MYEPn6H+Sfon5VZeyGaWXPmUCy88w8ZI9ZHKoalSF0J3OVEy3X8VQSrc1IJUaPCxLz+aZilCkeyIcPSWU4OBOqnipNfExjp0oeEdKbbktdK6fIQvs5/ZcDXUdAsqRkUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTMzNaj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTMzNaj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778FC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733902553;
	bh=4HeFRibyBJ9RL69RQPjFK1FEqiuWSL4G7/qMswevrVA=;
	h=To:Subject:From:Date:From;
	b=FTMzNaj3/Kas9WMV0zJ0YYhpb1qFAFALuudc5OjZYrXtGGNGXo+oUghXYWGKx3zsI
	 0XBhmeEaKq79fEdKGO5kuKmY8C875z37QFC0yqB1ORnFWR80SgzqBT41pKLgp+YEci
	 5y2ExUqsj7k6nz8DhdWZy52Nq8IolHctWAal5IDcm2KDZ9PvFSua71MjY+JRXpv/Q0
	 LhVQxtaE3U91emHCvGTolRcksqGRkF7itJoEyRvmIwFYtQXtpjaw5fdtK6FNhy5P+Z
	 ysL6Qv96CeWaaY/onVScZO+oPCvPOxjOpo/xO1NkDGEXrMeIP9Nt1HiExyDD2oLriF
	 KUH2r/BXnn70Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969FFE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173390255360.14559.12386099933228535275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341dac024a7d9fa8b64eb93edbb485c4c980d42bf85b5c8dbf60d49665efdaac
Date: Wed, 11 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733902553
