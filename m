Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434C441A80
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723613754; cv=none; b=AGUYpsyk9ZR21L/X0czi2puPRHLtUjtbP4UVNExBkFIRHEESW/wyvSuV8tzJoo2LtQJGd3fpZdYebNLKFLDXCS1hZF4zYTPCuScKdvXsEAdSwedF7qLU5xcc56HIbRrjTw2ODlJVqdHNplCTk5oJVxpV6BvNTN9/vGekykYo3Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723613754; c=relaxed/simple;
	bh=Qtng88hbkjaq9qlG8Vzfjdt31AU7tNJjj/T65IgdGYY=;
	h=To:Subject:From:Message-Id:Date; b=UXM/RW0+tmIPkJkID1oB1Y/BxpoFH8tURciaxbBhdEKU7MsbVhh1aCQ3PB+OEp13W3vVfPw7n/bgdK5qn6NwvjZOHRO0IzIApRKbtKrstU11iaX/32GdiFIRXgAaLcsKFwAgfUEXRE3Ewiu/vHnbfH6cQ+CwbPOvGAwOg+QFtzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUysN0XU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUysN0XU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D51C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723613753;
	bh=Qtng88hbkjaq9qlG8Vzfjdt31AU7tNJjj/T65IgdGYY=;
	h=To:Subject:From:Date:From;
	b=bUysN0XUDR924Fl4oB3qp0cobgyNPA3gfzeGZR+CDJVcPeyisPZlfzeFVJehAZJ5n
	 eJKV8/Fw2Tb7s6D/yrw6ZoniKRwSi/M/MZAFVAGMLd4Vc6oKtqz1IuBQbtJfsYRuCb
	 2ZIt68cbKqykOl5ghjqTRca4twQBRY5jkwlsu+JY/YNTqq3Gg6pVAlbii9doJIHiQp
	 LggaJ8HWFzZ4C8KwS20GMKhQIP5PVWu6QYEI1MUnhwy5dkKVvzAccaM0eXiOq0Q36a
	 29MRLI21P6LJjpHWx7ulhWrMf5PjlgQlO1rd8HYW1zs5qT7sen1/4HuCuq4FbU0+cs
	 bViFQbGmX5fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B69C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172361375359.30340.3588921878602101501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235f3251147074e8231cdbc85dd3862280b652d2556119695fe509efffec327f
Date: Wed, 14 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723613753
