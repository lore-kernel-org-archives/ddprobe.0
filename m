Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F967263F38
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759748394; cv=none; b=X0bj73vBWqtQDpp6OsHuSBRDfWqVbiRXU+142iILh5oCzqUvYQ2t3Dd7io1ouHaltNrsVmYy/LmddWVh8UI5hgOa2IoL90hrSPPvBg5i87Vf2RmGb3t0jtxcYvR10fL9zNvWKCwDkFcb854Zp0DWMfOfQfGsVeMH0NmCUGRqLbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759748394; c=relaxed/simple;
	bh=ZFjwZ7ennGs2mZ6EPM1bqCUPJxTj+vO8VspxbdFfhC8=;
	h=To:Subject:From:Message-Id:Date; b=dGmJ1GHlJ++J3ND7PAYTJYn7psUqg1GdWlwOiXvjhzGjorxZlV2z9F020pSsjaL0rLzRGunPid4Z1HN8M0aIw1cB/aWpgHYryachuHv7rjAIWB1eOj9EcuNybHhXRbl9itsTmDOmJukxSqGsee0srClep7VqWgbvo5/QbN9JzcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9hP+dxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9hP+dxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F46BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759748393;
	bh=ZFjwZ7ennGs2mZ6EPM1bqCUPJxTj+vO8VspxbdFfhC8=;
	h=To:Subject:From:Date:From;
	b=b9hP+dxLRkN36cPZBKRIvNHxTPzdzOAhotVAzA2DVlLja/AkoXevJzzdXvX8VOBY3
	 6o8E1BXYUQqdp2UNhFV+MA6GZsGG6Q0sEJpZqCglbUC70Go6roimbdnxyBZ4ITBaJx
	 UZqyovkRm6nEBxdsnH7/CpN9/c1mmq9l3e0zyuQKk31XgupVa/G6l+3h5BWuf4waoX
	 a+XPPnhZI+o10HnVZA6f+RNbpMXwhK+T8Yn8kyahcOkYKRafX69l6SHq4kmM0nCv0e
	 HwZmqYlFhuhaa1htjHnj3g1l/0U7Vq8Ev0gW1d/8LROmTl3KSGepcFEW3ret9QPmi7
	 OKCrIM+TDAqhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCDCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974839358.1932.16811701594444154565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8c74c5425967183c6639b6c6cdeeb09e3e05ffc071a42d827bc0b5d6dd1ff5
Date: Mon, 06 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759748393
