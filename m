Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F291F12FD
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735296953; cv=none; b=flU2LQImRK71BEGaYNO/srEWwLwf2C6OEM/bKGryX/eEdSTysfUS+mFmXYfkGDIY5Rl4ikmXxt31gcEEz1k595WRlbAci9WcckV1S25xZACkCL1vbRomosfxCivIAqcVuZ1lN9n51ITkFHYPsmtSbzeFJv9SEBhjxVofu5qSNzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735296953; c=relaxed/simple;
	bh=lr6EL2lvIm9/VO30sLtV9lRDrXjJBdpUu5t9gGahHCM=;
	h=To:Subject:From:Message-Id:Date; b=UjpnzI2/jhG4alz0JbOo0m/O3FUioXimSqdnoAuXq18SoGztRmF4x10kak4h6lmRRRCNez5Wg3IqhI8GWTul/m4LJANkszwb2vYwfql2ZE6UNHZyHRYp6aPX39Gj02Ed2T/okKIH+yOYH2kU7jiBFGxoykASsXa1rbh4tgrijMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7hUGMQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7hUGMQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF8C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735296953;
	bh=lr6EL2lvIm9/VO30sLtV9lRDrXjJBdpUu5t9gGahHCM=;
	h=To:Subject:From:Date:From;
	b=D7hUGMQJ0m1znbsjAEWGj4zMG8tXx0dlB3pxsBO1OlAMeXlF9OPdLDvHAARZN8yXM
	 Xfiab/g0WNTm3IKAO7wqnrCKm5U+t1eyGzwNyIUY6vftHCHQwVPASbcJPHQidi6KjC
	 chF9W7KBYmNI2ZSYzImrUt4rRPpuWv2inMJIjvJhKXgi1gXBydyootu7dQi0ho0rRN
	 D21w86dtKKJ7oSfT0YfMqg7zVPXmoYitfXhgWF2oPnos76FMdnnm6nMjtTS4sRIlt4
	 cLgmUqVyUOdGMTsIDe2CYzQZ6nuUAgcuEEPgRwcN0TWSaYDxnYucxZwHkOTkrpxwvV
	 LISDD9wkVn7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A4DE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173529695360.14777.5773652740978610774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5313885e47cbdf20b01d5f435a6f4638271df2e1492b58c6dfb8653af60d07bd
Date: Fri, 27 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735296953
