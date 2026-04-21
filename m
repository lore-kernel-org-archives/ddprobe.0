Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85B42BDC0E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776765454; cv=none; b=tmiKtw983D3OF/HaNIRbbfwquJ0PTjGlHVFX+tPdp3HbZLxpsNsI4zuUuFcQhA4mBFH9L9b9vobApqxL+fatFar7Fbp250CvuXDc0svU6Aju74XsmHlBqy/4vuNlz9gXm9PLk9NGLSS3ayWzW2PENsBTLbSU6VhNli2Ju+yCqNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776765454; c=relaxed/simple;
	bh=h/lDqPrxSYwWlyN2rqiGJmRwpvGkvvF7jT9PLRSHIuM=;
	h=To:Subject:From:Message-Id:Date; b=eCh7AVspz1BW+1t875zWoYbLT+Sq4HrhYWUA+zSW/yhNMLwhOnl+tTlRn0quQnkHhxFH5VsA2emDmXjp5tv7jdONhiF1gtlP3YUheHpTGTHDgCk2DXQW/q+RyndTYnsLcvg2TLnWKyi5+kXNXS2ekCSKJpaOTT7K6BI2LKKa7Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9FiQlJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9FiQlJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA45CC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776765453;
	bh=h/lDqPrxSYwWlyN2rqiGJmRwpvGkvvF7jT9PLRSHIuM=;
	h=To:Subject:From:Date:From;
	b=c9FiQlJI0x7wE6xrmyQDziB5DsPihCoZRC2SzBpp2kh6Z6qPMgfk51+aZf3yOzeIr
	 zpvRCzHhSr7wavO4Q1XCFPK1ouNxQPHBmi/4xVI7BSGHyVXwFTuDnMUd9kENdOKlN7
	 gHXs/Z1epwv7onOpyuWBh+THTU/a1tb42cq960xtNj0/rQvXFJ22hjIr3dkC1brsJY
	 MMU2qn+iysFYs2q0K0kZMbJxOSmHqrvvNfRhMXhcGKPkDC4cBvz4u63bNDiHuYbVA8
	 WRPxxI6wJOi5WILh5nipThW9uWIJvQslXOWBL0E//ACUkWWVk5Usglm564oKGoIuD+
	 Su1pTEgqD3Wxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD30F89237
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676545369.17313.6093204102794918480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181a6046e8c7e2a9914ed33c9efb18a4bf56a56fe5635e8ae11ac0c05c2902d1
Date: Tue, 21 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776765453
