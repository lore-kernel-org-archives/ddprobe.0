Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E208B7F
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712707697; cv=none; b=uJU+maVVfTn1apU457Pj+YRuC0Stl9NL6yXG4tCALHVAWoX1XtucYU9YBdQY6RLFFwMVwwSK1jbYQ26aSauZJo81Yhzgo2cqDOjbirLzWAia6nbRMLbElFvlzjGdvbOxSgHyAl6XHnogVlIL4CIPlfbrjUnDMdCF9e4mMs8/JXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712707697; c=relaxed/simple;
	bh=eKEtoY8mT8VpkDJBxQgi/tPpNZenKCm/o8N4nAxEWJY=;
	h=To:Subject:From:Message-Id:Date; b=RUp1eFLm51B53Z30lvOSmFIlWRM5h8P3OkJc3Fkzz3N6orAdw6TKhKYtax5skV8LwC/qNm2G769/kpMNg1hK2oGpQ0h3FZF5aFnqUshGrDCOHbVwcCD+Ud7fO6Qm4lq3IRCwIwwf4KfJ/xQNUju8hNCVcfbZuTQxo/l6mktM5l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCF7hdP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCF7hdP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E737C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712707696;
	bh=eKEtoY8mT8VpkDJBxQgi/tPpNZenKCm/o8N4nAxEWJY=;
	h=To:Subject:From:Date:From;
	b=aCF7hdP3O86zMQwk9z/Ma9kTa6V/F7y6eVPUgR4E/xQ3icevALORlkiugg2zwcAw8
	 6cGi1oBi1S/medJRl18NMHaOYveSO2dBnSbeUR+CwOIvO0tlZKVRF76Dkz2MvVXGHp
	 eegxaJQ0UdQ2JWhAKNilK+GgoctJ2RATb27/91ZLuOLnxtCYhWEHOY08Q72XzTmOZ/
	 +jNnI+NLUrGaQWdHja/t9vnuMjBJNeUhitb4Do1c7GAJ5MDzRjbMosQxOymKCzUgvh
	 k9LpfmLlvoZ4cQBZ2lydyc4yIhy1I75Hv8YmEmZ0rhmy6ngL0savc9TPuaQt2memzD
	 aEfCslvb3rjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68708C67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171270769641.29028.1695067555600784937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1407401d8fb46185f30bee2b2292f0ef6891c40b6e7082953cff6075ca1c15
Date: Wed, 10 Apr 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712707696
