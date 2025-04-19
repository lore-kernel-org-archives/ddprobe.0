Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58066136E
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745031594; cv=none; b=Vuxw2RyoBLTaLaLdyQhxTOXQNYiyv+FWeQw2Enlae+PLnG7VOIMMcaDX3RsPlU1UgFDwYSIB7qA6/qT4GiWWC5VznyaZnKVvU8K1LuymcC0cyAso98KOUiVSLg0N0BeA3Uo5GhgaLkHlAJm7vRkthbKualBGtYUMldG6XWEoTwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745031594; c=relaxed/simple;
	bh=pttqEgHVs3NksKjh0bgX3y97s9a89dPTdeVkmjzPD9c=;
	h=To:Subject:From:Message-Id:Date; b=UWjnLSoo8q3n2Aw1hznCEezTt9gg6gWl3j+fXYDgSYkwoz+4e9qXpmEt9whSsFtn1bANxPg/r11fOW8qT+VMKskCAcKFljIt6BkUGGxEN0iPTCFADRaZQ/FlK7paDH622Sjy0oTBjwky3vqMbXRpdCx5q0x8ysHK1WsDSeEzVPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/vpU5VZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/vpU5VZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42DCC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745031593;
	bh=pttqEgHVs3NksKjh0bgX3y97s9a89dPTdeVkmjzPD9c=;
	h=To:Subject:From:Date:From;
	b=N/vpU5VZv/UNni6ud6Ye3xlCRKiJOVIjsruHWfQEyhN9YKhDBn1ve2pqquntvDMIH
	 wvVqiPtCUlif+xL6d65ax1XETg10gilZj4ImNCJ+6Kw/EB59qqRlUMg5tcKtulCjAg
	 b8cUdG1J/k4gKV9bhZTestldOiOEXSOVGlPZqDulbymUhURUZd8rq68ipc4y/xD7p/
	 NsSKlkgHqE5PSMFBdS+StNvRNp7dQ1aPk05Fk+EfZ4UelC/WA2TaWO9d/Yle0waX5P
	 YhYSOOR48YKhv0mA+6LD6bqsrqdqNs2hPn8JB6BKYaSzXYbT//KfsemMMnqOmWWZPO
	 efSy2Ft6JtEKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEDBC369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503159364.21005.2278513144851874213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72b70e4dd442b425f27fb1fe93b28a42d6e5fd3912e3595433338888a47f237
Date: Sat, 19 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745031593
