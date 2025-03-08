Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B44645BE3
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741400935; cv=none; b=NkbJ6fCdVMGWF/iPm2ApNEMwVCOjPRPNXAvPLifvzDum0PBw7b7LxuJRiLUgGsnnUeOhjStFa0/GzmR5OVV6xnBuKqF57aOxyzJ8StshmdCbS6Hzb0lTQ4NRtaTlHJtic6cv/UaXwfRH5jTWwuHn+ZvnjsfgguMW9zBPDBqQ2sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741400935; c=relaxed/simple;
	bh=NOFDh/Mm43NCYX6BjnMaKqU6q4u/cIHkOF0S8gXO/N4=;
	h=To:Subject:From:Message-Id:Date; b=mkGvJPWz/nrUP/jHlw2ULEIyZOUcfa5K4iTw/NtasU3GJJ5ZgYCjm/jfKsKQopPNydkdoK2D1z6VbKqLLMQgipP4wwYA3s4WnSkByIFlUbCMGbYxlkCy9dA5CO5MCDPDa4fE7j6HUIk0Bo62WVFz/D1UQF5ngVwWCnnAKwBScJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwDxZZrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwDxZZrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ECBC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741400933;
	bh=NOFDh/Mm43NCYX6BjnMaKqU6q4u/cIHkOF0S8gXO/N4=;
	h=To:Subject:From:Date:From;
	b=nwDxZZrp+OYj60+H3ZS+vKQzoKBlYdViogSixqivqVJYxRBqQ9bg0NlwzIjDOG2OL
	 WB8liwUQkQKGTtQRQ+oXSfgxmQfZraw1ZE3mEKocHbcgy0VMKMylPvOfFusWhu/ACx
	 7TvPGH4HlLwcbK15x39MgRkZXxpA8V8V1uE0qs4mJhzGisBiC4HHm7GXYbf7hiKZWu
	 JIexvETw0vVM5ncx8fTHpOFM6Yq6D3JnxvIaNdsCN/9dgRoczZQm82ZYe4n4dAXuCu
	 yJ4lTgWY86qesxlBKNQAHF/ZNzBK5dISpEkA+S84jQDj+n5D6MxOdCx7jZVvtllmAH
	 vk9mmEXNqKJ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C6C282DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140093369.20753.9666421620682669043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9646217feadf60f0709ef9ea910ef4ac0288f5a0d0bd1d6eb5b1c13f3bfed59
Date: Sat, 08 Mar 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741400933
