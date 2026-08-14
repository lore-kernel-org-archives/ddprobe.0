Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BFF26FA60
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786684234; cv=none; b=KK4iRk/RN0PyfL+9hMvkxtYU9hf7xwqdGSXCwbjnDD293YPwWLJM9J9ko3ej9BeNhlzwzu832fozVJimeGZzC6cnQCJ8LDc7oDAk+zTiqABWiZFURvzZS/lnJ3LRZcIetglEXng8OAHJMj8iQieSU+AYj00MOp02COwbmXm5RVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786684234; c=relaxed/simple;
	bh=rcBlRdl8WwN2bTrytA98VwtAVgeYVACdzwpEBVoT05E=;
	h=To:Subject:From:Message-Id:Date; b=BJST+34bo8MeZHNgU7jJhaLivcP4L0ozWMRJSwki7OVyegt517Z1pJOTtgFOZ14s3+amu+JNyjm1FbdOECbUURVsztweIK1HFFB0+/DIs6H1HbpfTCJobmhqwHXtMwTGHdBXWsroTgRu8kJWZcwBrl476qrYKmbyOy9wGS/maC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH7/jfiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH7/jfiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D24C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786684233;
	bh=rcBlRdl8WwN2bTrytA98VwtAVgeYVACdzwpEBVoT05E=;
	h=To:Subject:From:Date:From;
	b=LH7/jfiNiz/ueJcN3JJlqO33couZQqWSk8lFn8D2m78gb0bQEz5Duy7HJI7F7h7SQ
	 uAkbopixNbuxY4nO0s0TD+kzXh3eZn+K4w1Ivuu0PWPkVZzCkQ7BfDIqD4MW1giWvM
	 oIMRgMWAxgSTc9Iuj5aNHQNXxTSqRJCfS+PmSzQ2KqjSpD72gskekQNN71lFBpDnid
	 DTp3Q3E1AUWTuXgVttbtyAKxdYHd2er5TueTqFKCy0D/iA6BRuSpbQBJArdSEYZuSz
	 dmMgIqoYTmg96RnMpq2HCOxuboA4kpU9TwQH175f9EGeNCXjDIOf6MKI1IoQLy1y4r
	 xJchxpCS+lfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE642C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668423368.30512.10015283734771998858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e121885c746175424851a970c930e5d847c24c0de2abd1b9785e5e7577feb57a
Date: Fri, 14 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786684233
