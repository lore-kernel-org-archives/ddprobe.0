Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5202566D2
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746196194; cv=none; b=cbB4XOCez0g7bulj8roiH8AcOVEIAyzQgl/QdgcT6pAAnxJHmi4iVH2Oz6W2iMfqS/3z4/ezhZ/z/NV7iThKxVLKO4NnjI63Y116ma39L/S0E3+0b9FwJ82I7S1H2AnHezjmztwb9rW18CJA4+q2cJTIGykDJnpq/IguKaduVZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746196194; c=relaxed/simple;
	bh=HyV1dIpKEN73y2ANT5/9Q/JBzzOnI/dTttMOOZfkln8=;
	h=To:Subject:From:Message-Id:Date; b=D+pdJ7AuduPx9/S8WZ3spVcw8oIB+udLRLcjktpuQYiTHufSRH6L+gdhJAuVH+62qh3t2ND9XwwlLEA2kkCEPIdmlMjAT/pAD5luI3Hj/ebP6J0e8iuRd+qRVU6SOje45waCUE63IQ+fHxYwhGEBw8HVEF/E0CaS0v/CJu6lTbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Px8TcC2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Px8TcC2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746196193;
	bh=HyV1dIpKEN73y2ANT5/9Q/JBzzOnI/dTttMOOZfkln8=;
	h=To:Subject:From:Date:From;
	b=Px8TcC2HsCwW2dnfgkZ8+KPyp9oaPLwnm6JTWwtXOW0dKMDIurjzW1+WPFQAW0hsS
	 eKobfnr5ImnkUv6MWSupcJWziEq0YmZMvjLU2IEJvAtHtItemBJf0cewhKx8oTyi+q
	 vl6Cr2/pCcneE/mw0aQeM+gHGwdHFfxxXGdt7veW32Y5ngvfC5QMs2nV/7TfKMg/34
	 OHRDBNzHHKlaBWYf7BbxIMLwPyebM7Q+vqgndMw6zg4Xe/+BXKkquEvwq7ebXhBx6H
	 /6sUDRskzvHQPwukX+a/3r8AdPw45OVg06XtwIjm5sfQEt43sLRZFCD0u9/AvBXZcd
	 b38tGm5vbi58A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C6C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619619357.19971.5153120187156645183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bce2c2632d638e54e3f8fbc3c0818a0fec6fba6de3976cb124ba7384ed64cdf
Date: Fri, 02 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746196193
