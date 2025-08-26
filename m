Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3727146E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756180194; cv=none; b=E0GDwfMv8ZYffQ1vz8t2y94SIIL7wb8wS+HMGCXDBBJmqmuqqGlA8UF1WIIQpWxbNr5TxF/tmV/OdDFYstoGPXuPfXVhv4Kr3fyTM70f6JrDa4alQU+OVcRFdlrJ5VDFZ8u/CMpHNjCjqs/q3nPJFNdVPoQ5x7CQx+un2uZDVc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756180194; c=relaxed/simple;
	bh=ccmnKjKym/mfEnD34F1aMqEEjWB7Mymqk8CVbl1tYWk=;
	h=To:Subject:From:Message-Id:Date; b=Nmwbt1qFDiKZn77Jicuiw5Y7p4MBkPIFyfrZegjbSFP3rpSkZQb7ZJslTS8KoLJC45u6HAJY4xH2bjQktolkYdiIzaSjCbOgUB/t8zgTMdcYnMaY96A66HK1ezgEO72jiZ0A1sJD9Q6/oWZQRj4omoVRMSpLrG8c+kPez56CBA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCnCd4cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCnCd4cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1E7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756180193;
	bh=ccmnKjKym/mfEnD34F1aMqEEjWB7Mymqk8CVbl1tYWk=;
	h=To:Subject:From:Date:From;
	b=KCnCd4cTeRVFtwh8BBkbcLwGMQSfGe2ZMSyglW0Tmr6MoUnBsM24etN/mJtwdxSqC
	 TmlkAxrZsfue++wprPDJoAphwilUCuTj1c8tbF5mUvSx0JSMtqr67WD8DsKN0I7Z89
	 pIloK1xxT1iS+toCFgyet8WtD2Skx32FLROv4TCoIx/qMVLXi317fnxG0zrY3ck4j0
	 ZnXSUxQn52JYu/klWNI5HB+iE1wQDA+Oph83zRly1MzO7Tu0vE+XF4FiNq6lCx7ns4
	 g+6Z9rFVfVhDrCadN4tHl0o1XLegrEFcjWmYBRoWN65Vm288OC5Iu0gHUMkQHIW+LB
	 Ntr2IDi3MWTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E056CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618019357.5851.9263113511158303335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54bfb85e287a1218b770511ff29eb469ee343e5896c44593117672962dc66d9
Date: Tue, 26 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756180193
