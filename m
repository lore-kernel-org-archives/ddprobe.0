Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B9A92E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769400234; cv=none; b=ChlpvEsFVVn2IwbGeS8wlM7Jjd4nP5Awok+qlHapECvetnIPeOZ5CbfF+UtlPQl0q1xs0ea7n0c2AjG2+jIpPttZbbYrrHfUO24zl0bHCCv4UVtfWBynt/yzJr/busR431x1jHsB9TuDlMJkJGMNObsS3XLA6K3U89zH97EKoQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769400234; c=relaxed/simple;
	bh=+MGxBrqFOnJicvmRBbMxQvDBstYEg6BZj0But6cFNfw=;
	h=To:Subject:From:Message-Id:Date; b=JV2H5FqGeuWZ8WZZerbyCTBrOl31HPQJ6LGEPO7kaXe6O6/FZMDe9/GcLCdQeAYWclAexQ+FghtAQqpR22gCd9QPLzoi3foCc/nAh2qBojvzhAwlbwBXZNipeEt12DBIHrCJZTH20weKx6CBmRA8o0uLQv3TAzUG8hckDPGgJfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbtu5VvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbtu5VvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A265AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769400233;
	bh=+MGxBrqFOnJicvmRBbMxQvDBstYEg6BZj0But6cFNfw=;
	h=To:Subject:From:Date:From;
	b=mbtu5VvTq6RYeR+9gdo+50+gYIgAkTEr6Xj1sMr4+K4h33JmiDkREImn1V1iYNCvA
	 p4fku7usLrvRdb7I6ufAVgWYxH0YuJv5WrN4WzZQH3Eq2odtEJXCrjQZhXgJxLzoDJ
	 O4/fQGkn2nAJcRhuXK+MLKbH5/pzpwvNoedbFxK3odzLdOjUswsW26Z6nYhS/qvZLT
	 wKbUKo4lBXo7jkeAiZSeQvzOUuJyfNGwhMHvqwbikcsm++0eMgCDUmsRQyFgH76AI7
	 jFqhoUMQpLAgYPdL7gdF2TNfD4hgcBroVGSH0VLu6RzoHrllmlzo/OU+0tkqdSDHS4
	 /k0w5/VhDUINg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69CC88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940023357.28749.7814647964454419582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcaecd72a7c44933c0ce272d88a84b9fe16b7775a2a986c19aabea09761d59f
Date: Mon, 26 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769400233
