Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80524B238
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736595354; cv=none; b=rFh2koYOaEyHXNqpUQBJnqhEBOpwSmCmKx4qK+BQiifFxbJlgPo2i9+d4m8OSR9IGbmbqZZHA4vZSMYG1XJDYBzFrcl6eJhj3SsYGvPhp3wqTF3VZnCllJ8+qPYkIFxTB2bEhF0sGpgy3+vcvEmkk7TBd+QB5JWv/BdxMOw6AFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736595354; c=relaxed/simple;
	bh=Dr3JbMhwb8dtQZrsR05i25Z+W4uJAqlIU4l26th1yVc=;
	h=To:Subject:From:Message-Id:Date; b=Ep4ve0YKzepk6i/X5MIfwOW5lntOBQjc0ZgJbmI5EY1nAk7tBLeJ3DEIms333v9gsQrx2ZhA6pCncJRX+d2PeOqy6D08CMhaqwJEBi6hUo2elY4vTPecT8ArOcrX49qcIpw4J7mJHMivyoVc48t+95BWAzFlXOog8GH1xZfk/js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6xfS9rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6xfS9rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DE0C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736595353;
	bh=Dr3JbMhwb8dtQZrsR05i25Z+W4uJAqlIU4l26th1yVc=;
	h=To:Subject:From:Date:From;
	b=T6xfS9rb3WVIjfhkG631ulu1OH+HY2xy28Pn0OQKmLtuJrS3+7G7YX033Rr/I3cMI
	 g7K4OIrqIcBNF97VDCkIhAkfdpJoP3Z36xCQfPMrl0UMA9NKwLwzxskusjU+StMkFV
	 nAHdAkmwA1YCBQoH2u4sk/BmCa68lHTb5DgafYY/If93AUDNhtFzz+efC4fTXAPtA7
	 aLu+DBlSctSXgfBf1YGRTJOAtLff0nVri6vQlqD3bbmgNdIKYxDD2bQTi4bbFR/GyN
	 F/6JEcSItJd7+Mohnm0+Q9LgyAKHdzcTihRUfZKLA6VNMB4nEBF6XRBNnclqZrT5I3
	 ozx0TRLEPwgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90023E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659535358.27231.16156177094841111057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfcccccb9e02a2545de88387763e7e508a291eee7620b6bc6358f4aa9978f67
Date: Sat, 11 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736595353
