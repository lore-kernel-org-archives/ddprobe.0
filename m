Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5DE258CF7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756225794; cv=none; b=MYQmGdd0xTKFYgR4clqUNvZOh0spla5o5O5H/cjr8g2bDj0nFASZtd32zccwMnLJW3TbutRoSC4SgLp8DlhSdsL58rgx+lHqTddURRz80VHE77AJCR2BmPPpE/4kGVFQGwqRAkzE8iHO1mPzRxCZ/VhxA3nHvumA7n1G7Ju0EnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756225794; c=relaxed/simple;
	bh=W9QIdDuqKD97pbuUd5yTknWzzKWAuq4YY2iNRPwyq/k=;
	h=To:Subject:From:Message-Id:Date; b=PtiQtW1JY/EhZ9JDXUCy8u6j0woNHhnM5mr0M7g1YdjLx3/v/m9lYhM9JMjxZMgFkm/7UzcXkXCH7scF//P44abcBh52/GkKv18oFqvLKeTF2RezTyRIvDiQjdebLVFT4AD3JeoP6L/HeTF8Fb2EXusTKjJojSmp7g202kwMtDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwXOYGnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwXOYGnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D6FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756225793;
	bh=W9QIdDuqKD97pbuUd5yTknWzzKWAuq4YY2iNRPwyq/k=;
	h=To:Subject:From:Date:From;
	b=DwXOYGnXsxpPJ/g24ycHsGQAD73eNBL4AYa2JGt5ZBeE3OQP+LNADst1y/r5h1E86
	 QgWRkBKKRDIWDlFyi225NDmA7fuJbP45MctzD7xXcTXZiUr+gzb9R8+iZSUUaZxBhc
	 ot0Luuhfgm2O6ZsAMxo+t43HvaIdUZdyptsSIvAqG6gucMEszIkafvNubvfAf0suv6
	 UuTElv/XJImEpdkuMkPfOtLJemYMSU2BbhVvXGH3w2BJxvgRULsx9dhZbxbWWIiUgq
	 oQqNssdW6WJTrbur21JFcX9Nl2vEv9GYnnJBIzvHscgmjDpVoa48oKsN+D+5kv7yks
	 G8oySpzY8cODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094BCA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622579358.4207.11542947273044837562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8ae2f7496c165e254de9002eb8fc66d444fc5ee4a29eb6628c29533019931b
Date: Tue, 26 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756225793
