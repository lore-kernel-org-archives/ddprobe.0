Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2049913635C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771678494; cv=none; b=jyscQfMzgiVGfHyjNWYyjQ333J/Jjc9/IYWHeIaLkybkfIooHSyUFhtGSMGIJ6JIbjXA4rh178VdmTjvQh64x1g5PWfeC3+wVsUKLQY1Zpi+/QIhYSGokRfgkjWzO3TQHegmln9Peuht3X8NdbGcW/kGffoMwJ/2pSOFDV2TaWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771678494; c=relaxed/simple;
	bh=LF08bfmb51yXxiymr2G0xAzDeLPQTCqU2xK1QNj2d94=;
	h=To:Subject:From:Message-Id:Date; b=lLuYWES+VSjJeo0D3jPtn1qhvehnxdrkdqULqOLZ9Unw1vuGMVroU1ycgT94CEtLkt07ywVrUdmQ0/MGEC0Y+4DljP/qHjah5NL8Ks4gMIjA+ZwBaaen++prqHeUAHv5Dh3G+y2TdXIjAzltox3BqFE257Hp0I9YqQZLhfE0/rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpGJjCGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpGJjCGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EDFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771678493;
	bh=LF08bfmb51yXxiymr2G0xAzDeLPQTCqU2xK1QNj2d94=;
	h=To:Subject:From:Date:From;
	b=VpGJjCGRH1ELOAoeKfDRWp9RgzTpjVpcaNcx4s4AOXF/kZtVkm5tNsgyF8BYjbY9J
	 sj/DcjExSv8Janbfc93FPTWDOxnuonq3QL7pgM3Vrj2SQ7rbhtJTUDCxChtpZaGoZf
	 Kknyz1Eoe4pp7tGEzrRXA2ztTCrXbhEGrhQIXCkOjF/U7xBJXv+hQa0r+Ca/NCLzFu
	 y0+JKdgc/QiBNEGdyuRumJu1p/CPtbo9uDzqN/igfLF3kruYl++F+Tk+YlQUZCev2L
	 VzXTQlHknisi0bwjuZkvurG5BqlmfGdemrA0fSJ/tArQd+/pk11iZNL1kpqQx6egoN
	 3LdC6vpjO6vcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B679C61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167849360.22761.10738807319052453519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d55b3782b81a618e4d8e11b740ef89c9b8f09fa2b1b3d5bdc632625b4a5ad8
Date: Sat, 21 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771678493
