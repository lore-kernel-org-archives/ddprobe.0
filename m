Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8DF19539F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757077793; cv=none; b=jIopw+APJniZragxeEjDWGUQMHga58Ee78eQ1Tpn6O3cwtndrx7KdI3AOEhuaDuoVnmfDtVdQhIogejfvHC6V6R9GG19ex15m+bZYoesd2w+G3CfVyCNShAUiXtj5ePux0Wpp2ZNuRfq1zeWHPbIKoqDINKW/47hRmL+YuJxvuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757077793; c=relaxed/simple;
	bh=PMbEnAVtVS9TZdEgjRhU0EX5BPH3S/yL0DmnZ56Azn0=;
	h=To:Subject:From:Message-Id:Date; b=D0p4mnKWUx96uxl0gCAfzwwwGt8IYvZz8Yisl5Q1VqOHl1DsLGoFSn1EEoQb1/a7q69Nswf9iM7tsLevaa2WcQUD3FTHiLrIvPjmnztG10EqNUQ7JZn7e4lzW6QpoS7dZStLoXRaNTjkh0XwcUQX7BRsBbX3vieHLJSyRpHNH7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcF4rQjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcF4rQjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A053FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757077793;
	bh=PMbEnAVtVS9TZdEgjRhU0EX5BPH3S/yL0DmnZ56Azn0=;
	h=To:Subject:From:Date:From;
	b=TcF4rQjVKEkZtdorRJ0etoLAkn/u/2AeuDBAGnV41D93sL2OGn42y8Yv/LEtJmmUG
	 52np2sRyrBu4+ZB2udM8lrbtX1kfZn8R2A1r3pYSoI0ZH5IF2At7hilFG67yy+CPRR
	 F7eXkiZFv5up89nwVPA8ZVB0K+MrYRiCNWto3ze4edt6/iRS3XKxiWdmn7s4nisctf
	 HGXMCy3qdtSboBr49iqqdStbtGDSYDiDuuMr5u1iHRaz55yqzVuvXF+CvWcbrfAD8y
	 B+TYX0iZkwZv14RMucqnQ1l36NBUsWEH/NuG8cCw2Am68EAuRF5LFnlXB8EEmZL9h3
	 m1pTSdGwHWH/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F563CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707779358.30199.8113297869828702575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a2fb613597da4b56376d40897a81d05ce7545e52f42860a159e8a12823784d
Date: Fri, 05 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757077793
