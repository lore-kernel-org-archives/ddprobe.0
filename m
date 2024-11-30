Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE0828EA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732962954; cv=none; b=Do31IRSNRDOD4eT1Sx4h9P8bG9sbEWn6Sfe9hV5UCNooyToWEavceyzhOsVn/9/7ejoemPJCRVqW1ZwghfJ5eXBieK7ff6tYTciE5PFZAFVqWMkikeuFHkV/WTH+YKIv+aa3Wm5YPkVHBA2kRj94KpzO43AbLW+TgNct7dWR0TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732962954; c=relaxed/simple;
	bh=9A8er6XvEIc7Z09KhHh0o9aMhHOpU/qdX2oZ0RpItYI=;
	h=To:Subject:From:Message-Id:Date; b=EmtgNYOIvX+3eKJOxn/u7FFiNKWj9xMexXwNKQdNv4Q+8iT8DmUSaRpnkay7rkKBmIhGs0yx/73Y6H2VABg/umLOVPlc/9FmUpUxZ9CHF8Q4wZd4LsbdLNagjXtVDXgcLdl5dVQA4FT/nIy0aYTmgybLmbmelkfTxXlECn9BqSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwmm6LI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwmm6LI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4504C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732962953;
	bh=9A8er6XvEIc7Z09KhHh0o9aMhHOpU/qdX2oZ0RpItYI=;
	h=To:Subject:From:Date:From;
	b=lwmm6LI67yYtG5NK0Y8+dTRVdF1KtLMYB7ZvpHbZRaOcUEqji6//v2/nY/ZND6X7S
	 iRHUqEMRzZK9J2e7nNdoK0fzMxTPyyDJaFZb3UfG55oE7/1hXv9hrLM4PVxYTWgzTV
	 WTy6j+SKSsIs9GC3CIokUXD8JR0BKjp9MtT++hGsU4w17QrHNaggeBqww3/QkyuWIB
	 Ey10V6T+0wpbPrNmRKRP5QqipY/Q2pcq8lP1WuR9kf+qUobqJ3toq+ZGNI3bl29I0p
	 pX0aDFPVn7ydX5+X+AOqc1b/zZzRrcxb5Ayt5aIhOKUuf/YMtONqbnARA0IdzPZtDn
	 mYJ+zK89rkuiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F739D735FE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296295358.23887.9441381840063478842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed59dedd625486e41f1222d0ec9eb1b96865adab06fcdde10d95449a7a9e041
Date: Sat, 30 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732962953
