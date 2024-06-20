Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F597602B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718919023; cv=none; b=XpB0ia6Fm7HfG+xRss66LAtjI3TI8SbLibkb41Kr6fudr0Xh9oJuLza+2LAH5L5WS955ug+QvhT1u2QV+Z3lgvv3sABqhNvSZ18EODLPw04bg4rCX30IBdYuQcawtNjewUqsqhVYwzPxN/+SGUMlKdbDp+J4X/g3XW66OI6m6JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718919023; c=relaxed/simple;
	bh=JXiF5sq0saIkQzS1MyI79T0mODdht1igIXvBc5GkfjA=;
	h=To:Subject:From:Message-Id:Date; b=BdsDkNOd4LgmpTMYQCaytNQnPkVXLdSBXyRqrDBoz7/xFElD5lq0la/Vf9ZI5U1nwpZDzdqsL85yY7eyO2svyVG09dITA1WHCvZqHywxMEf/pd1Z3cPr1vk5fWj3/6LhXAu/9TxZgl8g/IxbT7UWNzXcG+/Nal9zj6K1S9DSFGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hurNGr8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hurNGr8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2748C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718919022;
	bh=JXiF5sq0saIkQzS1MyI79T0mODdht1igIXvBc5GkfjA=;
	h=To:Subject:From:Date:From;
	b=hurNGr8SLWClZAi0++pletVruqhC8zn+YaMUVPe0O6nfQwnm4f816BG//fWKbcPWL
	 MZTh18T103c1nS4HZUlJAiMKiNMnR0/9SVhf2FiRhSjQnlxzcJe2WXJVo/1DVQ59DF
	 4A2VtDOpvmy18cU1HWEscckU38OZBVfXyzKXttH2j4fmDA7zBaxHtPSqh1iIqNrJD1
	 +oFE8WVVCYdatsxLUkRSL/P95NLq3d9s8M5xFLlU0ZRYdNnB/7eHtriXfmYLzwaQsj
	 cvA10FSBx2WwA2EFOiWTlfrQUda383UNImUwoynwBM2uP13EK+pO/AKOLtKSJbxF2m
	 /Kyxoxh7kfKCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1AE1C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891902284.28146.6309053782462030661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8509a94fc87a122449c4fdaaca231c644e76379c4148a70bbb9ed9850e386b17
Date: Thu, 20 Jun 2024 21:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718919022
