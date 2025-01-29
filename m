Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7903C38
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738158354; cv=none; b=en51fTTKjxK8PU1Lgcp0JRITM2oV5a7zfaL3nvCiom/Lse0b8vWcEuC8TjdL7U5M6xTugJF1Tr17YYFRxrkma+tS9WmKXtFX5EahTMp7xIsTh5R0tOaEoqpCWbxphuvpaUekg9B165JZT7UXqa/QJi80Cr7TBjUEhQnZIT8eBoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738158354; c=relaxed/simple;
	bh=lWRE+AZ2i3hpxG6C6XLtl1/Svb5vVV7H3S28PpXVzng=;
	h=To:Subject:From:Message-Id:Date; b=ba/9YUus6EhXWtsqmkzA8kdJrcpFCtEcwrdICu8kLmp2lo8KiB8AOABcdKWFFSmE9Xx5yCvU2i0L0NArrMH6432emCGQT4OMPcE5P1CTsM/StXUdgKZdX90EKQ4mscKwvvzIGeZxAe4ScbyT+6BUIoU9yFhoaay8uFrazt5s0QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj3guT8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj3guT8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1D5C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738158353;
	bh=lWRE+AZ2i3hpxG6C6XLtl1/Svb5vVV7H3S28PpXVzng=;
	h=To:Subject:From:Date:From;
	b=bj3guT8eURFmeiMo5EOZDrWCJVUiwhUOJVYAWW+SuiH9eUFsCcgC/XY1D2muaQ7q0
	 hT7aCnqldWpHJailZTuCSC7ACBV5miEBD/0rprZSDOvXqhPdyhq9+tcqgtRnkZdSaF
	 cdZ1ou5zKBA2GJPEIq6+bD6fw5MKOaB0k+uzGCUmWaXi0HxqgaoJ80MLhVXnSJyOmN
	 Yas/FJ0X6m1rKvOcOo/evmgKQMvmvYB/IX55fy0JOlbUARJ2YfDkRVMmhM8LVfCVjZ
	 i7Gs9BnmRpOmLqHZfMOt8X01ldV7hIbS7kUfaOoZiM/rjI5hTZrd3Nff7WiceWFHdq
	 bbkMU+tjQpeew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97932C02190
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173815835361.3237.12407086835453359921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1522ef6882544c0c2443758535bcee1220c52623da0b8cc29707e0f956caa986
Date: Wed, 29 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738158353
