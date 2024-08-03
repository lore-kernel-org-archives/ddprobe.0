Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AB42B9AF
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722659154; cv=none; b=qKtxb8pfUzWvawGiZzIohLjJr5RpOlbCPqdS8ZT3fZAmKy7Hti/3qnjAiVKSIeOHixGaXJheQ0biMYNIUlfziX6FKmifsFDfvFgqzaGRi0WTwVrzamZQmR0f3mlmUsSjDL0fbzQxN6Nwn4m1swZBvMWQsO6Jn6PamHfmqVKDAzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722659154; c=relaxed/simple;
	bh=9Ini4SighrDTYFxjzC2Z6vTdZMDHoGGB4VROnALWeXg=;
	h=To:Subject:From:Message-Id:Date; b=AzMq0lteob+fwHB8U4hMNemNa7XZMsri4rcjLVkrYNR3DsFErskIrNycqOKrCQu4wB/NT1rNjHkuhsrXueoQKVXLkNYZmg816Z+0WOoTQsJk3zXfd4iebkXvY+q5FU8QYHt9bHDssipLtiytl6zC+2whPBt5oV2xQNRw0yPsUXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqTyzJYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqTyzJYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E4BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722659153;
	bh=9Ini4SighrDTYFxjzC2Z6vTdZMDHoGGB4VROnALWeXg=;
	h=To:Subject:From:Date:From;
	b=RqTyzJYXA8LdkJMgqgTxvlXtrkK55ouXXNyJ/1Li8ZE2fVsmp7G9jMlScZU/aEDcJ
	 h5+XKoRJbummEUR/d/uc7XzE1fsSNr3k47Ji0nWEeJLZiOZ9M8UwNtF79QlePLnhYb
	 RBPCM36rXW9x0k8QGtdJxeuA3QiIV0ZbtXM+Bbce2c8oqUmRgg5V5iqn+outncTW7V
	 AHLGWuZhWVHeF7yQ9+sJ0icZ0kFmjHHH371A/qYc0y7/UFFunmlBv7VNpXNOdWTtGc
	 crtzZJguObOQtye28P5X/m10t9K3eUn6cRaC7QLozQbo6gdZ657svGq47P55tQlvjT
	 3W2REvqaynDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98757C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265915360.23518.15616641890499414879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7075268ba1452b1aceb39dee55fc3f1096cf5d36062c18ede6944357c9d9629a
Date: Sat, 03 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722659153
