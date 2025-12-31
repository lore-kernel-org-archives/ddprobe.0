Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB41BE5E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767186234; cv=none; b=jF+dFmKTHDah+vfFV5ZTbTBYRwZsvfeKYiVsdGXFCZyeLeWRWEZhNe9qbDVsnK+futbswLqZiH+KuaZlncwfYqIYxBAROK9L4db4FYiRVYi0TZf/wrzPyi2WPJTLOvj4ahLD90fBo+Y50/sKqGcMTD28PxxkhrcDm6104AJh56o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767186234; c=relaxed/simple;
	bh=OtEggPGdmDyPZ79XEkcm+u227E1Uil7HOeU7WXmllCc=;
	h=To:Subject:From:Message-Id:Date; b=an/s4mAH0Dc/so8eHVv3j1KI+AsP3SGTL5blEBc+ROkuV0qAyX/5tnJrvgUwtflHCcah81ave/8nYlRLgTle3U4xkvNxL9qIN3puGVT5hUngvSunEd/zb5iRzkrAzzax2qyV6XQPEGR/iHqWg+uEwHA/wYDw7jmJttQFW83+oc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3gKSFec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3gKSFec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767186233;
	bh=OtEggPGdmDyPZ79XEkcm+u227E1Uil7HOeU7WXmllCc=;
	h=To:Subject:From:Date:From;
	b=J3gKSFecDPFep5DoDksYGuQttcOStY3/+hCB32cVNPVyUuDVTNvpxfEZGawLHtyq7
	 yb1cOeA1i2rG//RBmx+j9q/iFGMo+a1P84LfS/0aERKn1WoyNn+3OEiA378FZ8yQMa
	 +2oZIY9KaWeClNI1MlQnN1Wj/5SZ5HUYLEVqN+FDKLSEF2cZhP/eS5WKXaxnQpmCaY
	 Dgv7NrbfU6WGZLpFnSTfACERoii3GE6/mDcj8TsAZR+dSOvMv93WTvUPCmD3KlQcrA
	 RDdj3a9EmrK2lU8AzXj7FLqCYOlCUkjV26k2jmx6YZxUHLyx+Bu8ndkqTwznEg+GCh
	 M+O5sR2qMEO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ECEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718623358.14694.6301064709682003803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d45a15f72e372c23405f6073b6b8ab66f62a8bbe12dab14d4edc651a25960db
Date: Wed, 31 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767186233
