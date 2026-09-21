Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B73244A725
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789977034; cv=none; b=gP3DG5Tk1c3J5w5Ikc5RyMlqfc3OVtWb5MioAp8fgiHaiSdCV7RMQfPW+vqc+9BoaYaUT6In3hR4A77FYmYJ+xvzF3OR3OPbFfAw9zmzWrgq1CluliQ7/w7CCSZRi1CfJbrcNgQBdM47AGSNaHvID/JUgkWnKWp6H1oZ9u6niBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789977034; c=relaxed/simple;
	bh=EsD7vszrRZv3yZF+UeDWWNV3uSh+bHi/vK2mkrPa7cw=;
	h=To:Subject:From:Message-Id:Date; b=tj/PdTb8S5R6l/HHnU5aWw3XqcxvaYyT0fNz71/uBX26pifKjDTVXJsF3mJ9ayGQYyaIam1QEREfMInWQHlcNPijhslQnqSnB97DqBdI7IzKmNdLincxgTsD1nGb2zelA9lbiVX7WX1Pqdi1AwyxLNJDyXnxfTMkL5UEp1iusHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAT4moi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAT4moi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58F1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789977033;
	bh=EsD7vszrRZv3yZF+UeDWWNV3uSh+bHi/vK2mkrPa7cw=;
	h=To:Subject:From:Date:From;
	b=FAT4moi4HpWIl9zedFgYJs/a/Sg5if+dY4DbImSlj/AAPeb8x0FKX+94Lj8PkYEMY
	 as/wtxm1BhQr1VWBHjcd4PaGnfzjC8y8J976GgSI3o0hf6btJS8+uzFuinaWht9ne+
	 rUNQzPAlOLua202e/x9KQzOZaU6NGnH17vWYBlEFYw+g5CJZZJJblfEvA7HPKcbCQ5
	 7gj/GoEp00n9b9mBeLWVDbJh6nQKSElWTZ4Pbpr4QeC2YE1tsOoaND+WBawteTMqnr
	 jIKaf5DXL/Uxh6vy1RMMwltUaniMlbaYSUW5u+oD18jOtT9DThSYtlw0kROIYONClf
	 esWsOhFoFddFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E2EC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997703371.642.979510963170784460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96a3bc04e85fd15cabd9cc3a4ec36b527d015fb2cc708a1a47d5b3bb932033c
Date: Mon, 21 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789977033
