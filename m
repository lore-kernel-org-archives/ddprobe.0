Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7AE2E7167
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762904394; cv=none; b=IMV+/B7w1o4RkesiTZTo7k4Lxx1KbXaMhDXm4+fRZlK8fH+uvDj4kslvyg15PSgqDoWoDRdBgKcyeG1517WV5gm3Xeo8MVwwy8w2YC2K89AT4NOb5hjnAVrxpSbADzXtgGa7j4AUh4fVgdl6mSdgwceyqMYRwBJi2MeGa/7J8ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762904394; c=relaxed/simple;
	bh=My0CbN4RBpnl/TAVYzo0JIz8U2Az/0BDk1QrPeHToUA=;
	h=To:Subject:From:Message-Id:Date; b=NjkmdT/C/Cawa7FkRZ4p8g5AcozrSNDjqYMmcG8IHtJJNne4N6V3AXHOLn6IYlHQ2szYYxed0VYjgJgoGFG3Sn5h7cD5HAZzUIenrViE6WI9OL1NS8meiuuhO782kdACdJfwMwburQTd49fcmn+GiLNbmqR/fPzlFjym7d/U4Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw2+UYjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw2+UYjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA32C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762904393;
	bh=My0CbN4RBpnl/TAVYzo0JIz8U2Az/0BDk1QrPeHToUA=;
	h=To:Subject:From:Date:From;
	b=Tw2+UYjYWYMrqEz/ESTritU6TZQ6Nlal/zD52M+9Po0fs0YXSmhvZJ9KWYmr4pIba
	 BtzNyh8rQ2hrYapQ8qU1+AmRfUWDgnUBU7Rc6F7Rb2dvP/mwKcqmt8Rp3YXM4fupS3
	 qbsHxtlTT1hJyRZEkEClOHoI0p65lduEIyBtqTubBBG7pVKfSp0hMnE9rCQkcVP2eF
	 JKe0wyNI7gfC8awioO0wUuBWwueqygDoWOVtUaP1Yoym6MVJWVBS8KrTpIG51vcIFs
	 7TRGCtjC4PaEoI/JOGVZLycX6u4oT6A+ENE7EAIy7SUyMDEeHsPQsO4R+lE6nOQCOn
	 KfYBqfC+CX8NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290439357.27257.9633668368545436516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50b74ff85ab59639ad43a05b7b1f55ab9173022e55e7b7fe087728ad6a04b52
Date: Tue, 11 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762904393
