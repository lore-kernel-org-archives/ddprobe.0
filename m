Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0C435E1BF
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787698234; cv=none; b=YSNbP8B/9FQJn21snJXjdwlkbfGvKUVk1XoVeFfoME+szeCbDbaDzU+rFDM9GCwcYqrI9xpgAb/ocifrqBiov+iItw6Ifefzu8Fqyv+o+EdttTNvCnA7sJM59ZtwdiAFO4oN4iP9pBicXsVVuLT8ESorNs/GX9xQa/k3aG0QjOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787698234; c=relaxed/simple;
	bh=zn6lsFaIr3eP9l6NWXOnyDrmdooHxAbBlS3jv+/ye9E=;
	h=To:Subject:From:Message-Id:Date; b=XXosoq10ITRu9DZfeo4OkYySnIaurMqQC0/AzKjxhMI/QoJwNlVewF9RakLQwUVrojB7UQweBh9mwMGuSl7RsunlFqpmEI49TZ2iubwuczAWlDrcj/m9kfDiRLwmwQyxjcw19tlUIkOD9bs/juv7CEIkQ2NVvtYZNTLBsb/X0SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIuvbDgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIuvbDgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2C6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787698234;
	bh=zn6lsFaIr3eP9l6NWXOnyDrmdooHxAbBlS3jv+/ye9E=;
	h=To:Subject:From:Date:From;
	b=uIuvbDgx5TiRgLvIdOakVLMR6AP5ibEDObrloXBXfIx5osOjnTBE+F0PdMJyiAg0h
	 nd3MspkplUVEP97FG4JKmb/zN4oyCS3/ivuKX0CRVS4IsCmP+6q+cNv/AG37gzPER1
	 xw26MVkIzvPgKG1hjnXY2qpwkHRX9X5o8l/tb6sxvZ0lsPmqC/oBhMu7GBpNjAmY6h
	 4ElHT/fT3fmWhKqxYfMog7iDpxmxAqwLGCso49cZKApOY6UuG3n6EaFFXk2Sobyavq
	 DvUuOUwFoMTsehiRjBg0E5duvzCvB0ObXE83UV8Hd7f//cBAgSdK0mTTnyKeIEnCzD
	 Jw58xdkrmLERg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B928AC61DC4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769823374.11810.682768860066053254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b12c2a59762c3a525a4465b1a9f1aa78447047d8a5ef375bbee71d7742ae53
Date: Tue, 25 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787698233
