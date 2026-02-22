Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C541A9F94
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771791894; cv=none; b=QDKryvoKpJMgDiXguK4tw2xMfgirnl2b6oOU0Lgc3vjFQzSlzVF2Iln4ZZZZBEXRflnEESM3XfmPs63t8/X0vnGURm67CR59YgV/lF92Shd/O4uv5UoYS8krvYqkiWrRF0iE0AZ5Xrh6gnm/eVhwyC74mTe6RfspmarvwAFGCh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771791894; c=relaxed/simple;
	bh=7y2IKVC/evT5g+FgLpbWh+aCw3+9k9iZpxP+uYzJEcs=;
	h=To:Subject:From:Message-Id:Date; b=FM0LxrqaUK756DyiwopLtaBXfzG7kE2A5TQRVadwqQFy9dttDJuLUABQGG48E7uWhEYMqMnBy/j2FgvxIIRDo7gD4+m5xhd9K4r1KjldnbWJnFWW8WwUoPrB8BGM2YFfUjib0TChYQiL0dio2jveHJmPsj6KAwJ8l/TSdGyutqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrD3VufM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrD3VufM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD910C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771791893;
	bh=7y2IKVC/evT5g+FgLpbWh+aCw3+9k9iZpxP+uYzJEcs=;
	h=To:Subject:From:Date:From;
	b=PrD3VufM7jDABOabT/qDTN4PPObHMkv9uIyYXwfIdsASqCl7g3pBJ8ai7MtxW3SLQ
	 JZl6rVfTqYyvMLlWWY0zJh7KCpbwo0qDZPgYattPmyeTFiAakhk0M84nzc7wybCRwD
	 dkxDn4aVCaGHvXx1Pm3LKU2YuF1CDrOUHPQOo8gQdJevZdAOcCWLbjFmoujNx1XXn8
	 KqGECyu7puXTbHnGsiVv+AtcJhOPsEgzOFlqVYsAJ9Qu/TiDczq2NbpUpsrQfkmzYi
	 2+tk0UFC0p+y8FK7XGEZK8ifiMj0EqiZaJthzGdmD+LSI5TtfsvPRsybagfQlnUAgm
	 uZz4EHZ0w8BvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96266C636B8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179189358.25243.2184254298279313827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914267899ec8fc4501739128ffd0ea4b5142de9b30b80fefcd2b84f070403a25
Date: Sun, 22 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771791893
