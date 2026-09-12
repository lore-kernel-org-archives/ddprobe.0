Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5430E3451BA
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789179634; cv=none; b=eZOqKVt9Dcdlf0g8ItB9ag16y0cH1A20+UmXnTyi/ItkGvRADEspPb+noXgVqBfISL1384L9A7IrVuh9SFc3Ce0F5OdIBi0qJn0gnOoWwuFVhF4mWbx0FLqt7oOfpdwkpNCfgazOas4ff8YHqzqw7o6pwgIT43fz/XEctX2iGas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789179634; c=relaxed/simple;
	bh=SKWF+jhVCWPRVpKIzfKhZcnmD1qh7SqwvFcIVPYP138=;
	h=To:Subject:From:Message-Id:Date; b=n5AOT1Ug3+ZeTgQydesMc/dFai71koEQyNna9U8DReb49JAGkglAlKKQ8VgLnIJX4Ryno3d7VBj+1CCKaM7FL7zNvtjKyhEeZXK4ggBPutIUNdzUf75LZSY3T8h935p6b8KNpT4o/ozUfmfNNoGL/5G82U7H6cPE+Y/CXjJsLXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+2rpP0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+2rpP0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD176C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789179633;
	bh=SKWF+jhVCWPRVpKIzfKhZcnmD1qh7SqwvFcIVPYP138=;
	h=To:Subject:From:Date:From;
	b=J+2rpP0/m94A9YecwF0h/TIuLAjWw4k5QWQ1UiMN4C1sMEzCTkEiZm77bg/OYwjCF
	 8H7bGKiiaG7Wm0s/0BwNMiOe4akUEs7CVNKue0bFukecAv1Y9g77OaZPRapvYj5LIe
	 pxKGbGK6jY0R1gdBvz6QJ1i2e19bUmrC/pW4E65weNOvIiJIr67q9PP3I/1o6ZpRkW
	 m26SR4chGDyFEg0TRa3aTcNy41KJHFJPG9/bHusuXTrhGY/bVjjYCOfnurBFL7O1T7
	 mLPAbowlOuGUGFbq237F5Oamdhz0Hq8YmNgRMMsKNr8imY2YRCwhmg1YEB9p+a5QkZ
	 CmsSvzFDazbyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9844C88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917963368.12669.17324540474473685408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30bb33684f8a705642e2b3aa2a3bdcf1ea93c5e00a39b3e9a3d03f52742b4c3
Date: Sat, 12 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789179633
