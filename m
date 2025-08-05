Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B1525228C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754436594; cv=none; b=WTntAGhfKV8JIZVBZMscWxfV19HL7UDjOVP/qCxG1d5ieDR7deD5qIGxn//QRF9WJo+J2RpWYISwaQkTibhdHc8ZGjRBGiiT+BCbzfJ83PzTieoCDdefudjLczqpJIF8xknNlHXb3KRWjz654gvbQOUELTVmnsVM8Bzwb0VBArw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754436594; c=relaxed/simple;
	bh=HHgz9pAx1y9294QUaqCyT/xeAkfoeuqsHDHeL950BIg=;
	h=To:Subject:From:Message-Id:Date; b=GZbeshFkFpk+gn0yofOff9O6C5hVuU1PSoPjLWBvbkYvzV2YI29W/een0eW2s0brTSh1cQYWgeq+GUXm+JKE5LK6R56aFisikeDgAKDOnV1mDgl5ppTSlT4rizlB1YI7oXzM/JyTFJgElDiUmkCCibT8kJ+ChafUV+PRcgiNRXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8o5Dn7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8o5Dn7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70C9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754436593;
	bh=HHgz9pAx1y9294QUaqCyT/xeAkfoeuqsHDHeL950BIg=;
	h=To:Subject:From:Date:From;
	b=r8o5Dn7Q0wGzvPv7qr2v3pimjaaP2242+lpQzMwQouP8mRXuJxKSkemXhVVxYQjZ1
	 pFqqY/VHF4o8TFSLLvnAjyIsVZsbWvmbn+yDmA2XSOPXJiWH8YNV5uZaoERMOU9VSR
	 l84GckvR+DNkcftGYazOivqoTxQAawgZTyIe1u6/EeuqxRYoWlwGcDttUpUI5n7RTH
	 jp4HhXZ55vJiKyRlVBehwRRqi8XhgOfIfujTwjQF0+WxxC7lLx/7EbOd8ZHY4wTkNO
	 nFkdWK3jCSs1gKy1QnQoEdV41sEf+VnAaYclIY0F+CmmKq4h6yda5vH4mbWa++JUG5
	 ZkZxtUsl5OICw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94841C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443659357.11212.9213452203228620862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e14d43ccdd612be2f5bff68ad2c1b654db2b1ef380ab1321364fefd334ec9d
Date: Tue, 05 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754436593
