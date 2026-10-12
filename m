Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5180D23394B
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791782434; cv=none; b=CfEC2vOnCZ7asEMqzLM/IUIA0tHHd1487iOAjSUxsKc0ZLp6FMRdx8U/qvEsbAJN/8xd6N63NJbHg0eDAjqvn3LIClH2rNfMaat80Dl5uRgSeV0kI8on4am+9JEFltg/a7BciwSOYjg8PiwOlSZ3O44Zd1vRz66NRzIhy7T8dZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791782434; c=relaxed/simple;
	bh=TrN2bLKaRR2usc5IQhrNyEoP7DRJHYqZJLhxK10AnOg=;
	h=To:Subject:From:Message-Id:Date; b=uu7panQHW10oX0/zvagHBvt2ul+qspKJjlFcw8YV7xJOMimBUT5I4hpqDAAqD/LYb+25KngzTelh699T3mMYM/MHNVfuOb1ZMicVMUIU48fMjLIXeWsy6j+Mp9WIi2b7uylhDQ6xK8WcSs3k1LSiun3JJj3H+l+g3EVr8Lnte60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ppbs9gLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ppbs9gLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE04C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791782433;
	bh=TrN2bLKaRR2usc5IQhrNyEoP7DRJHYqZJLhxK10AnOg=;
	h=To:Subject:From:Date:From;
	b=Ppbs9gLjo0cGQA9FeK3r6/tcvd6G6lvloZcgVyuCWNYA5IjJ6p9E9TNz40asRM+k3
	 MLnNhdCoULVKvsSY4OwVYwglOGhcun1BH9/kw3gN4uJStF9Kg7KlVcoSY/v2dEb6ih
	 h6/AIZhnBrYi73gZ3Q2Z0L7l1Iokgui65OCBZUgfEKIeU/4isBcjEYcJoh95nsTZfM
	 wANC5boQYjPjLGOd4qkGPQImiJ+codDWrqPkMiKlMtP6/SStAlMY7Od7bdP8TcfKAb
	 xl9+t8xV5PbzReN3L7OX3Qj1rwxorueHNZRLTOdsuBLJov9F70Y0H31TWVx8ii9lvA
	 xzABBGWOmMs1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE67CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178243369.23628.16289147837641540348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af57cf5d6c78f308eb5d94b8594fcba6d428c6e62d204bfb7f9e7ccd0b3b20b3
Date: Mon, 12 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791782433
