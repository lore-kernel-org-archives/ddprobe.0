Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5156CA3F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717907243; cv=none; b=cNIpeYYSMkNLlJ8ZkibKcsBlM6tu2q26/ivDkJSLklxo2E931QvwH/SJM1MWSh7mW+N1sHCq6ifIuqYFysaagTuAtDbTJkZk75DnNVj6aZttLcHa3qR3a5b9Yv51/kT8AjOXmp6TDWzesOtkBIPajQXRgsd6wHo1XMmSrPkXt1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717907243; c=relaxed/simple;
	bh=Hh8/936gO2nr9CzucynGEvSGKwIbXRpXiGAww88UgT8=;
	h=To:Subject:From:Message-Id:Date; b=n06MOB/Ztop/tDo6Y/U9zJ4xeaiMWs192P3laIg6dwCg3sd5aELzVrCyqom+7R1LGgEMYcxY7V7NCUqNTy8t6u1wKnq0D+AMpCER+4+LgoutUjQONrUr+ppNIiq7ERekUYiiuUnBdVvVuiXFbyf6Pmsxrg1QC8rM8KiIicoKS0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0C+YkYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0C+YkYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCC6C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717907242;
	bh=Hh8/936gO2nr9CzucynGEvSGKwIbXRpXiGAww88UgT8=;
	h=To:Subject:From:Date:From;
	b=W0C+YkYxG8dj6YbLaZveC6KsPyHRQH46fHlZikI7G8BUbdAKkgcFu6T9WDGV1a8/H
	 KD6uaeL0xEUfhH6UR003tt6Zlhpcn3CxJWXepOto6ExQJHgBMV6/5QDZJc3sfpCHtU
	 A3lFBxcwdP3R3mJQmKWFH8O5ir39+DAp9kUsfv2WGNc/2Hdt0CbqGEq9aPHJqA8Ucj
	 YuEd/WgupRM1Ht5wJNKh1FMXmtv8qlFdOz0JJNyUTBfnWoIdS7Hh9BFPwKyovRYcvW
	 B01CETdS+bwuHrICgm6jV4wOyjZ4uCMkKRwJJQ1O2pFBiCQWbl9Sy9sYhaFIbACZM2
	 3HNQHVze0Kiyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C906DC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790724278.7435.6786947795281968778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455705e6af4bf6cdd3aac989414fcc71d4cb210c0c3324308aa628b86fb65d3d
Date: Sun, 09 Jun 2024 04:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717907242
