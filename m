Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3558E25A63C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737073554; cv=none; b=GZNAhw3g+8CIKQjixxhEwn4TYuVuXz3jVGgSRoJFPct+KID11Clm/eafk4p4Cttzxg8pd09cBUOUEMwjpeoqxUpcWaeNVGfgw0ZsleFtxbdhVRRKF/RBeAIG/6GgMnL5qlZY8hjwNgTx0A5GHd7YW0AFQgpX16mHEsipnAWOmKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737073554; c=relaxed/simple;
	bh=Da46bNef8T0ULmUNWnbrVgWnG3ZI5h+wpvmlTgDV/4Y=;
	h=To:Subject:From:Message-Id:Date; b=g5mjnOvKIAr36eHIPweiaEc7bagGNYoOl34+cMwBF7Qk1SSj3JBfKcBeWN3CY09FFuK89w4wh7MG7jKhpmZVC11lfe4fLZSUcUg2g5SnMakQO6htkyEb/aXdoFSZgLLibWXtDFmTzwGkOvZ9qbsqfhfa56KmO1fjctN1eXMo5mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUchmh7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUchmh7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99DAC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737073553;
	bh=Da46bNef8T0ULmUNWnbrVgWnG3ZI5h+wpvmlTgDV/4Y=;
	h=To:Subject:From:Date:From;
	b=eUchmh7yQ1Spgb1ZzpGGRCQwJUu95GFi0w/jVwscsSMNWcNFmXjPszWQoY5/qqcmt
	 1819nn5elVQyPdfZ9AGZPZTyRxYRs7Wz5hEUlpwYhsWL/uCxO9Ager2DFsLDegDsVo
	 /H5IqPKtL7egNUuqNE9TJpXewVeCs70igpOvSMjn87FrDE9ilEWat1AyxvBWqFEX3t
	 5tT+QOR5JrpW01QMOEbEOYpwAJpVD6f7RyVHaW3UVpvp4lwPd2w/Ts+EdWqmOPHiuc
	 mhYymAEocPE6GA+uJ6AolZbKCPAHT2fskWBeEz3Ea0rleoCb2yRNaHh/QBYyRZuyHN
	 hjlsLzziKue6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9510EC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707355360.5896.4500173114240092076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6987c3cb042ace1a0c9c0daec6ef1c6d5cbbfa9b4f622e83fd33ad78e42cfebb
Date: Fri, 17 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737073553
