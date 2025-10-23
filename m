Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B9417A305
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761200394; cv=none; b=lD9rVJxhMX9Bgx5HQwARenZcntdlQKwBXTfh/fMh7aG4xQB8cKrAoYti/+55760hp9uoBrBfF/lqPBBi4bXbkWpr9Cx1Vn7FeCBMPmThf/b/w5JhTnTz9yxddcO5MZQjrJE0r9vpbhMpU7yMaqtRRyMvgEKzNboAk8FVXAI6CqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761200394; c=relaxed/simple;
	bh=VN45+6o6FXgH+0DbOen0ALSZjEhS0NF4aUewoUu2VGk=;
	h=To:Subject:From:Message-Id:Date; b=JB4ShlDVaOx6TY/yNNPxiwZbNrG3uvU/Y4r8y0Yt/CkMn0vk6evLFjXRa4gr/UcvSMOAf+i7gtl8jJUfjLO/7jUMOUTXHG/ip9pMTLaZhx7elFbP7R/mYt5V2ySPYh5Qih3ghqFA0hUYLXMYo+KwKi1SN0fMsNyLw8YWvBjwWdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utlvA9KG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utlvA9KG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E18C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761200393;
	bh=VN45+6o6FXgH+0DbOen0ALSZjEhS0NF4aUewoUu2VGk=;
	h=To:Subject:From:Date:From;
	b=utlvA9KGEsvYLEAEh1k+c2KO+zvdD+RCyPOrBgip7KULfNxmqZIp8llgya5dZC1CB
	 PpWt9/B1qm08zU3k66seLkylJqe3osn+tWf4jLtsdF7f+4/dnde+xuXFxj8evwtogm
	 USJDUByQfl7SXS8Z+pBKheOQj7DvKJzpXW2qJLN8JNndU7Qy6SVQnnPUJ2t7iG9PbY
	 jSY2cmvbr+N8m6QMuVUsVn6AwUVzEplBDpHXHrHmrNbX841BXVkgyBk4GeOSrmTly2
	 +O6WJf2VIdm8cAR+SK8peTEHf5imO/EA/SN+SU6Cow8aEf0RvbqdliOtA1vDQNHnUl
	 QvMsFNC9XDtcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376CCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120039359.440.16227214560155426771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2dc880cd4a11683cf56dee4c2b2173f917abc678d63232892f3b655d6a8ad6
Date: Thu, 23 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761200393
