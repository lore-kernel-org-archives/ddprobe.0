Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1E4214A82
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743442794; cv=none; b=dgYpziqYOhH21LuzzLE09sF+GeLHPRO5bf4CMNxRhOlzUR/8WdQneOI2u1uYbSJAJ9ohWjrxIlyk3JSiWbmWzeKAiYMoS/TSICq0xNlebIug/3/vP9n8zK0ECevqSfbfWCJG/m8F3QcjyaRbmtu0qFjSwEHkz4zl8UfSZn5xP9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743442794; c=relaxed/simple;
	bh=ioDNWCY/csRyE2OJNGdfPsNnpGM/TPGEnjYJwKON9W8=;
	h=To:Subject:From:Message-Id:Date; b=f6Ioebk3rtKqrLwmqe7lKhIlsITPOaZAyx8v+twGJ4TMMba9SEhyd4OBg5hegVrRQJNX30PGB1jfXH0gK6VIeJ0Zi4GwBzOC9XD3T5M0yj+/4kVYSW4rwsAu+WrilGNAzNpjZYpUeiNGHS841VHGarw3/jqo3MIU35bo1cPzwy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N14w3ozF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N14w3ozF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A83C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743442793;
	bh=ioDNWCY/csRyE2OJNGdfPsNnpGM/TPGEnjYJwKON9W8=;
	h=To:Subject:From:Date:From;
	b=N14w3ozFgOcchgJ00FY5dHiP/iOkKdhXjEdhUUlVaytOMZ9pmHnGT9VetaxVGO6wL
	 EnJBJmtoQibna7wDsmABNPyTmkeHh1D5Ct5JOZRa1Zx9jLFDkZdcbH/WQE6wyMMtIF
	 M/6Nd5C0scfn0mcpef04q8Irxpabu9j+cc50BivR2NO6c2vtHFoyt0OjdnFpTozhy+
	 mzXYr9lm6QN1HztZ77ZUe3JYwdb9RL+5BEiagMlGIbe+0vMDMjNoQEWncfORswQIKh
	 3kmG0sntULUd2TNueHNTsBEcHK1vIiB6aAG7cqAbw7cjgqmkUteF9zqoUeaD/EjtXQ
	 mwVtU8AZ0cAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A147AC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344279361.21544.15708996717787063297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969f80639068fd3f4dbbf16d410804928e7a3e067e76ce437c9a2688cd55f728
Date: Mon, 31 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743442793
