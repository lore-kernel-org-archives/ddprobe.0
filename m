Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C5D233954
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788319234; cv=none; b=DT17v8ZPhSDv1eGtL5DpQDTTO6Zo0HFQzTqEaEekgnNvbXPQVuAAASQ5dD216aSOtb7OuzuIps6M1JSHeV73YQwONC9OD+bIZ7k4b6Txu53N8yunH+oIHVcWRt+j+DKicGQj5K85IoOdfrJMgRFaIAVX7OFF2WSt/aWZ/Euzk94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788319234; c=relaxed/simple;
	bh=T+4/e9cZIJhhruazEq4yxdyTlsslhRSXgOcYMWO/870=;
	h=To:Subject:From:Message-Id:Date; b=VJOqCWyQjOGeQVJXImAiZqdYF/J6YAgfBRr68JF5Yeado3hSvdTuYmzby9YQogQszb6oQ8phBd01tridr0xriA7/MKM4KXd5NMSm/32R6ICYuOPwM4WzgOTPewP3X82vsf4pp6AVZyHQORctySBhCx9Me5M8t2gqnbdo2YHF/Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p//c8egQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p//c8egQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E4DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788319233;
	bh=T+4/e9cZIJhhruazEq4yxdyTlsslhRSXgOcYMWO/870=;
	h=To:Subject:From:Date:From;
	b=p//c8egQpoPGaLPGbNvP4brP2ulQS5oUbiq+2vbQYimiCpgtrxL5YaGdPbcd/SbsI
	 aFkh+e9O08lz41PuD0bJB6pNeAkCvwWNldx3FhfmOGTQh0GyQgzl+mtH+F+i9obzc+
	 PgLdG872jGqLGebHcQ8RPQoE4xAlGgEJ1fbBHi67mBpdKKKrkNOsphgNu+Sigdc9Q2
	 yl0KbF7zMf8FGvLHfYDxoBDAGocfV9H5BPYs8RqUEi3XvOFSQdikrE34jPLII6rvBL
	 EGQ8lIVDaZ7aplmEXLkjaRk2SZF+R/kHK0sgAPS+p7SDacTK964WAhf3gnX9YfnqWC
	 KMje65kyDoiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08BCC61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831923368.32619.13267289334078193276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92097fad48c7b5be9d42d24fedd0bad730b2ca5fe815792cc161577449263c4
Date: Wed, 02 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788319233
