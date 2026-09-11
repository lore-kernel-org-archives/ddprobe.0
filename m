Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7036A3E9C05
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789117234; cv=none; b=BuiSwCKOI0PByr+CeQk8+/cTAzFMbK6ZkAs24XXkgIQ/NTAGokJhcGPSe3+dvOXaHIPbaMplimo8RMdNHPR11pmtPRhuTqmA+Agld4NwFIiR289tDyHcHpsjCF6TvTlgwzxSuFnQPiUeo50yCypNB+p+2ii/ho2BgijSf6l6ybU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789117234; c=relaxed/simple;
	bh=oGyjoAQm5o3HmA/duOCA8TiZgBcBKdo15w/V49sM4W0=;
	h=To:Subject:From:Message-Id:Date; b=Ymh/r+lOiKXaLErt3yEAVJzBoi3w4+YrbNAoZ6IRzQGY9Mqfkn1eDHL0j2Af5IJZIscKVn2VAx5HYHNhEKOEhPMj7IPupL3Fd4rtFRNh4b4UTAZVqqwt9rwWyyvnN1BF6d4WUzZwjVFU8roVDnNga4oJXoFxBqOcz0Rg+L47wgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBJOtR1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBJOtR1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1261C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789117233;
	bh=oGyjoAQm5o3HmA/duOCA8TiZgBcBKdo15w/V49sM4W0=;
	h=To:Subject:From:Date:From;
	b=NBJOtR1N+LG475DkL7m+MBxpNIjDyCowQr4AZu7Ut3TLiuFyuVmMtOckn0RZtlJJ6
	 PmF9iK0eozEhGEDPeb2R/1Lsi64E6loOO15yDbzQ1H2MEHTAVkLbny/kmKGq1m1Mwg
	 BRRz8CPE1IQu72ZXnymPD4OgVDcF6XVPwtvV6Y3A4ioe2OH1cYyvBz3q6og0FiwLqO
	 ZL4hmV7Lpu3FdqTODvi9AL+gBMWiTs3A7UoAATUZqfni/J0ZRIEbn03mmdPySRxKA+
	 inQu9ZLvFHiZRcOtEeE0r0dz9fT89GO1jmtvrE3UUNlN1AQnZ3DeyHagjF4o15gVO1
	 4COTRAWAhYLTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA187C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911723368.28480.9286920621113320095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f6c3d3791e7db3d6df81032e486766e145590030014d05c61feaf02587d366
Date: Fri, 11 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789117233
