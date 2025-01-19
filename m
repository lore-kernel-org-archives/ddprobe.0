Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E87918C31
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737329754; cv=none; b=EOi91ditQN2yHhoW8WLUG2qUh+XYYZD2zf97zC5WfcL6hUPNQijRDHG2+1MtFFD+jg9VAEdwvIqzrb7sm2pWeSqBO4V8qkmwi5YIDG8RIZelkPH+m2cYB674LP1g0zES0nLJs/ZG50qwem/x8srRMWM7rE+K2g2wSZkJ6kcx32s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737329754; c=relaxed/simple;
	bh=KfOlrh3L/T7Gawms74d8YUhQ1NftADYV2zyyhZvTY9Y=;
	h=To:Subject:From:Message-Id:Date; b=bwwbZqkLgKecokeOyGMXTdUUZ4J68hzIvsgZAHEW754k1K0FD3dSFF3iHPGPzfa+qKS6SA4HEMxi90ZNdpfBtNLABbemSX0dCerm1cZ8qsJTXgBEPdTalnQPbv3Yk8JjJuw5WkV+8X55bhYgjb1ajUjSPiW84X13FPXKOdYJMgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axr8/I7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axr8/I7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40FCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737329753;
	bh=KfOlrh3L/T7Gawms74d8YUhQ1NftADYV2zyyhZvTY9Y=;
	h=To:Subject:From:Date:From;
	b=axr8/I7hz++3N2ELQQzv1KW0toTWgrENnJ+oIlHh3CjhfFyDvxJVr6HxxP+4URcfe
	 OLn90J7j69P/QPj5VsMQSD4Z+3Fc9q+wLsshLJM8vPWdyTs/4TKMaq1ARbk+Fyv6S6
	 b4na3iDPwVl0GZ9yQqzUJHZTbtvM4W6iyjWR6IKVLUv20pb+qn5ZB64Tds4EpC/7nZ
	 9wbdV+DyW8omC6TBSt/2olVAO5FCPGprIX9usUg5Tll3l9+Rl11IX+mJ/j2Ngdk2W+
	 zYS4aKWiMFfKyab4Qw6aBSaSC3s7qnWKnDqub49OEwtBxvoPjhytM5ZT10nHES7fJn
	 PT6vZGo9kNBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F2CC02188
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732975362.11425.7349429482572622191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78353508db938dbef1d429615aa478eab5ce2b8c498328712237714bf3351024
Date: Sun, 19 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737329753
