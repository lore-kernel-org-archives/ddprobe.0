Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11993364E9C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776403654; cv=none; b=O4p/6DX4uikOaM9KKVWdTeGGKfau7x02L/h6v/ZpUWbO+2CA8valRB1LiwIUVkWebYGrfm5R9bgrXAKHmrvTIPMnPeCgfCb3GxagbT6iBSMWG7r51aUpVYwLXKnNek9V3X9omRnZ/ULikO7jmbenbPOfW4AQRgBQfQOL89YYDAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776403654; c=relaxed/simple;
	bh=+dSXtGhwDvqllFfn7dHDPqZHGoSeTOxfncRxMOeEess=;
	h=To:Subject:From:Message-Id:Date; b=mnLuH9Jc3g+m6Ag61MtzmAZeoon1bs4SZPgKwZWLSxxlLX9ifACj13ZlgW6/ZH+zVYx1sBw4qu+Iod54K4Oc8wt+Yy//nSp1tS8UHcK94S6fcyDSkX6SSZBc4DnicDCyOFpuZxK0sv6gZbfHTpBC1hPAitFmOmxYyPQv4hLaWr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7wsZOlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7wsZOlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7702C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776403653;
	bh=+dSXtGhwDvqllFfn7dHDPqZHGoSeTOxfncRxMOeEess=;
	h=To:Subject:From:Date:From;
	b=c7wsZOlUtQWofBYGqgHB0u+YcV0kC7k9ZM96GJkacoapx5J9DJGKgVQq968gTZLyI
	 vX+BZ7p6As3Ftx6ff0Zhr8QbfH4/w7UMM8I0mp0j8/kkNikKgAdnreaW93TFQR1yk3
	 z2xAWrQVFuMqvQo24SgDDC4geSMpNJmf14eUzshPobkGbIwj6als0jWb03m6KvXfKL
	 ZzJdrSxyQQCOMUFFftjEmleorSeHuE7/70aNQAFt1puotnBzDRuV1ajWXflijA6Ss1
	 r0K7m93zSt+YMe/NSVznZRQyIpxVzo7vhaVz4/T7RwEsDhdcYP+YgoTYhZg1f3F8CM
	 UleVulW61vYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D47F8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640365368.794.1967641004945949817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bb9851cd02703e7f9109bcbecbc9376577ba78f58922ae09def90a2d8a27c5
Date: Fri, 17 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776403653
