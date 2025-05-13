Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D440220B81D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747173593; cv=none; b=dqiu5UxtUjNvdBhvrP0/3G1IF5bmiOQTd4l4fQBZU0lxC6hFtXQEEeaFYmVbfh5qBv/4AEHTQ18oJCcF4WVVbBnS+wSt5NbEp99qgsY7Yt8C1odPP9OBLRqnWb97gdr4jSe7sa3lPmI26tHYxOe36frMZmVcVYCRe3qbvVp7Wo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747173593; c=relaxed/simple;
	bh=eb+53UI3Uwm/49HtSvN5TNzoe/daDyoKMQz47GLcCxU=;
	h=To:Subject:From:Message-Id:Date; b=qOSqkYEcKp1716rJekAIb4ZYg6WVhH0igNmFNaBTIKuLMwduxgeYBb7jH/5277epRkA9O+kjltYmZf8YqAJdk27PAhi+MB9l2fFf0RS7tys2QDQzTw52AhzL1nZY9iHYv1nH8C0JX6BSlKHo7UtWi7LNCSJPWD9P2EeG5J4cmSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trQRAAYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trQRAAYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A199DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747173593;
	bh=eb+53UI3Uwm/49HtSvN5TNzoe/daDyoKMQz47GLcCxU=;
	h=To:Subject:From:Date:From;
	b=trQRAAYScHfT1n0PcoEKk/X2He/VTwtxBahW+tTthUGdmm5w/LtJp3KempZDREP68
	 M+BucbB2mzQlGxDoMASWJmSPweT5o1KC5rR3fbACFLg+q/BHgyKAAP+gqUCkOTlvEI
	 Df3PBrx8Bna1j+2V4yG7NxyipJZLhpSSI/L52h/gjRXlZaMd9jOzB+OYGM/ppgYo9f
	 L18f4ryx0V/lFz3/09fTNrRo3ELiey5IKXw7fxBkoxgHH+3ta9E1scftjAlpxuUy3a
	 m8h/PMUljt/c0zD54tPhTXFUzq1qnw97DT2JMtMIoevIQIuETwan6XyMFt2xtL0oQH
	 JANMPOOlTArpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E694C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717359357.9306.16452605546547854838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e529a57f76122424576af4d63f7800df45bc07a5b992221527b083715f2b41
Date: Tue, 13 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747173593
