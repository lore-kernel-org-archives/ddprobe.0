Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE368F5B
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744181394; cv=none; b=siXuB0aOb6/6QkOqsO0/SjJyb+EuieEeQSR51lpsOH3bqFLvXX28JBpYJ73DyIPzhzlwCAVVien4Gv2Y2AZuE6WbMT2fvKXU6ankfIOyw9d5eqrHLB9cqWyFRCKBvq3scNQBIHmvlr+OHbSZ9D8dDVf3k7Otpu38EPeNlS9IulQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744181394; c=relaxed/simple;
	bh=VEl9YNDDnAnAqrrfOZ6GnKN7AO8oVuX1qFyo70roXzE=;
	h=To:Subject:From:Message-Id:Date; b=W4XEHpb1Gu/FikuiWiK5+XYXJz+jkK7fq8H9zVqEyA0ektegpAqr0a9qxfbWmwOO2ASj2KDTO9X/juJN/gao7XcGVREPA0WqNs6rw59wNHkaHC7Czj35mDVS69ToblQLwMFOzmJvUOzWO+AmK4uobhInGNtzxeh8jNjUHHls8iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y67NeKNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y67NeKNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744181393;
	bh=VEl9YNDDnAnAqrrfOZ6GnKN7AO8oVuX1qFyo70roXzE=;
	h=To:Subject:From:Date:From;
	b=Y67NeKNYVVPWV44hDBGY9MHDitCJYGPCo9WHpHKzZFsB877NwsTbCv4Dxp4P4JoN3
	 pfoxcmHkEC/24How/0FTKxNPh213ovnGpL/OesVWO9zrMkXFQJvyobuopMoxgeAMmh
	 7BKlvNYPuDNBMHddb2KzPuZODgGpzf1kHtgHXu9/qGvVdZ+IC+VU280tfNg+DdwLrv
	 NAbXHjCOOSKlE01w4DWsvvvPJ1CZuFaSJNGD/C9Ly4DiN5rhu0pTCt3TcPjOhEt/D/
	 j/EBtSNODT8gHyyxD751XTJT7K6sQGdPrnpobLYhzMi7L5bP7ru9sGRKHcsXx0Od2R
	 Rc8aFnJeo0pwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FEC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418139359.32748.14699823312157845320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f31ff806a8e86d44a695b41349509873dac6f64fde2e0c67865aedf493f0e4
Date: Wed, 09 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744181393
