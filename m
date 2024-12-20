Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F84800
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734654954; cv=none; b=YTyksO2TYqojxW1o5138r4EX4/86oK9pW5VVkSIgYzzkBA0QlgtyxhX96HbjNoFYpBrGo5yharTt2R5IUgJG5I0F4btD5nhJA4t44+na/jdBtT5r6bdvwGcH7K+NimXo+l4R5/XmZ4Ypx5ofCETJ5C+Vt75lpa3I9+Tndmf8Yoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734654954; c=relaxed/simple;
	bh=rv8VjpLCD5ko53dcR+XnhVMXPG7u6iDeZDgGHzY8FeI=;
	h=To:Subject:From:Message-Id:Date; b=KcEpX97LhvvqESwYST4YPU2qX4aEeOU5RX6VENzLIq04EZ6Jglj7d1lr66lWdIHGiLG9T6jm6ubXCIgaOkiRGEJdJX+B4nd217HJkTytBuAfNrhOxsEpC2FsE/IGALhE+RlW7mmrfZ7OmoMCHOxaCrwnsXSG68W9z/FjzucpAbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYj78ezN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYj78ezN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C98C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734654953;
	bh=rv8VjpLCD5ko53dcR+XnhVMXPG7u6iDeZDgGHzY8FeI=;
	h=To:Subject:From:Date:From;
	b=uYj78ezNeMt/fu6ztNpYRhQN0LGV60u5nko6RsDqDP+HmNn3UwJ2JWyxqbZdvp6dg
	 V/H1sEsgq0jx9pmNDpN6T0oXH9QMm79Pp3R0yHXuG+jC8N3aKJKwGjVEKzGIU+Mvlh
	 s47cISYDa8MYhEuHTccnQNtvuMZC+lUkDV2Jn/eaJZWi+aNg3dZkT2+NJd9kGlQox0
	 kqVqZX+gZ2UL7G+1lcBKscap7v7ZjOxXmgo6FWiiOBYRCVWnF92N84emAo/mMZRyO4
	 0oRbXRafwfwtXJfBg2NM7yaHW2DU/kjv/Pn9EH3K81JbmgSaJe59vSdOI5Ej30AHLN
	 hn/1JjTqfQtHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B94E7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465495360.2837.9886177505586965575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4436aac58e89e6e63de9753ec67df312f76a85fd45dedbd9d0735256765a9c
Date: Fri, 20 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734654953
