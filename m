Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D834D4F9
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775191534; cv=none; b=asVlpgmNmOorz3NGMslajxYiQasMotDdZDQ+RInFaHwxtKtCMXqlm8MgBv41Jss+a3lKlL6x/V3dDNZhEWFTuX7R1J8c9puNRapBwHYURZLaFf1J9JiKAKySN9FcpcyPycp6DjNAqc3O40iKh25sDqLYbG4vKoJXy7NKn1fQRkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775191534; c=relaxed/simple;
	bh=+jl4LuvOeOhx3UgtMKA67aSAn8j/OF2fC+OAUC2dJjQ=;
	h=To:Subject:From:Message-Id:Date; b=K3Y5ebVMJu4+dTv4Brq5hZivBqCBaky57DtIQymYNjF57r+amVEU2aEs+bzzbVt+O+LweEOeegZ0gbxMB797Js5PNDqj1LKXjAZqPKVd2sa/UTOX9dVlAwN0DViwsj5qXA+716qs2K+APmOExeNXX5bKP/WgoMlwwlJgoT3axI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaq0lwfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaq0lwfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC361C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775191533;
	bh=+jl4LuvOeOhx3UgtMKA67aSAn8j/OF2fC+OAUC2dJjQ=;
	h=To:Subject:From:Date:From;
	b=kaq0lwfCY4hKHQIY6dNT+b+/GaIMn9I4bjtk2lrt9N2LbQIL97EaVmhgj9kfy7Zct
	 RYY8FHFylWI/2+4QsicP5yFFHcH+lrSeE+wDe6ZuY5gUGU+nagg+dlAS5oW+QBF802
	 mVOIk3y7Je1knTSBYq0unPEuDGLeHlGk/wpWe5PE5Ts8WnIsXiEshwkMuuVMj+wzm8
	 Zs9S1a9UGEXMnh4W4hnjwk2z5C5V6TD84aQ3bwkeFN4KD35xubWf2qZHdX71ibGiAA
	 KUKbxNOZudci4Fmobs2OEYDy/+uyji+tlExeN6jirJmQBrQvY3iqz7eDHjX2goAC4a
	 ngHyJmt1bUUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B6D73099
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519153368.32202.8641520758807587162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1fe3bbe5ef6cbe7465c06e62038153eede23da6176a73cc802b1008167fa7a
Date: Fri, 03 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775191533
