Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D103572632
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749877793; cv=none; b=Z2xUb4NAKwrMpDEF86vpY9KUlo9jrH2N6kjam2QclxlVCdwFHcj5qH0fizZ8QcAu5WhIgoEmw0+qVvG+gz7HZMeRio6eR66ptSDu+wkrh4T1az/iikzkUxnc7lIqNtFlmig30TAR47+jF2W4pHJo3c4rL04FqnEWmqcrtpFaoGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749877793; c=relaxed/simple;
	bh=cddnwoFOKmtKz7hHIeAiZSZ0a/oE17/b5XqXP+MiIWI=;
	h=To:Subject:From:Message-Id:Date; b=uQHCxvYTNnoY7Bt7lAZe/nrlKkdaXivukLWq+RG5cQZBtRZJHaMU/OvCcKXx6n88XFRe/nvnMe0yOwloCI0zxRzorGWUflsoei/KzVMltHLv4XPRZP1Yf7oThwLi3EZBxspyD5RRxQYYECi0pX47f1GOuBKZc7qf7426lXrofAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na31HRty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na31HRty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A440FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749877793;
	bh=cddnwoFOKmtKz7hHIeAiZSZ0a/oE17/b5XqXP+MiIWI=;
	h=To:Subject:From:Date:From;
	b=na31HRtyM0KYpK+TSWCPYyfr1pIYjrwh5QNonxR0H+yuPHqwAlM4K7efzm/odFfUY
	 kJktltDxpB3vs6JOKgs+UzOtZBBNmQqJo3prPxiRHoptAN2EBDA6BLho04NIlmrL/+
	 l9LkRyzh5gliRp3LxH6oxfJvvOO9hSYy0VeP+LTTv96r/AwlevXpW1nkzoi8/nHL7S
	 Y9AOP95u7o4e3RJsYlJHojfB3FTN1Eag3JZpzFgjUwjJ+Up8RGTl5A9Z2t4qaNJXdC
	 JyrVgbcHScFVcTKzirCEGYuz1pAq/pSd6VkbYv4UH7HcC6mj16ZG7u/oWP6jBd6elo
	 /MDWmOEa35bNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D5C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987779357.22385.6958144310555794760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51db928ad4b1f21b5b4a1969613d65b96c88effa2ea6099a70227545db48aec2
Date: Sat, 14 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749877793
