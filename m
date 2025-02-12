Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3903025C6E7
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739384334; cv=none; b=iTU39pB3HdTa0QYY4Go4jXHrk6uwBlodAL8Yd0qIA81a3ZvqEzE4jCPG93YAzrzKpUXjSVyxIqv+7xwvYBCMmMyyKs3iroO5tkBERhFuMC8F8rHHFsrikxGolhfzD0+q+5d8ATpYz76ihCCZaRn90xwjoZ+NtztnuEtPbiEpzC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739384334; c=relaxed/simple;
	bh=2cj4LlGZ+UqlSqd6O3MLpTWC8C30+9fsRrRDQIbKoQk=;
	h=To:Subject:From:Message-Id:Date; b=gkWLz1ZvmmscjftFy1+h0gjQEtHBrH3lbL4Qx+HLbpib0Aexp4Z0Qc2bU+6c5QVpCj+ST0CJqXEpYY5rcGJkk1K8jRpgcS+677TcZHbzNLPw1c2aYv15+cG6oUFDN0uiGJc9CNAGloLBYl+/qFLxqtUzZqvQEUHGKeKQoe2OFmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvUw7CxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvUw7CxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E2C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739384333;
	bh=2cj4LlGZ+UqlSqd6O3MLpTWC8C30+9fsRrRDQIbKoQk=;
	h=To:Subject:From:Date:From;
	b=uvUw7CxCnZfdePiOHKox5M18p/XMtxReikSOjVYvO7cIVg+uR4qR9WFyMZSAxWU3e
	 sKjkQvfQoYUEDY2nVO7LjhQTZKTt1sLjZ3VMtNN3aEwcLmgDblJCpMyPwYFIol5Rqi
	 hYuyrMCdJr1QQg54yP+W9FVpaMf3E0r+PNzQ0g6fwLMZCfLP2kI2/Zxk6JQ02Yqtvv
	 yQBiXKtW4AhK5MEkLrMqIx30KKAH17xMtBGbWlyzWDZWniuF3C7EKVyc7ixF4LSVRL
	 5sJbY94wKsHNQK9rZFYbbSCfJ0RDzW504z8cjSpsCyxk6RTCjzU+A0zXsW+z+K2lJX
	 7Yij69LyEmDtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9808FC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938433361.6888.7905182849325475780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67da11d5f506b2c5c3897b4a1db118d8606fb113f156a9274874074a4372bb56
Date: Wed, 12 Feb 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739384333
