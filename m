Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7C2368958
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775027734; cv=none; b=ChdwVPMS2Wzx2sRmjHPPRS6wDgi/pb/6eZz7uj3sqyelbm0epWCy3/Exnu1noH3ShEqdcuTVFKgiHA1Lan+415XKqMQ0t1ZScHaN1JTZI8z+/Einw2svfdGaTajf3SFlFELGr2gewRSROCzOfO8c+t+txyBQAAvHD0CiRy89jLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775027734; c=relaxed/simple;
	bh=wDP0MX8C0Dnttq1avl5Lq09DFQn+1bUJU66y9cE8dwQ=;
	h=To:Subject:From:Message-Id:Date; b=DuUGnCgyTdtrzboXvQlAdjnkJjqp5QycS138HeJkwG35A3zeLxDpTEwBuQIzjYIfDG3jtX0tX+T2orG2ClDVuL1oKQerfUVrRPUNY98zs49XFwLU9lMBBfzTgsZU8AgCqs8CJsj7FbzHzBN4iIw8AcXUNqMpJmlfZ9Ps/XuNh8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubULoHlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubULoHlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7F6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775027733;
	bh=wDP0MX8C0Dnttq1avl5Lq09DFQn+1bUJU66y9cE8dwQ=;
	h=To:Subject:From:Date:From;
	b=ubULoHlZq1R0iJnEl5hr+AW4vlD9thMfovd+htF4q+YrqVbFJ/dNEEGNtugLO4ofA
	 ddX/8e0Djpd1xLPsqVwhw3jVL1nS/a83TjSzkcErh8OMDKnaErT8MqSe2BQUTa9O6v
	 uIXKLT+EHPSPm9BdOjIg3bFG9ohoLw1qcw06+LR0I79Eb+3FATzeFIKecg1ucCatAE
	 N56kzc2IAlI2AUflWLjGTgJHatKBfPEShdP6PHeVneaNSe1pXzwN91tN5oNY0tJHl/
	 0+bwnCHgmbGNSqechDCSRpyJ8edX9hlr3T+xzLvE9VS0EHxYkx3MjyO1ynlTJ3kS9c
	 XwV+/maLIufvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB602D3514B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502773369.1023.9976129095043457741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e5bb7d63c4af8617a297d4c4c13c3e8ebd31023dd2acbb0322b26490ed8306
Date: Wed, 01 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775027733
