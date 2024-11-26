Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8D71CFBC
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732587954; cv=none; b=RX3zzXs5NwIK3hVf03eeUbxzgOjFrgX94eDBphwSw+SQZCyWL0zGR/mTwa3RSw7G2cZGFIOCdcoD4MAuChB4Bie3K6B9HstqPb1rfs5T22id+3+RTrktFd50LgthJxeeJ2z6YF4AbULLgQsVUsqUS8T3vpCnAj1+hPSDZ4bNxig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732587954; c=relaxed/simple;
	bh=LkAJjcf1/UtVHOrSqTSUrLMmsV/F1NuJn1cBKeM15qE=;
	h=To:Subject:From:Message-Id:Date; b=QUkXQmqUi4APT+swGt6bCf4Q6jIMuTd/DOen0U+l4TP4/Mtnnt0f6v3Bjm14baAayr9Rq/5I9VP0SvkZ/bdWVvB/o7jNlOs+R3l84ll04Ch1b5nDFm5CdEXIxx2SQkjsVvXauxJngibXxSpITPWZXgrHw/QHMOfWC1YjO+RUmJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKytNtq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKytNtq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C3C4CED7
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732587953;
	bh=LkAJjcf1/UtVHOrSqTSUrLMmsV/F1NuJn1cBKeM15qE=;
	h=To:Subject:From:Date:From;
	b=OKytNtq1ULdN2b5AXHpWbRk6pcaaYmI83hjSjF/FYeKwxVKBT2PyDKErmqSJ2NgkQ
	 v83mMKElg1/JxNBr3cnK0PQOkZvDUO7Avvl+TDueK3PADqjIRMraKKd+TAVTsyhT7D
	 0thsINNBFXKHam+bvrelw2STGZkEhqawGdkKmlzX3+73osNWyFR/s1ZA10BufZ53Vp
	 5C4V6VbOYuaSN7zyBp1I7eF6itW9nb7aEvpAzi8Q8CO/4UBhzRG9a5QyU4UmKhlS7e
	 pcpusmKFql73K+QY1SsquVfHziUZfHzVyB1oJlRQzseKK3lE6y4M0C0sgfTbITqUep
	 lDtwI1YQ7IaJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA2D5A6DA
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258795360.11212.16828732612142701195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed70b90b0ce185cd9ed113df0182fbfa5a239c9b3007ec741deaeef04524782
Date: Tue, 26 Nov 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732587953
