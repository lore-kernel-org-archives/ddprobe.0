Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B705F54E
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707845296; cv=none; b=Mq1JqAbEjxKj/MMUTfdOFKirGWjKQOWPbRl7kZ3Wi5P6HlLq3b/0NnZC0xsEkUrA7zq9hn6+AHRDWslSqAMY719JoFkyEhe/UOjykA2ZZTZSjsCo1lCxBKoYv+Y/aDDnBQITYNWIPa618oFzUe4qCQjlIqXo1qGfDBcunyEp8no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707845296; c=relaxed/simple;
	bh=voIAPnDhh0CT5L7afJQqVmP5JT+wG0I7Ngul5GZxBsw=;
	h=To:Subject:From:Message-Id:Date; b=RLgxiqN8t3zX2cWBL3eBz/oPtz692BmWG5xaTm5wNzltBE/qQYNJYExV3623SjJG6eNTLTfPFbvtaXFTNFbh/xUL9L7R55lDA00RnG5HekzYbrOGDKdydbvTJ6XvLXWYIVcYqOeE6M/Inm/98R2RxJ1YIKtl+i16/ryqLFYSA+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgI1QvIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgI1QvIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D5CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707845296;
	bh=voIAPnDhh0CT5L7afJQqVmP5JT+wG0I7Ngul5GZxBsw=;
	h=To:Subject:From:Date:From;
	b=MgI1QvIVHn/lOxlsRoVYmYdwlgVZtxV3GvG1pMNP4LTw3FdDVnD3i2sab/mACQzhO
	 aNI++1vZHi8kdht/wKAeGrawhu5XNzmCZ6lItwLPscaBUsCzkFKSM4z+whIQcT9jZ/
	 V3JQolne4JS3GhGzHuyO8HowHthdf0bemazeCICfTG+s1qnrT84soXYx6OiRn9TKWS
	 ixVq9wZC6xNNz0R+ulZ7MFSZAU5aUFsCd/FNZXfoWBwmtOdSRFAzW60iPFBdrWzTEs
	 4fNugOdngcGNYpeuL/hh3xrdsdgosR2/CjFfgKM54jbjLCAenw1OYhwh5HSj2aEfJu
	 6noRZ6ADr7lvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B59FC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170784529636.13573.17269848675225220924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1995ff16e805cf45c0c081a3a36f08b523326888014b53affa2e171823bcbede
Date: Tue, 13 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707845296
