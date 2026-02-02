Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472063C0C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769991234; cv=none; b=oURC6o+WQZR5WytKpokdiBTUa6gppmWjYQgTHOSR3hLlJZC/qlADnqpOfvqqcYBohmULutjpM4CoBZiwpfXy81/YV+k/HKbqIbGkpMe0IZzowvx1an93AGu3wJfwOWcUgxTjsPyaeIuVPEt9W8AUBirS2gsjekE1czgWhcZHvW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769991234; c=relaxed/simple;
	bh=B/Bzcc1WNNVzbRMV1rGQOVbJxFrvMxyZcmYz/WJyOiw=;
	h=To:Subject:From:Message-Id:Date; b=TgXB0CQLjI7JdYTTJylk3HLWEHOEupZHhyjBJWodgM9SFsA4ahlltqR3PlEMHE030RQgFM19S+sW1t9eDVqUPtvs9cCSbqAYBRJwD5VeYjpZH8DmzVxYNzqSCvckvwESZynID+moFsnxEgmysRJFnAF/MFRH9zCRYciul3vwiOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5uiZWbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5uiZWbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C436FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769991233;
	bh=B/Bzcc1WNNVzbRMV1rGQOVbJxFrvMxyZcmYz/WJyOiw=;
	h=To:Subject:From:Date:From;
	b=F5uiZWbvUC9ltpavsNg1HD9W92L2yiAzn0sow2mqgIZuKY3dmG8dSlIvZ1qCEtEBf
	 qy9sR+TCZjTQtBG+XgBo57MwH35zWKvL9h4s3q0quZSDyu2zyO4hirTxii1sPAC8mS
	 Q/X9BPtjStrzI69mO2qeRxGKumDkIpEp+qY7BGSWpZNC7lHyzzGHD9UxlmYcyTUF3c
	 yUrBVjfdNBZAeGo/URlkL6vK97OpwDKwQ9QtMJ0WtGbVbbPbwPgv+iZZ5bvK4adp4c
	 G7hp62jpIJv/fAgun8AYToAbZl5MBMLdcLue3j96BV1/Q8WhnUkCNftfrt/l3zpZST
	 uEpnCACTke31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA874D172AA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999123363.12471.2186183301632197129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5370bdbbc38a55e61c35b921f63f234894980045d8741b4cadb101d472b908a
Date: Mon, 02 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769991233
