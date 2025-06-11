Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F78253949
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632394; cv=none; b=Dug5GsRGkN7yovUBGh475PXQHkIsdOgjYDEaFCQMlPPT+NRyvw0z/wApimkF4Wt1jexW1Sf22vPiuNsbdSE9vUL8jgGW087IS7Uw3JTVhDrcmVznbmLv9yNhTkHSDPJUGP3cJJ14F+jGoBrEO4NSwXxC6TzxbmmGx4/t2eDpjSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632394; c=relaxed/simple;
	bh=2UIM0BIFUmkj/tUYQunUlpvlRtPwZfJYhJLwk89PLXo=;
	h=To:Subject:From:Message-Id:Date; b=UuU/P0TdLxvuEDJvLjZosT7cmQ/9PO2pT6W8XlmFHjwM+WWlr0OGPTGJ444IYuOswSC27r1o/cRqCFjmZMl1I7+rvNo8C1UpxfvRwx8/FUJEoSCmUJW414qEYbUBdwf7yxcs3Q6Vt3lkyJ+RnzYPdoALrUpkr98yjVvPSL/F9OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doGo7lKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doGo7lKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D524C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749632393;
	bh=2UIM0BIFUmkj/tUYQunUlpvlRtPwZfJYhJLwk89PLXo=;
	h=To:Subject:From:Date:From;
	b=doGo7lKge2WIOmIodfuniZOU852ISLqzgUdRCC6o5zxIUIMg3TzOxPK5x0GD71NFy
	 r+voDJaW6nzTffY0pcB30ckhMZRrZIuSllf4GExJyw93zs5C39aP8A4RZ2s5JIEui4
	 0SJdpcHurg0V5GC3qJ5bQ4ECpOXBF6U0lY+bzpu3XPmqQdWwOJ3LbStIJIZn4E1StT
	 tWfznrMEG63bHQ0fCQOCbl3h1AfJMcZmY+9HfJg/9Cydey3ZMMJSNXHK16vZarFE8e
	 eLyp4/p57CU2brcjFoNzRkZrZ4pRzzgfDyrOlGxlf+K4XLes58Vnbru8Mb+xtwOa5a
	 7e1G/qoVXzmVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD79C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963239357.12786.17355001900297505031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf0fcdddb1493e99907d563570d96d3f5f4974463e900460853aab7d09c73cf
Date: Wed, 11 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749632393
