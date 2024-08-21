Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABB8364D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724253954; cv=none; b=ZsegkdgD7svCzbkiwswcYLe0ELUTmLvtzTzPI8bOMyG4C9nT+3C+RGwej+RaxzOWmwN+adpq9Y8tuDTevW6wX4rzvgIbUKu5KX8H3luwW4A2fPkJQ/VWDfHLqlx4zcMJE6LHTk9Xj/pwlZYoXYBisZ57BUMbeL9M8XptYJp6YLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724253954; c=relaxed/simple;
	bh=kGzJB7CReEldCbeveFybilM+J1rbj7SSZLtOoErQ5xM=;
	h=To:Subject:From:Message-Id:Date; b=FgEju5nrHFCjMlWl98tInLQSqDGjI4rBybRtCCGVEOv6x66Lm9BUfvJxoz05iuhkTQeM1jSf2nXS3Wk2tsoLnj5i4bqZ/4WyslXw9Y6kJU3Cw8fJemf9t15rnWvbpuVE9K2wAnxBy3eJwavvBCxTNc+YIPx/Z96+JygfrRYyxNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkrOayS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkrOayS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF04FC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724253953;
	bh=kGzJB7CReEldCbeveFybilM+J1rbj7SSZLtOoErQ5xM=;
	h=To:Subject:From:Date:From;
	b=dkrOayS+/hB3HDXVCCYQQlAT66nxoEUNGbDcOnxc3e7/WW1BK4/bN6i3Soyuf5k6n
	 VYCYKvQscbTbPNhW9jjBVZN4dy7eaLlOeEbXAZssS90RYHF364O/O+D5id9SNIHf8N
	 AVNjnt9cj19k8hmwGsFE97jURolYkMj0ZCtLGJFEJKbK2UXTovACtxv7Con/1DLo0c
	 UpCGOeiu9XifWvyDZ2KH1hQQjLfo5n65V82y7bN20JvgHqqskMQsiee043MOl14kff
	 RLKKmvFVjCE0Z0YDnFBUB+52H9VNyceOx8Bgag2jK/wdUJLefdNd6CTwjqxsZXyBN9
	 VDiZaFEdQ3WOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C241C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172425395362.5082.14390667315964572041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33df375449f08adea9fe56c7baa3f661d9e1999532a6659502577e45fa790bb5
Date: Wed, 21 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724253953
