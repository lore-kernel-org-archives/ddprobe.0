Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F383336F42F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773609294; cv=none; b=ftPkKG5o4ZpZbayvLvmXyMZj/Wq76uUiyrKWtuKKJIPcLtOnvpr/xTv0YP6wi3BGcD/pfjQmyWztd/hg/ZZyNgi0ku8JEAjTamoux6WPXvCSOHLxaow8Pv7qEdM5UOmPtfcFrR0fEAhpGv/WFSE8fp96S2dDOQdXaEAssQTlceo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773609294; c=relaxed/simple;
	bh=oTEzd+oZc8JkUZgPci56lNoP2KFcyCw1w8tLuuwdGL8=;
	h=To:Subject:From:Message-Id:Date; b=IX3TbWtlXUGZzDaZYZYQ90naXFjC9ipWHEexQtpOOSKBhN7McsTEfgxoi1PiUu5BEDL2CTx3cB/WBZQ47dkUc9DRpCcdrBro1U58+Mvjx2JX9RskxsGl1gIwP67+QaTjd/oOtLnsqoxUUgmKSYFTMuDTBpMKaJJ7IaJJ/iW2Hdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3K913gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3K913gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773609293;
	bh=oTEzd+oZc8JkUZgPci56lNoP2KFcyCw1w8tLuuwdGL8=;
	h=To:Subject:From:Date:From;
	b=W3K913gzDazMm5Frbc+oRi7p/C87pWNvU6tRZa4jSO6rNPCW0CCpUUXE8SBqA935e
	 8rNbriMkWQjiyLkPNKu6Dos1a8HwHTdUEa0WRu31YYOd4nrnW8TeZQYtAgjOniJt8s
	 82d41xl7iu1UPDnzfw87YWxaDzMwxL7GyxXLLg9BLQFfv4Mikf51QRH/rnjRK6dSlW
	 ODg9KTXtU8fqkgpbQZCTc7oZN7T13QsNKzcWaPbv78gSw4uxwvK+xsVn/3O9QvXoJ+
	 NQc8AvvA+f9jHqhCVoPRx1zdYxdaQ/scxAGHeS1qCpg1Yte1YYjBWa60tRWL3VORKl
	 ziY5DBXHPThxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98EF30288
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360929357.8347.1138017040345112059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd15e1c612a50c4ea3bdc3ad4725395f85b76751a796e0bde95c3456e595596
Date: Sun, 15 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773609293
