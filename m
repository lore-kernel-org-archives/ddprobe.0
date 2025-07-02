Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2333F2DE71B
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751488795; cv=none; b=HwFdZSm1BKS7tlQYBXQJaOOUc1x9Svr6F0eHpalgbCpHcAwBDLXUh8A9CMQYtdoaSY0hvBVvxoqKFF0esnBjtjLNI5ZCin9AA4DWRNA/BqJx6iyzKwuXZbLm75csoZbMV8qw2jymo4tzmw2C2tB8ShYtS8SOUwVsS8QICyY9KzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751488795; c=relaxed/simple;
	bh=0Pv8pSF0Sm/i8ji55fqllTZIRkUAIxbG4GCecIuCs2w=;
	h=To:Subject:From:Message-Id:Date; b=ElNGbTCkmMMLol1pJDm/plQm94LswFmtHXNC5zY6DJjPYpDiEhyW7HObRb/rl+0sUqMVKk/zoPKR/VRZAkeo6lfgALGZ3MVWwzcOk0wKk6ENzTY2DVe+nPNxMqONB+moB9/meI2MPg1xFu7XtXQU0YzSwF/l1/boAgq3gRdIJBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV4mxoXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iV4mxoXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751488793;
	bh=0Pv8pSF0Sm/i8ji55fqllTZIRkUAIxbG4GCecIuCs2w=;
	h=To:Subject:From:Date:From;
	b=iV4mxoXa13BBPjxAMiMpHcbRRy7OT+M5r+trAbmWjoyaN8c7mMZ/gELWAbKoBmbqu
	 IW/qkvPRtxw4xBCWIQOKJuKUAA1+xh3SRhTkqNu842J/V0Bpp0S4bBsYoJ+w0s64dg
	 x3niSmI8gamZvVlfLfDQZML8g1LOWygfJxRXs6CVQBOqZo7EfgmFJlnfu6ArwwCAWk
	 FShfjV8VpXedtNbll620WovcZPmICxuvKVxPZCkst27GnHBN55goqZEuPyyjLWFjOw
	 WzBh1POJ0JHIL/m8+K25fsOBFiIsvrU33V4P8CREo4gdAS9daD7LimxYmlxD7vMVyd
	 jwZ9g8ddi7dyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CCC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148879357.5380.7492762718599832342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dae968cb35f38a57a2a1453f213c5fa25f1236ae335b2bcec7831c7a916b2a1
Date: Wed, 02 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751488793
