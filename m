Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E62146D45
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760813394; cv=none; b=jhuRIREeeo3/cKk2ORHQSASzkrcMcYnmI06rnIY0bq8SwMksWYe16y4OkdayiXKqNUM16AZZuhTpDKPJkqrCHDR1dMarj8RajX8iCi2OMJv198McAms66ffJmQgZN7UmJDEGF3qOrTmk8SgnQaKUYJKmPi3qtyRMIP9BWSOd2F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760813394; c=relaxed/simple;
	bh=P/0lJ9pJS5lIDVb3GXJARY6LWiCGpe3AAZ7riL9xXOI=;
	h=To:Subject:From:Message-Id:Date; b=mbF5oNgRgUm1bDe0sWYgVTq2nKwxAPoZQGaH9vITKBVV0MuAq3kxz1TuNFYDxClObTaQ4i8f6Zk4749xZnyMmvaKMk579mDoYz81VSOfrTWI3aOGgGQrQroTAugdLXatdctquHegG8HGObEV3IfZfofhLprICbfAl8p61KHnp1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwYvJzWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwYvJzWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F1AC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760813393;
	bh=P/0lJ9pJS5lIDVb3GXJARY6LWiCGpe3AAZ7riL9xXOI=;
	h=To:Subject:From:Date:From;
	b=WwYvJzWhMoxctHMIMoUnRjSpSbaLpROmP3P5yxE+yUEnimdCeYim+Kni7wT7liDlB
	 Z3LQH5CT2Jq46dQFYuDX8ut3GMeWxmkPxOR1gfcZalVAAtxsHr07t0yxnAlHOuGfWU
	 mQBpMUvLQf8mkE7EwDh6z1tVD6JfOyYJmvkdDXyqZnInnhrAMn7Un1cppCKlmboaHp
	 CueK4bqAXsfpIs71MlO8Xs1NV6C6FVN9QtPZEzZXtRe+5ZircB8UFiInbfh/pWBe18
	 pxP99ENpgDzBOsH5GlJdCD4Dl2JrR9GeuIkKuHX/C/OZ0pz4kWiahNZTFTLYD96O2d
	 kpRFFZcT0RUNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6CCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081339357.32504.9766879121649088289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d692aecba246ec104329fb6b061984948b8ca49448b9655349655be326a299
Date: Sat, 18 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760813393
