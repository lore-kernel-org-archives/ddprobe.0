Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A5D748D
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738862154; cv=none; b=dVgD/mbFmGYJp3VoZQqoe/yUTd3YUBueVSVxr+Y/xqX6/aqrWXAkzg2qKeNTKV+sKYZq1xEBC3bz2CWjTmWGV9bwAV50ILcxZRtqT2Tt7Iuazwb8apKVUsCIK+V7FSiZjuJTP80sp3zwr9U+QojTwLw2AaCmH9BKa2+eQ4GbzdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738862154; c=relaxed/simple;
	bh=K9Ggof1SVlB1JS2lTQz4DnkB4DK1InWfWwasHSMQSnE=;
	h=To:Subject:From:Message-Id:Date; b=fUqQgBjq697rGfenrgYi7ZcU3N2GW5ZoqIBXPy7U3p4PQRL9vYZHRXzQFTZH07yLirtnUzg5mBW2Cs+MKQ81FAQmWtBxXDnPbj+dMG+P9NeumxitEKoG8Y0H649CncXHHXKvm6DF0E9NABy9sijH5oW1Az6H6YhdQ7Z1rYGqbcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYDXFADT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYDXFADT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738862153;
	bh=K9Ggof1SVlB1JS2lTQz4DnkB4DK1InWfWwasHSMQSnE=;
	h=To:Subject:From:Date:From;
	b=JYDXFADTEAPM5gtAp4b9LwSpUaG/9cYByMaMOswAfTvGCMmoGgjewho0rSAGUilvy
	 TAixAFdx8yQvWNzYLHQk2szJ+wLCp6Ghpw8bZxRF6+58mllpBNlNv85ZTKJ8dGOMe8
	 DBhX50hub/py76eYnzy5yJPVYYjTNvZTP2Ie4W1tk5uFOMzYAHInFjNiZMuPD1jais
	 loXHdXSNogF1w0Hk8m83whzJ+1oZ+vK5OAqXpgUDrNsoQeZ46y1wvSQQT73E2TUqZk
	 RQr3elzAmAyJ35d8BEsSZQyHXH08PHo/qn2PegKMO+KOOZ1qHuqI5nSusEy2WfHA2E
	 GuV37AKeSc+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E31C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886215358.22251.1576587167849589020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a686d846922d9334e3d25d523d295993770343ec06163c096984849a6408e1c
Date: Thu, 06 Feb 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738862153
