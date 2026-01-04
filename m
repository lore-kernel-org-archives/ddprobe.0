Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393ED3A1E94
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767546834; cv=none; b=SJ4tyfLbXq5WAvjs1pdcHpNqekCnzG/nBzJTrJlWHe5lsBtm92UhFpJvnAYDr7kAvr40WNEBwlzhL6P6FsJIz6PLRkWHI1zeP2oQjeu9Ojz8nZpE14PiztxOCLAvwGGsbzqH6amueOEmsw700WksB9eXX7Wmp3MOoSLTnbGFZgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767546834; c=relaxed/simple;
	bh=J9GamZvnRvubk0YD4ewD2Wytx4QslTWXwRwO4qeX1FI=;
	h=To:Subject:From:Message-Id:Date; b=IboVd3Go6BRSNQ/2+ZWaMVFA7kwA1bx8HRZqXQ1AyirvbbIs9v4TR7ccfI80njB5K7fDzUS7+12W9OBcyap//1TPDIJ5CVNrCdRRUinPuv5nTWziORFu+y1ajX7vF6BD9ckr5yTX+jr7qQC3CxuhIoexvrturcq8TBTbmQUsiok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnRsCxPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnRsCxPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A530CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767546833;
	bh=J9GamZvnRvubk0YD4ewD2Wytx4QslTWXwRwO4qeX1FI=;
	h=To:Subject:From:Date:From;
	b=pnRsCxPeK5bhstIn/rCWvge6mNhEqWuxqAK5eercLDIp+UpIKGezvFqhIz21MZ8sk
	 jTQZ+KjywJgipUuOZYfQHXtyJmHOfp2iSaq+AiFvCcgHesy95DVm95VcKbIcYjUos+
	 Tgbzc8hlBly73gUf6yBs+RcTOrtrWKUTqyJ10O3JkIx0FvefKPFt7b/NxsoWZduYGu
	 0ZMIbH0Q5lF/62WTFdbBwCf8g1CVJhRo5yPd7vQrMq0UgQ/dK7c6hX3QWRF28auqSn
	 bMIItmWRokd7To+gt23QoFYoQG2Hwi0CSbONyr0jzmFBpBgMnVsdHhjmUuVNb7zly1
	 /GQX6Z/Mso3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94719C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754683357.31976.9776122366872388065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf951f927e73aa067586fc3b0cb726375ad3966b7ea6561bf44fab0249523d7f
Date: Sun, 04 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767546833
