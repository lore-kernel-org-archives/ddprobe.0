Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3715B1E9B2E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742728195; cv=none; b=k9M2RMMYExj5YjRbJX/toZ5EV/qw0yzY2a9vjoQ86egEm/A6MAIH0SCPM5+WYKYjYRxux+1JLS3W2UsqxkpEZ1qVAL51qetj4a7OP5jvsb8oOw0nIjY7TcMSmzTasiaRE8q5s6Fg789KYXuUPgfN7lI47HXYPUG+Rj08aWRPNg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742728195; c=relaxed/simple;
	bh=CC6KH31WKdeBX/lxa2o8xYaomVc1YOsHvjBXuAM9fKk=;
	h=To:Subject:From:Message-Id:Date; b=GoYsSMENuXzopfeRbV3lvze8f7ee1eabS+t3iEpqFOdkdbcwvVmD/ZR1Ff0vLI6vwz/yl21DntVZehVvhAehfTwMv7+N4WpwFMHWb17CJ13wf+RJZ3oeJAxi92QV8//zoUVjCLZkaoCSWu2RLqPQK3LvkvLz0zt7NvswKYz3EWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dg2BT+k+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dg2BT+k+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB81C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742728193;
	bh=CC6KH31WKdeBX/lxa2o8xYaomVc1YOsHvjBXuAM9fKk=;
	h=To:Subject:From:Date:From;
	b=dg2BT+k+tWwYoNfMzRSARRg/oQML/oRmqgbV62BPsWll2i86duW3R8vliaRe87DQ5
	 xgqC5gd2b95RxZCzEcBn0gb1Tjrid54kavc8AxcfLU8abyYirCzKkGxCYpyId5BQ86
	 pDA37natGw0DVIdlLOO0iVTkTqe7UCY2rfwPHbbqN7/QjldorUekggswyHFTO7uB8M
	 cG5E4eEi2qoO3C+3T7QXJKTkwZoTV+W2luDrutHflQv2ikqZT9q5U67tzrTKUo0KwH
	 aoxNVB9O5Z0mt2maC07QosYGcyXvRVAk9OzgT0dKzrLhCLp+yb0iOyu4kGYLQh9NAC
	 aT724JCDMxtqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982C8C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272819358.24673.1919375865324720069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23914eba95eb831dafd84897b6fa689702d44517c9f298104ab224cd5597717d
Date: Sun, 23 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742728193
