Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF8E181
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711758497; cv=none; b=tmHD4ppjNzkAYeMrohCoTBzf7JtYJfhbmd7Osgt/DrS6lIN+mR82E2nKQqofXBKWYHbd5Ja15Fmh61/gqd9lXew+ZjOSl00CtNZVDzYOYCxqXmFCs987B1Zs6iMzsoCa/VaKtK4hFQ9GjjMHqSEbuAZpJz29CEpq/yODgPFP2ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711758497; c=relaxed/simple;
	bh=QecRRW4ahxzyZKMVnwgp9BuYYeT2NNyDgsguejkHNLg=;
	h=To:Subject:From:Message-Id:Date; b=g6GC/xbqm7gd1k69d4RiaV6bwAv2D/xEYNLyF8tLbXI5wyTC9xauYKzTjN36DNDwEZIQn+vvlHGel65Y/rLpRD5NYV+lmY+2sQGpdypS6YIWC5JJVArTO3PwRcnoYoZW8PFeP5rxqSqzx3MztpO9zz+9VeXeZVCgzDXNSey8sT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTqUrLB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTqUrLB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7C8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711758496;
	bh=QecRRW4ahxzyZKMVnwgp9BuYYeT2NNyDgsguejkHNLg=;
	h=To:Subject:From:Date:From;
	b=iTqUrLB70Ljy/KELer7BlgKcbrQDP2xsvldLdy01MO2zdqF1s6FSOHevp9x1Nlm6f
	 r7y49euzjFmKETURtN9ppDLw8BSY7M2Pq/iv+tE6mYkmVqQXG1G/g87unGLst7ChNf
	 6ih9Egows4rqIx1/HR9qZCFUZe3I8OwfWz4vjsbDXyo2WNgvVZaQfnjg8WAIaBAoQh
	 yeUTSN6yGIox84ViqNuzCdW67qQEUlw81/jih6xfp4Rr69kZAfWkiOmqZseugMsdUb
	 f93gZjnxiVLYj3vlTqokFm0OqYYmCUlqg2Gh0mnT5Gb0ywvGRZfLsydl8A3IefcMhN
	 6A6/XLB3VCkYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B7CC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171175849639.1728.10168027448402275319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007beaeaa64df74d10df322023c8a44e8b09029254f2f549510067c5d20fe8e2
Date: Sat, 30 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711758496
