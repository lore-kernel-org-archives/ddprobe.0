Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D3421D00A
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774163096; cv=none; b=cMuSYHeuzxxCISIwOCMOk3wf1D34zJwGrO3U2bODiFpBU1RmoYQESUkN1wg6eSjogiiKiUPpX84MbeTuI2w60zsXIHs+UWQd3yMYHLSNb1HK38Xh/bJnW4SBQvKPoWefWbddzFAb0VOxAIS+b3/8IQWhBD5wZVijmfUeA6uiXjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774163096; c=relaxed/simple;
	bh=zpqRe4pEi21Ih8SuEuy4XiXLXLlBvgvT6JQWqsPkNAs=;
	h=To:Subject:From:Message-Id:Date; b=rKQSJCjLs4m2qhO9l05pex8wVkskgc4TBL6/rb9hByU5DdhaoZzxSO+AOqswUrXaSLwYgzCEQ1lFZtgtY8b7+tkL6sJo8EzSpDWNeXFhzDehZ8QS1v5Ke+u6ID/2benAN3s3xeccqIlpnGnqEJn3tbn9vf4GCQT/Jyk4NPOIJGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcbxOIfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcbxOIfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BDC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774163093;
	bh=zpqRe4pEi21Ih8SuEuy4XiXLXLlBvgvT6JQWqsPkNAs=;
	h=To:Subject:From:Date:From;
	b=WcbxOIfwREJjjN2VKbm4+iWQgp+qqW+n6wmgQV9xMrYb7hiQqhDNb0vWjLTfWSbwd
	 jpO3Rr7uk3tz6d3WFzTQVjZZwIayoGITmqGuV+ZLfYj5yvr4p+RpgzI2bV9ZZ7uXa8
	 c+Qo8cTCYE/H4MOfY3zX/2w75/o9rcn/jaCH/TB6JVCheHr5AeEZuBI7XFQ6rHdfFd
	 0jxKw0ecgCUQtt3fGPNYtR9tlXd1IpRzG/dGpwemdowwyIhCIb4Asq20z2F+DS83h4
	 2ox5yHD0bSykiUW0urI6CHMZ6HqiU5Ea6L1lr430JiK4/zNfBErWDLfy2M0R5SDHKV
	 ZVD87HgcSlKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91030FC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416309357.6472.7672461474876709372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5763ef7cb6729c84556a6ed9c4ff50b25cc60411da2c88aaf0f93ed416ea87d7
Date: Sun, 22 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774163093
