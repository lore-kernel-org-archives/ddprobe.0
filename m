Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096C630BF5D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767177234; cv=none; b=N9U0jt5M7quIhnQaoid812qxm1nwaR51p851XfL5OyL4HXhAyymDbiV5iLdXhGssoazctbxdwgEB8LScREBF/d5eEoXU1ucF2iGHP/vSPO9fnoIAVa825wpX8ahD465/3gX1Lo82mcMxhoPAwlW5PLXM1GGvBMSOV7tKhDpGa3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767177234; c=relaxed/simple;
	bh=5oD2vibaWc6IbdE6o/KvdWiiXH7CNyjsF5xP7o1/jA8=;
	h=To:Subject:From:Message-Id:Date; b=JcvBMWv+X/nUhFKAAHybaS21n9lCA7TaBHF6EPFUwk3Y75R6izfmhChjL/KFOwmlOrIUT5UlE8POs9lBNCVySCeptTg/JoSDssE2r15x3g5qi+yCNHDBM89YX4FvttuLyv6/IKz9kh+j7CjZTgPnmKrONmficiXlArUV2XtwKuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhLlvhR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhLlvhR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A6B9C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767177233;
	bh=5oD2vibaWc6IbdE6o/KvdWiiXH7CNyjsF5xP7o1/jA8=;
	h=To:Subject:From:Date:From;
	b=FhLlvhR4yQwCWpQ6paUaik3Zr6U98PBR7/DUfGHynABX0MXmfGV7xDvxvvuJj/6IY
	 7sfZThrwVl3pAmaGZcLXsWuIUY0KjytZFIzZ2ZHkLnG9FdwjuT7FJKA+cgfPJthau8
	 Z4+Ruff/rYP45XBcykHUHfMK2metvRHVr3CDCtFvU0j81yqbbjoqcX7a9lYTFBQnvb
	 9uiEx70CIn9F0x+ZZ6uCnZelmNJei2EUULDOo1D7eR4P8+CGOzloCiRTcC4LhfVV0t
	 jHhqVemxEPNQBPmQQOyGfoL32M++lJfujs53OfK3UJ9uSUxrzGTT4ihQN0H/vZSwmJ
	 i3qFDVGOfMHjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E608EE6425
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717723357.24788.2960928500546530944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d98bd87cb185a0aa0508fb7783a3cda97bbe79b894acde99d60c4502733256b
Date: Wed, 31 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767177233
