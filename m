Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EED566D
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709432897; cv=none; b=km4KV1MJ2ahVmiGxMrjj2XTyZEfvPPUxwWTJOj4wvWEp99FqCJ/AfVuuxedUSQlIcTH18DSwSAKWLlnqW6ar1Z4JTYU5e928R8Q977NDaEXf2+HAtvZXWkTeGYEvTbM9ZrPVOB3aJ5wszOcWq7aDpSoVe0Wxhlw5jN9pVB0tHjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709432897; c=relaxed/simple;
	bh=oVwPg9XB98X9b6JX39C9YRPv2bnEHs0M1AXhDynomfk=;
	h=To:Subject:From:Message-Id:Date; b=ngxClr2a3ll1oay0srYYUOo8jxB460HcDl8U3raRiVcS4VQEXXsvk/gWghHBoGYiabySxMAfd1Fi/DdwoIAXW9jnCOK36zIZZlRZFru/kacPod6obnubTGVrm2mOY1a0JxGrY7t+POgjmlAgNxs9mnMAsSKUrHDSm68r3Av22y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfgATtKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfgATtKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A57EC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709432896;
	bh=oVwPg9XB98X9b6JX39C9YRPv2bnEHs0M1AXhDynomfk=;
	h=To:Subject:From:Date:From;
	b=AfgATtKa2N4DAaiyMSk36OUqVveT9rWhqlsDMKPmbV2ZtU41MajuzNxcHdHBgzApe
	 pDYyBN/mBIisFwMGI7DmreIb8/9ZVX08O+KAYxLVn0kz/g35Mw4kX6cfKkkji95tJP
	 83HOB7HgL6z6H1jw4UUO3B/ptcdEW72aMkww67NpT1KhpuygENA1BdfKuVPRA4tXjZ
	 CMdQ/MgWowqRdPAkeNLPTCPl3GTnuY7LJMrpJDeMSs6RyRY8o8t3h0ZBkKO9oEE2fC
	 tdkSSBLbo4Oa3hXejWHd5gKkqZgBdoZXa88D0ckESe79qFrm/QGpgfYbpEvMxLihmJ
	 EPLuHOGg4wuVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFF6C54798
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170943289637.27302.9003212978370716869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3383d61956ba1c70b9d6c8ebac59d5b50a4da07694ebda4f3d6cc9bb415602f
Date: Sun, 03 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709432896
