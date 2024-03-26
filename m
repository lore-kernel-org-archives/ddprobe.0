Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E14E208C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711417697; cv=none; b=CIX9wacEyzr5WOyoiu9eLUiCh7dxpRqaF2MSCyBrnNAsjaFpOszzyflfm5hi765reNbVw1B9kuZPy7aiGfMOWqhlePfivjOXmxUAFeO3R3WZxWDP6siaopIxCElmfzqAfcP/4sC/xiZ+ljrI9fcTQRjZGVVRTHt1j79hd8UKtsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711417697; c=relaxed/simple;
	bh=DFA11wUXHAmhJxbm/jzxchqHXGt4LoUoKY3C0xUD0e8=;
	h=To:Subject:From:Message-Id:Date; b=d6NmmBKK/aNbOWdcQ6koRA2BAM5SlvMPMYEbeq4vuRkKbE5rGop/fh9jt11flywfOJ2L7+Ftx98RAXy7YS7Xh7O/H6/0UHrGxTu+r5BF8mH/HbWP22HmCbwZacg1IBKrilRxpWsQvkNlCv/ErV19bRVN9YHZgfVg7395XbYWN60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCPROg++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCPROg++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 861B3C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711417696;
	bh=DFA11wUXHAmhJxbm/jzxchqHXGt4LoUoKY3C0xUD0e8=;
	h=To:Subject:From:Date:From;
	b=LCPROg++k6Yiip5OLzhqwfZ7XvfcX0hiIeMGTr5fAG0vUMip94bq1lmCFZHQJ6D9p
	 Z9WDZJtQBPp6SrPIkuuwuwAr/FfOnuSPgIewuVuC5KwFUBZxoA/NGdUM0USl5PG5oy
	 Xtkl0PGx6Inf+UdexZH0ac7+kLS3MFA0SjCbmyuUjaoBVF5Ak09qFoNtYoJLICYZSc
	 TYWDdNiKh6m8+5LU5n2izyEYqxoaetcWJHjFoJAlfeEofE0kjzpciGgrqjXKOh/clZ
	 6ikU2o/HFbzcUBzwygiY8VRUg23CraTggac//KraNRHnguvS24SD0dvhlKNn5AcW8P
	 HlJqZe4YcQoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64518C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171141769640.31442.13445385350746406940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03feadfaa75a6edefe86ee9b2b6a94c0c9ca2c89c548f8be156cc9dcc25846cc
Date: Tue, 26 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711417696
