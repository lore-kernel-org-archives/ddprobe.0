Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059AC2DA75A
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789701035; cv=none; b=hpr4b2SfJsWmG6nZS9Hy2gQtwb80VJECyWVPEVUpFqja5tfXxXjar4/vq7gBKd2y+db2BrCQS8X7X6exAGzDUw0iuJoNEqeyer3C1dm8yxuDLzjjgfAsQZFhnlQVa4PgaPvjOcGfZxbCuQ2vjrD1dSPrW41fJJhHP3i9iQi9hmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789701035; c=relaxed/simple;
	bh=v/ZGZoY9obfwgImqCVRSOeFMCB38spOd9CiX71yFgmk=;
	h=To:Subject:From:Message-Id:Date; b=WQD5MvbTBnrCzmWO/m3gkTdBAVjWpAevaT26iRF8VQltONk5CqqGKmcfliaPn7GPxc5e4uPvzJWF5AuS4pAM6jXnyZDTq/VROA5FGAL2OC+FjFdmyMvtYvLQyaeMJ3uuMMy4F+PQux0h5sSAYPBtHXzBHKZiLdWLheG/aZhgT1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnhK9rqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnhK9rqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5372C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789701033;
	bh=v/ZGZoY9obfwgImqCVRSOeFMCB38spOd9CiX71yFgmk=;
	h=To:Subject:From:Date:From;
	b=mnhK9rqynJaN1gqf3uajP226cqq1S/Bld/pBO4sLvySvKtahHlb6P1ubIj5J/d7rP
	 AsdtZcDX4C0JgrRUDWLs9yLEoNlinnAPOMvEZ+ByWSH3hB393GHyk33RED9hcf1aWg
	 OAVNfEHTFC8O/gktHxqNMV4Hi4Z+yGqsckiHgJX6znJY+KZ5Ice2CTHv5ID0Yf7jfv
	 mN3nImwOGxUrm6Vsk7qqiVcGXEuJENialhbWoz5c3uVh4LVIVZwtOE8GI5UuxUibDV
	 ADquXZLtFWQdy9eyjckwsW28IDgXMdmBUUBdKcagO0tpA85kueWOTcTL8v+9zQ9y6l
	 /csoxCrCxK8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B906FC88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970103374.6956.1999880813897738277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7465bf353ef8749db0ac4fc9b61258f132cda53eb89068d3c1fe49f3471d4e
Date: Fri, 18 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789701033
