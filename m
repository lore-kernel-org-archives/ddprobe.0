Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C6439150E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784827834; cv=none; b=RPFZXn/avQ0dEZFnrJBpOqq4RtCZXC47Bf4mCy6xDCVvcBljy2exxd2hATmLKBxjyiNKvOK21gbDj+yxaKkh34DqiJyIE5nw+a3c1dsRIDYFGpqO5lrT3mtDJhuwRZOicESgdzVXKxHL48/3n0HMOYGPszJFXIuEaya3GdJPRsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784827834; c=relaxed/simple;
	bh=8A/DbGb3qyEe7eWsvT3goTLKjlcZWyPVvFXmhLOZWpQ=;
	h=To:Subject:From:Message-Id:Date; b=fcSIUHNxGoYcKQKUdWLneMSOCSN5xbm62CHZbXC1D1N7vZog69OcAzglgTmAyY+YDEi9gHBmN3WoqWzNYLa2HqDQa9jY2O+keC61Qsxda/DYFiWYTlrNyB96x+NfJmRc4P/5x7vIokTybtEe/RhTp5gLKERgO8QOHp44nUlBsCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RruVnVeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RruVnVeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0D8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784827833;
	bh=8A/DbGb3qyEe7eWsvT3goTLKjlcZWyPVvFXmhLOZWpQ=;
	h=To:Subject:From:Date:From;
	b=RruVnVeGjztS9ZSZXRu3gD+rRh3oilSFujHkfRpsboylyM4ZYZ9moqSUDiasi7lB1
	 cRKvpBm873lYI7WvEqQ2y2bW7jTx/PzPbn3dwqWqesD+PnIaFWV5RuZgG/3sSBPUxC
	 OOmNgrSY2pIsAYmWrwbeo/WIUTKRriidB3BUY5sXNR43Wy+yiCcnjctXp+2qGiNDmL
	 NyWHoIa3EbWOHkINIBYxRbDAh51vumYi3eMiQk87HTOCbjJtCtl/lw/Cj5rqvvNViF
	 z+dshnqhtZXsbn9oZLobAZV4sFyka+b8Wrug4o/m3JSlz4zEF/XYNoG01mTQ6fGVfF
	 1TeB6IOVjV2IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFFFC531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482783369.3565.10040407506421153805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7af7f21504d8a1303f8e44c9ac3a897c9cf248fefdb436dafb376cb18486ba
Date: Thu, 23 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784827833
