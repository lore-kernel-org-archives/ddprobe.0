Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF656AB9
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712472496; cv=none; b=L7THd6AqsB/ghCJ/6Sskwkvp9+TUk5tW4zQxQv8H8kkL1jGodynSOS7mTVfwD/o2MM6lO0LPiFBCU1MR3tQ0N5vhX+uO9SUQLoJr7Nx9jsapBE6KhTtkfiBcoTgWikKCWXd0X2VXHbUvBSM/jYLvTwra5UmNki9vuYzlr3SeXJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712472496; c=relaxed/simple;
	bh=/sI0RQH1pxKdFZr2nmkgo32xvADuEml4RBEb6+f12kg=;
	h=To:Subject:From:Message-Id:Date; b=bEuDAF4GcufrkeIYAmRQMiS9G+sfu3NH8Wr6Xun44ZWqsNabPDEI8YSSDw0N9kXCazDXrUtMCtaH/pFeRig91BwYRNOyxGDTi8Q8rJ672QM3hcqpe2GZDOJXiYNVhvEkJ/upgYGjTYXxohaCL0onPmbrNR/bS8x8rbEAQVK2Ams=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc5IScIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc5IScIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74720C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712472496;
	bh=/sI0RQH1pxKdFZr2nmkgo32xvADuEml4RBEb6+f12kg=;
	h=To:Subject:From:Date:From;
	b=Kc5IScIHS4+Vry4QuE67SS7/LvysITUPtvy/vtj4ar1y7qVaNteYnBzVIA11Y5A+D
	 i0BZxAxkhdawJeq9qTTL9N0P3SBpABquxqXCtl403ORV10HmFBx+QtuMBTNJ+zVsi9
	 wMvf/qYPwlj3ui+jIodL1wkD221kaC3CEZBEySTn2CwKWGptUIQLTTP6Pv1zneRNJ+
	 kNGDARRUlvqd9g6I2ehJIeakArzvpyYKN0ptHQ7Fwq1uLyJWI3aYdiY2l06ToyIdO8
	 Xi2TGVjWXAclnd6UYttCVAsxpgxJZ6Lyegbi4P3fXo5tyBoaL+8jqDQ5DT9q8dbeTZ
	 uwURkxvzqdorA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63572CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247249637.21806.4450279917957023430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81724d83bc90286f67ac29d9685a93d22b68be9233a4242e697c4084fad8c4d5
Date: Sun, 07 Apr 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712472496
