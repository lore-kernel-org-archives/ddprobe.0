Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1113F2AD20
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768115634; cv=none; b=FVD9Gm85k/oDytND+6sAD8LNatUQiVTCkWtvKsRTmALBp/CnAo2SgfRWo7vq36hIaBoYSIEm/olfpC2qeGQdx9FLowLXIYda/AvyuKyK02Mk9hDwQOlVh0vCQ4mAZ0+I4L/+MVVrRNhV+0bNcFKnJH4dr7LaX2gI5pkYJb+9YGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768115634; c=relaxed/simple;
	bh=nbos8FZh/rycNoq2fAPgDzbAX64S/DcRnFvo6Ol8wLI=;
	h=To:Subject:From:Message-Id:Date; b=lBPipHM5ro4zDJpVep1axbfm+Gf3VbSkgAZUeEzkyv8+xFOvcqNTQnITsTMaqGRszvFHK9povZB6ucF4ZC7z9gBnAFvgKlNeK946/BYi7HCNfbEvmdj0k82QqyxyKlp3kiSMZKi3YlyMbNsA/YuTHKcfSPCtThzgdiQpojNEZUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E79ycOKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E79ycOKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A4AC19423
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768115633;
	bh=nbos8FZh/rycNoq2fAPgDzbAX64S/DcRnFvo6Ol8wLI=;
	h=To:Subject:From:Date:From;
	b=E79ycOKaCeawZ4RjwvSKrNogWDeJ3g/KW7qZE8VCCxxyAVgJEuZ8yjhKhtTHygFzT
	 0JdnjjyqpArge6s8iQhGP+nNLEuOt+r9UILfSyTFQjBDQYiZcgWeGnIFTzfEPoQ7gJ
	 wq+YIhV4JJvnAzDoZnO40Em208YaHhdh5hFWrbj0DJKvjhtSc2HMEn9gkLGcJc9EcB
	 poTg7xsw1iSKnmu6Tvhsfv5kd3HJU10ZOIg/A5hgEXg1vdoYoAPlnyuTcp+NHaMGB9
	 dTIq/zMdsUpioiAWe+X3+uodhG5oWbLI/jbbrL64IYzMfLANF/kjerpN5eSw9ggCc7
	 8orTUfjH+Z+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E8D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811563357.29467.15984766753436862513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127f9d25235160e244570a872707e956b2ac97002c30d074edf3456e5b6a7bc6
Date: Sun, 11 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768115633
