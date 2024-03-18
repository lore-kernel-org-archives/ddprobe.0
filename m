Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AA31CA89
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710745697; cv=none; b=V+tQbgRd2bPMLV2Oqv7coAiMvqUhj9UAuLehpnyn4tqE5jtHAijBaFX9JSavGFEQ4uaU13FNhkqJfcKox0q9qUrznB7mh6O5Yknoyeb0JZ51s2w5nvUHvvaavwSiQGHtr1x8mU2cTnxZVAGcg+B8SZ363qlEGvfb15T/clthHZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710745697; c=relaxed/simple;
	bh=P4Umjmn562t1fzZENbMxly0EwFq9GsWSmsv5QhjJhgk=;
	h=To:Subject:From:Message-Id:Date; b=r4M7P66y+f3qc1qimudBhNZk/e2s5EoF0RBf/n1lqnkxx5e37AHH8YZhGHGfoG1kMVz2ZI+6Albdhtq6JVgkAwxm7MIAXsZ74Qqmn5+fFKkAnV8SWifvfhCAmUimAz2Ph+W1x9aIfiemPehICxOO/hFQTOo25uN9895IdN/S9ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDg0D2U8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDg0D2U8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1FAC433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710745696;
	bh=P4Umjmn562t1fzZENbMxly0EwFq9GsWSmsv5QhjJhgk=;
	h=To:Subject:From:Date:From;
	b=XDg0D2U8rKDgKGHI242zRgugXwK5OTiA15FCgunj34f5NNzULUwH9D2SP/99pYHUT
	 ue/ea4+ULPVThh+ureBUEfEiVpsB7KFObX69RGVx6xw/Hv2H71FlQLuyrvCVanBKnY
	 zM72jZkZx1luQPnMlpN6Q3YHl/1AalsFSQe80s4/EvixfZmAypDxHRpOMQe6lLAG+S
	 kEFG9iYa3EBPI7mBtW84ebi4nXj30+sZeQMydUqIXvFm5f2vf65mVEZv53hWUkRYIt
	 yKDgZI/QAuYq2DiuQiByTFtP9fKwwwbv1euP5beyksRzU6m0Qbe5nmnnIf8f1pSmSv
	 ewv7a45fZJRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692A5C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171074569638.27893.11629637690676094209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153dc442aa9e89f520ebfc08be2aa7178c7b0af529c28ced477537ec5d05664d
Date: Mon, 18 Mar 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710745696
