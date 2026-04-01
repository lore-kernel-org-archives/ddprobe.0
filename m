Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20104319852
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775028334; cv=none; b=MY+ZMWP/9YQ4ZKukUXDLil+cUZuRKsw3TI11NFrSyFQdZXcTBncsr9tbAqM1PlFxcK2dvULupl/3DT0SXXh9XW25LEla/Q1KD6GlRdmg9v9VCNBsWJP58NlGoJoQQU4/BRSsc8rfRd7ps1zo304fAwH9DkwcsIuY8GJ9Shm9uG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775028334; c=relaxed/simple;
	bh=KxZQcJVXsWpo/yt/vJ4sYOr+G8FpAQRiBf8I5HJbouM=;
	h=To:Subject:From:Message-Id:Date; b=dXBcnXd2OjtKxTmdipdJo0xn58ydKMf3L7/XrYWbe1Rneyp1IfMVpQeHyehOXyhPHAuPgdZ0GpkxcmgRH5Z0d5OYWHDUzYFXjjnFRE3B9PsHKLlodN0eW8kjsovB9bRTlVpWED8QEXL/Pot9Z2KqzJVwjdWLTeVnINGKXufeLug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApmpErB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApmpErB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C635DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775028333;
	bh=KxZQcJVXsWpo/yt/vJ4sYOr+G8FpAQRiBf8I5HJbouM=;
	h=To:Subject:From:Date:From;
	b=ApmpErB/EaURb2kTa07ZNCEjituvKnb9Rfmk24WdgvP4sBx0bxNayhw5IWYYKwKlh
	 kL09culWxa8W9rG0IW9xbg5HRSkp33J8q1mOVFYK6xdEnDpvpg+DwYqjFGgHQuTXnR
	 W20M13toev1LEv4yPBU53/U5B8FzuyijTXHxMosdCMqKKOOK2Ig1nES4RTQhieERbB
	 Shv89jIbuYwCwWBTzUsDmkzi768nqk9wlmBoRedZ+hz9I7PbqGGrZxeXEmk1z9JtwE
	 1qUZVAwvI+WAjpz1kXkZFxk3Kdn8L6dogN5j5yik9UI8L93zPfty2NCqrpi0mvPdnB
	 JxwWfY7EX7eQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7821D3514A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502833374.645.8529591015822693018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc48a9ff7c8d23417d6e7c1bc3c4fc77b5fe4e95b1beff629b2a89ffde045fb
Date: Wed, 01 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775028333
