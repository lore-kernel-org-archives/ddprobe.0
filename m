Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6E02C08B0
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765089174; cv=none; b=Wb++4UON+Z9g55lOBYNI/e90OIdzTYUc5RyvCAd2ZMGPniing1DbaTuryEWBZVFV47m8p+O6GcqRffSmsv3X9ea8jw4bBb9HzWrghBVp85ppeajlF9+qnh0UFQlM20dx2t63NDs3kUnZ2Mbr1eJAyDz6Dw8PqmTDJo26dlfINPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765089174; c=relaxed/simple;
	bh=jaRml+AwAs4V8NvD1LC6rOsjN+E+G5zNAhnO587z/F0=;
	h=To:Subject:From:Message-Id:Date; b=ggyWFF9w9TPblXEcJn3Clr2jH6phi0r94WIGVuxs8e1K/iTLSrejcoTemEMUp/6ta/s5gMYwlAjAhccXAQp2EXTa8gS02uUymK7aRKw0W7C+AS2RTcFYG53Kndz5P1KCYKhDrzaasQshOqQ6vGrrci3TNahlqy+o5xTeVUHXkTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkewUtUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkewUtUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A086AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765089173;
	bh=jaRml+AwAs4V8NvD1LC6rOsjN+E+G5zNAhnO587z/F0=;
	h=To:Subject:From:Date:From;
	b=mkewUtUb94KSi3b/AtORuhFTz96pY0H8xJuNgrPhe5VwBxjLc96PwzuRPh1l6vIjo
	 31/XBm4zq5zIC2ViwLdRGl4iB5e5/NICAHjMFpzl9WxqQZj7+bCxBIqn0BBlFaLwIp
	 P/2BgY/drstKHtBMfvvdMftS4oCvYASavf3E8NiRl9IJBjPIpW6cTV822rLp5Z6tlS
	 2IOMscuUL2rJCZD1vsn7lZX5bpC/uvpf7KpuW+V9llNpBtWtpTpi9MvUBvAjJvObFL
	 zPaq/pUQYBM/5HkNhUNqjBkw5btSDfpX4KFJzXG05Ict5cgtz27HogqZEA9NWALmil
	 TDSB28cnkPE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119AD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508917358.2379.7022732768011835749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166872adbc6c9b0f005a946ec680c6f0dfdffe37e95d06f062c4460a304af379
Date: Sun, 07 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765089173
