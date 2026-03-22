Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060A9136672
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774215894; cv=none; b=G5RG4HVzdf06L1YYnFiu30uNTF1AugHUjQVs5llxiBQOIImbPjYHaH+SoPd08pz3yapmvKQRr3a6GAnBf3bE/eEQPesVnVTaDExe//PmP+IEBLyAASndm8fVbvaT+vgylBa2h+fi4bLgah2fBdH3IsAPpyDnyIzYQvzrU1+t0u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774215894; c=relaxed/simple;
	bh=CEfQCjKmSY3xYxkRQoHSQeF+NQPgwZZ9MqIrqmRB/ko=;
	h=To:Subject:From:Message-Id:Date; b=ddQpoxRkcbwozHVHiWO/AvFkOrgDoBOpbC0GZRZqcxKV+T0KTFFrG4/OUMzIhaK34W/r0zu0jrqbBXgxXzQArGx8xshX6qlOYzc3rgcU2tPXpC12TTcHMXLKWGdBslzIMGxQgKsp1cl3YLvQmUpoyxCJykq3BQrnrzan0GQJVCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0K8kAhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0K8kAhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A904DC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774215893;
	bh=CEfQCjKmSY3xYxkRQoHSQeF+NQPgwZZ9MqIrqmRB/ko=;
	h=To:Subject:From:Date:From;
	b=P0K8kAhKByKUZrE0Iow61GLMDXxCnMKVXXq9xMneIDOQ8SZ4FSXMHqbHmdbnbD2lp
	 jCXQyaORWn/OabzQIElgsyA/Ahc57iALya8+gHlHuDNo+Z85MCFi1zcoYg1WjdsOhI
	 cP4uK/F1FDXaj7hWGxtIz8xllkxRhga4VQLNyPXDVpXYSFyNX4Ac8gFhxvu3yeyANN
	 jqap8pZkRWKI/gdXwTgxHUYBJQ+KBEpdiUUC+gRRSv2TI2INSzrenlSkmdclrref7A
	 EZ0zDubkKMh5LUxAAI1eHWV+ghJgOSwGWUwG8bzajS9r3KRD9mDKVwDa+Ld9OYmhck
	 oBOASG+hiG8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F2D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421589361.6902.16902004523951323646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eef2f51070ae34702e7e98826b4641d887a558518992f129fd9f874d8c4ee63
Date: Sun, 22 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774215893
