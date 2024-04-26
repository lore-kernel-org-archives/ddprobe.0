Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019FB80C04
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714104143; cv=none; b=aU1O2JLmidjfAE3K7pmstb0Cir0EBDqyNpw6hyj+TqPo2Y6GojkXIh9GDfxcgHz5ZsSp28fAFW6xdcw/+sD9XTIxUdNfVP6c5w8RePCjlxIt9gUH9wR+fUsVvTONNTaFO5Td21j2xriDcSqOkFuXl7aT3BcieFEyNg87ROsRHPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714104143; c=relaxed/simple;
	bh=wKlbk2bL8jjkUf4Ebz1lDw1+ws6R1l5FPd9xh1kLG7M=;
	h=To:Subject:From:Message-Id:Date; b=uRBWpE9i44j47LRlCR7VLKp2yeX2feHPx2pcyPR+zaNsJOBkyJm9C9x9Is/4+doKVykHebmkxVMYZFgdlM4623OMJ9fPNZshCvdbm9jOBdiP64eWRyn4uzeTPDt5pZvXYJYZjaW6BTJAWr8zXt3FE8iIuemfjuE04XU0YQl3RqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msjqhJ0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msjqhJ0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4BAC32781
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714104142;
	bh=wKlbk2bL8jjkUf4Ebz1lDw1+ws6R1l5FPd9xh1kLG7M=;
	h=To:Subject:From:Date:From;
	b=msjqhJ0lJmkl5c//8m4uM8Jb3vOfxSkjDJzqkfsU3FEF9NudiuQNsEuTyi/BY4Gb8
	 h/M1u+9PNY6EX830FJQqU+bHtzftYppM85YU+uxsy9ylPl63C/F46K/sATEWmHRlmV
	 hbiC7IOi3mTKiml6oOTz5fXEskapcNhBPevPsSKbhITLNTl6qM4nYCpEzWYMyJD+s4
	 CU56xiN7z0/ZXTk1Ort6HMBZ1wWcsgtj77aTJDj0V4VDqV0J4MZicdn5CKpX7g7Vqc
	 LY8R8P1Gk0NtDJuVIPwZOQdlwEcTTcDbw8ClRAOXET7l4hJDHnRYJR3B2PiKHEV7xc
	 HNWDW21ZbXkUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB231C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410414275.30470.16016097069263887993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9faf6261fdd7e0188908515a2efe703b6adada9214a8132b22daaf10279dd94b
Date: Fri, 26 Apr 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714104142
