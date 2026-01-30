Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2322D2D8370
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769816634; cv=none; b=Xobi458J9I7lrmki85h2V6lUkNMiMKIchnXkNvgQn32PCtUM8z7OGUC+LtkIPvSxBRWA8wTkwqH/5GJtCkwkVbD0b2AUIcUrLk6erDOIEJy9bpZOyM80MfRKJ3ZjnGNPfvgjrKebHvm5iv3X8SlWp6D0GTmNv1/0yATGS5nXIOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769816634; c=relaxed/simple;
	bh=YHZuega2L7zHn6bXOzH8BECpJdBDBWGN6bqik5JGfRU=;
	h=To:Subject:From:Message-Id:Date; b=d6A7ti1I16Dmb67HFxlxaEJiKlOS0brtWpNii1PyHDxoehd36/RI6Y6gXkdsUgv+X6EL10VAbbYpeb9YJzx8VVe6UlR7FQpNSQRjRBxSbBdqG0GjpXZfIZ4S1/edCSPEmO2ZbWRmk0T9Nf5eqYzwIEldnJ5fVwC6aaa0tUmXW9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmRT24NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmRT24NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FA6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769816633;
	bh=YHZuega2L7zHn6bXOzH8BECpJdBDBWGN6bqik5JGfRU=;
	h=To:Subject:From:Date:From;
	b=LmRT24NI1w66/BVikBPoTvrnDrw/Haw5bx3+48GLfs/Bmsu90Z2JlaUEQDlCCIHnx
	 x00HwlcJlzDm1nnOk/m+3giw/HhCu8zrlBiXJ/2XOb88dfZ8KcFUnK5xHJV7HQt7/a
	 IqNQ+Dpe+WI7hLL7tmcsG5qwF8J7qVibDgXxO1KMQA2PSaXbXSbs29r3m+oncmTa8/
	 9g1RmZPRGN6T02ZeG2ImCzZF5x1uPO8bKp4QqdNSb61DGSxGUJYCoPDS03/5ciYt2K
	 7hyRdhloQrCjhPx3jkEsrOWOUyomfoChjzJQVSGNtnpZE5pKfK7+TavZSwSxTwVbjs
	 ALCrQgDkZCQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92763D49C97
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981663357.9012.16851297678337064802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56232fb1711421e0bc6f33ed4c5b200e06849510abce12a83c5a7ff60a2979ce
Date: Fri, 30 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769816633
