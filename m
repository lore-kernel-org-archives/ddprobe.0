Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A203DB641
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779177034; cv=none; b=grbEzl7R7dzhAFTe0gwEj+EzMG72aGvAmrq7D1RvHBJdIE/r0XpkmOoh6OO7UDq3QXAzzJCo40Uz3GuQB3EC0HJM21KZK9JjhZzlpbkFdaFkzRxNoOiKJ+yfztFWkSrxgwGoG24sTfmBkwLQYNt7ObOH5RDA31vosmfy3dbCBDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779177034; c=relaxed/simple;
	bh=mmB8D2EPWxfl/e8hNjLKDRG+Ncg17BU6miwc3lXar0U=;
	h=To:Subject:From:Message-Id:Date; b=GAxfm20Q7FuIb/qcIuqgvMWsHlNBRoPBj2qeL6xaJz5udyBr5TxU+BtDo6KterBj+buvP3hprYmFfCaGiGtKkWTORdNgRYwAWNLawRo/5d55EnZ5p4cJgdV+miEwaatTHOhKoET4ZRWYeJ6ax86AwzkMjvci06WNGm/PS7ijgbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8UnfcY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8UnfcY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E40C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779177033;
	bh=mmB8D2EPWxfl/e8hNjLKDRG+Ncg17BU6miwc3lXar0U=;
	h=To:Subject:From:Date:From;
	b=e8UnfcY7jHkVVBmbQWrGCiAX01EuxoLZeqXpxeBi9bychpQ+LU16/ROGFMb2YwzP4
	 ogeuQzlHQW+gUsCVgdlladglh8N1iWAvSr/zhuaHUVJt0hk00/9cLW/AmuHVK1NBpY
	 BWNZv+6LGfmVC/DWpmno4ovpE5icYRn1cGXzDGMq1NDmYBVv5mZxfsL85pjwXpxPD2
	 LU5GVE4PYMpy0mc3MBbnAEL1mwNL7n9OEkH5NIICD28fBcAg6T3HieoRwjyYqsM0rs
	 iQ4DXlD3G4R5JtkwD0/HX6Z2R6VpM7u9+6l4HPxF/OgEhSzutUzO6LekjkDYXleJkZ
	 bA1Eicfde2Ypg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83DDCD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917703374.12029.14713736886548121983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5600f54444bc6746e15e1c3f92937cce26da25968338a563e7123443e1a90fe9
Date: Tue, 19 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779177033
