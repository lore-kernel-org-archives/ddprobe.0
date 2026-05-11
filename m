Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC0C3A1C9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778479234; cv=none; b=nOweSrTyUvvzmx7U/4vCNEbFImfex6YKxjsqGmm/nv0dkBdPsh3UeV5JI8/ojxlIIMKs+9kTSpPLXsKFHUpMECwJny0tcUWth3nlsh7KVOyfiWjQlfkGSQNABOmyvGhzpmMMzUsITcp1ZSrOfEGrSKEE4j6meTQXp2eJPlUGulE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778479234; c=relaxed/simple;
	bh=Oy10OzHt+Fy3sLkz7Ykh1FL0oM2jyY85awEL3vIlyZA=;
	h=To:Subject:From:Message-Id:Date; b=eXu9MmfgY9waTJxgVCCb+8HveMCgjZ6SYcMrix+6GHtOOgjX1PxQANSe1BZKe/pND2o+yx8AMz0NPxVLobpQG+dZYy0kz7a/BpvNxTzO5QbRNcO9SJ9RnNHwlvzJkXcSekERc9x8wYoj89Ra9QxTqY1i96JaGjcfvf0UMTqNowA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLACJXVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLACJXVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACB0C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778479233;
	bh=Oy10OzHt+Fy3sLkz7Ykh1FL0oM2jyY85awEL3vIlyZA=;
	h=To:Subject:From:Date:From;
	b=OLACJXVAlcMOeTBcLVaGg0OAQfJQnp4NNBkDWzUo9H/8lWaRWHq+HbitQA9XtChoP
	 /c3jFH4Q3ma/FjXLkV0qz47z4ehl3jrlzAoNyo1nkpGxoNAW5G2zmgiQueUvx9wSxW
	 sNxxStsJCiwBhbpzQxa75NOJjEfN9JfunDD3sB0DYFsSDZChqDttGsV/4t4NB+cgBw
	 JncndsntXy23Te+Q7E6hpfU36PV3USWdI7VmSavubiiBhuqZYb9k2TM5Rupy5NoN4N
	 eaoBTRiCHB0vFqYS45ZLJ2vf751iKCf62U0zzdoD80BClXs1sRtqsWVxBBitcOaj6f
	 6nTbQfk0wF+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93DACD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847923374.20708.7015893601941227336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070e3dd746ac76d5e0cf85b297a2a3bbe11e2d444187891646dcbeee11b1c416
Date: Mon, 11 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778479233
