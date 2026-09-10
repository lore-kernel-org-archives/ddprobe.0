Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE92E534450
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789060234; cv=none; b=WLOF9O8ITWAcNLGFvdKiqK3s2hr2fpeAk0JLBZCGtXunH9BbNBPw6Ezq4ueOt3eAAAzJsSvD/z72W75xhn9pll1i0AaV/xuqaGRT9GR/XL6l3dxc3z4+73kv36Db1z/R9s3CNJX0ZgAKdtdITfH0OtjV2PcxYAiYoEKIZbqDdKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789060234; c=relaxed/simple;
	bh=Gizy1gFlOp4TkSTqDeTyUpzXNeZw8dzNSojxoIoDu1M=;
	h=To:Subject:From:Message-Id:Date; b=lbPTlRd+PGSfN7vKmIpKYAX3uEDk9o9yrspxLUJ5NbnjljXdjSUOxABsxTDtfo+JCbPEtSb3+UeR5eau0FvSxGcS7oGtpR6O92s4I3Z7rAbPKrHzWZIUCHBfbg73qnv8fUY54r48+NgF77I/Z9DWRKiBLVWu6B4SZ2ivJNsdSsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOjaHio2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOjaHio2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB12C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789060233;
	bh=Gizy1gFlOp4TkSTqDeTyUpzXNeZw8dzNSojxoIoDu1M=;
	h=To:Subject:From:Date:From;
	b=TOjaHio2f8S7iJGgun7bMojhzmJCSL/WY1zQY+8LY7iPCdP6z9GAedCQmIKhLCyR4
	 TpLf3u/TzCOVYfcBRxxKK24hsvgtIuEONCNOZe2Zq+6Rby5BT/T73n16zxJZErT/M+
	 hGmmDwcBmmPXpnOtFSalXG8Bk85asY5tW0UCyZPukLMIXp/xOy7rHUJtJ/AkhmoOYK
	 TPGcjTmvAN6zvHSdWB7YPpFoofLM6AkLa7RFiZHGtOmL6+QiWQsy4Zz9HFdS+RhFlc
	 FcHatq5xsab6fBee/c8U0iUwUyfTK7GjUYC4UxDSEwnnQtYj0v0PkRQMf9VGS0kKKN
	 U4aoiid6JJUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A82C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906023368.1249.17698618352922546448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa21993f4f6e48a38f39a3110fdbf8518e56916d5e7c2af24597229e29905943
Date: Thu, 10 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789060233
