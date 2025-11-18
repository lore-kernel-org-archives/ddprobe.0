Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4586D25B30E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763425315; cv=none; b=Bnc1ubXuyMYMsOYqnR6LGCQqYVS6+QLhov6i3OHzg5QerWzgeFfIwbedB0jqsx/dMv4OAbKG5zQuBYVeRyEhGdj7Cf36G+80+UNIsibsy4wYh9+BFwjEyDM7noho4I+wDM4xFU4yUOYjV6z8dQpGIsxmn7ilPNArRuhKOBk0LD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763425315; c=relaxed/simple;
	bh=SvcZff5vtW+Yd0+8S9zVL/Ilg6SSKHbvxWXtGyKxD/k=;
	h=To:Subject:From:Message-Id:Date; b=X4I1NqmN/hqdIr/0S79IkVPZzkaAlrYkQ4/5MQUUiWcFGFBo38M7edWwATvx5MpQ8NMaHOUdhvYpnYaHi4a6IMkMGspcfYDJgcNMd9qKfgRlUxe0ChHDfiFtnVY+bl9/SJRQ1lBmrYo4o+gs6+5rj/prTRI9BRSoKd8P/1mVnWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neRlfw1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neRlfw1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4DEC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763425313;
	bh=SvcZff5vtW+Yd0+8S9zVL/Ilg6SSKHbvxWXtGyKxD/k=;
	h=To:Subject:From:Date:From;
	b=neRlfw1/JAJuEsLW3khnnsEqwGOiNhbj3EyEjdqB7YSdYP1wWf51rq1Cf4B2397Mg
	 yxwA8jbwlRYublwCO6pK8Hc8vmQBl1hiwE5zHJo17SEtEgUtyCOdsvOgq1ZtvkO4sq
	 r18TRNou7SDCS+LK9uASP9Kd7yrL+w/ED+PUjluA7u/KDFQWMqWl5iWCldyP2YC35b
	 twY4Eh2DvBIo20c7oWdwhXLJivhkvPjdKjhZzxWh0i5a10n68Ubcb9M9fetW8265co
	 /xkyKOiR86RhmScCw3+ie3Kxyz0903HZZM+jzuIfXfXZR4+V+I5phixmVdcYIrNsxO
	 mGUidIdzGByxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96571CEBF92
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342531358.2262.2068440783729184797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76777762911c89323f612ac43c6891bfd1a86a36ef1b404376f376e02121868b
Date: Tue, 18 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763425313
