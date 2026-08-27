Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FAB368958
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787862034; cv=none; b=IC40k6P3fgMO7GdhutgY6/s5nJBRS7/OHAhcwXzgUF9tDoiXC1yQlaob1+znz/0a4L5UhM9Et85LvWPhRejKQRlYs1Tu/Sf6qgWZVbxgds8XsKqoRpJ/Sbhh3K9lpjNZpNwPJMnljwFeG1DLGD8WAuP91KVzJnxHalgTkDj9bPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787862034; c=relaxed/simple;
	bh=q9tKa3P0b6iTaYbSFPF4SQXyyIxndgNqcCluuOvpcAI=;
	h=To:Subject:From:Message-Id:Date; b=qrzxyO3zDqiK06pKYmwro04nmvYe86ir9kXCjIvjBYQqYmNV6KH6EckimH1nZC97/520SdE0hvIBBHRVIY7yjWcyrtv7X/OeoYahFBk9ovRK/PKB3YjUNRK/+3WnU8QCvCeTfztcQo2AvtVghIIYfgeb8SNKDPWTLjwvAoJZGNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4rugk8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4rugk8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB91AC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787862033;
	bh=q9tKa3P0b6iTaYbSFPF4SQXyyIxndgNqcCluuOvpcAI=;
	h=To:Subject:From:Date:From;
	b=c4rugk8gDR4iKN+mu8s5KRLlCNucD1ZmEGkVlprEbRRvKOIX1wW3Z2Kg1iQJcIG0t
	 eo2lRhuvgwxluxIgJ6qDzo3RRePFptU01j/m83nYNtMJOsPf4HcdOUCqngTTQ/C0kh
	 qfqZ1VodxFbGQohbJOx+D2z9Yol0LZ6mc/co/4kZUwKBrghdoloyJaD6Xt67LENvfj
	 gAsxhIrjScAhh1Qs2UHoSLsMduAkUO6xSDJHjlEwWU7V/z/5czpTiv/gANpDMPTVj7
	 fq6upgjnV7I3Lv64dkmWY0qMJ0eemTLx0/lo9d5ubWXmnKsSwf9iaMrNAy7wW5F2Kr
	 ktj4xipzeoKnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EFFC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786203368.29382.12629345784829718712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4729dcf0153ba167f2eda5ea9a934c870755ac8f9f58ed4a9cf2096e5d2e22b
Date: Thu, 27 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787862033
