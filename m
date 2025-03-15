Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D881DB12E
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742039935; cv=none; b=hA2JEd1zmi//1dTDq3zTz/Qhi25nSMc/nMLsntpS8yWWefMulTNUnXtWaVNVW3eYEWBuUSfi0YRBPMc+mfio1es20NmHOmMElxUVEh6oXj0pX5YxKY8/bkIagItX81cbLazaUmoZ1u+2etQ4iEm1KU8bKMXfu4JzKWBLXeUnDcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742039935; c=relaxed/simple;
	bh=rBLz2wzbPb+eyVaPMHbdgipzjSQEIGRVdnLcyGsCNtw=;
	h=To:Subject:From:Message-Id:Date; b=j9MmVBQOaLfkRmOrJDiewbmMuYeZ3wg6JPAPBVnuEkVG/0DIpqYTJ31jWN191J94AbGaXTYvvcm3TUuJ0OB16Y+AxQxW77IIZQYAETSJvP5gyxQV9rBuhKGbLggG2TjH1ToCRbQA66Cg00U+GEP32g256R/S7f6Jg9w19ejnUc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbMm881C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbMm881C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB44EC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742039933;
	bh=rBLz2wzbPb+eyVaPMHbdgipzjSQEIGRVdnLcyGsCNtw=;
	h=To:Subject:From:Date:From;
	b=nbMm881CM62gv7NmZ7ZOCncxWiop6aqzkiScuKNHNFLAlmT3Ehe6Q8GksuacF/GaH
	 jQMhHFVsQqdc0CBSyIsPU5bbIaahtYPRboXUdmsrkEDYNwwmO20eqFDaOnPFE0AatH
	 O7fAUs5i0uBHNuZUFIDflF0h3BG/cw2bPFiiiQp1j826yy/A7dKK1CXX3heTaMDuQN
	 NQYKH7gwN9iorVLrH++4wOz9rlHJrGkdc0BVVmCRLBAeukD5kgevglhFRyOdCpB3+v
	 gJfGe/43dtUhmvExFciQTXF+0lZwqZfL5OSWdIOaYLzNgCg7cAq9kLH7SIZxh7Z1vu
	 3G20vIA0ZD44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E36C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203993365.13497.12203111578104197435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95392f7be4e3591296fd6b823a3862343d8407c7b37a4c10116990861ad9413a
Date: Sat, 15 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742039933
