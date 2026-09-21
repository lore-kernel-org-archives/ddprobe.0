Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3464F4CFB
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790016034; cv=none; b=bwAksjrLW81af5wzSbc8RanEiKvV3eLe+G4QW63M+sO/fKUqfusondCKszfyzCtxnDPl28IaeDKu9GnGoZ9H9xTG5zSi/KJxPGoyS6elwEN/5i2G7n59wprpPg5PT86l7g/qeJTRPitLl/R2UpxJpYRgocWrYgqpCbULKI8Mihg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790016034; c=relaxed/simple;
	bh=OVsXhT1lMVa6cw9K5P4Xc3uWbYv9k6kgv9myLDzHHbA=;
	h=To:Subject:From:Message-Id:Date; b=adSwrVlz180l9ApcD7zYGtQKn6R/Mpfdr8GT2KgdjPw5sOLD4dXpQSip/FgTd7S7zsX6eR9Mh4u6+jPm19hkTl/UtDCcDlGQpJGI4XD1gkfPpf6DvV26vpO9Z40/z04G0Cq6MmMmXFAuyJ0dyquYOxqtMg8FDSw5qXEsKICtmnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOJejds/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOJejds/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1396C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790016033;
	bh=OVsXhT1lMVa6cw9K5P4Xc3uWbYv9k6kgv9myLDzHHbA=;
	h=To:Subject:From:Date:From;
	b=HOJejds/CUBqg2SdYhnaHk6M1tV098ogkn/4lwWSMkZmP/5vqYwP41Jd+sXnGY3sl
	 y3Zql81Ah8YVr3yxF9lOJyTUg5BfrDy2DtYg2dM29KQUrW06lXeEwYlCHeGPxCdm+l
	 tAo+8rZH4qgseR4Ic9l4JkSQDwCLefqQsRRTcZN5h4s15Jgp9bvllayBa96uqNK0l5
	 VGIBSUUQqaet9AyEUjNCfqzx/7Y5pjazlM/W1PH2zGGjegJ9HpsOeipzQArMrYAewd
	 qJnsSFggwsCZawylcbBxHnoc1aNkOrjUXNy6tKCVsv93Vzztk3BNYKjEFLN+2H6QD2
	 FJw80glva0W4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5D5C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001603375.30845.11611952415951387787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc73450eae2167e36e55915ca8553adee8b366754b984140b2430127a4b69851
Date: Mon, 21 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790016033
