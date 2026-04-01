Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AED729DB6E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775051134; cv=none; b=U8iG2lyUMkFZ4+SJgBXoY7o+8Eu/Dn8aAIcyMVlnkzcajhU3UNbjfT7ZujiGq5JlMn2s42VGzxIHZGNqVOPuNwf09iieG8JmXtafHnw4NXTd+SMvnY62I6Pmtz28VMIBnzMe2WLGOnK8OzuxtQNxMKlYbx2I3126ZTAgu5vJfZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775051134; c=relaxed/simple;
	bh=mULNPy4XLnygAqVUYlFKo09tYGYZ58qAs4aQ6AOmQiI=;
	h=To:Subject:From:Message-Id:Date; b=WqrTa++5Wfaj7i9kujY0+WBArgpf5HkFsADy/2VY1rDmYpZ4op5Mgwb+v3xkHmEAjErJG8e603V7muZ5+r52iO3kBm4t4Fnr6om3igq1lu0xtwnb/FsLljybskbzNNnGRNl3APIhCz2UN7icucpYjO1FNi5maXDOOYff6mcc3kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c83Ake4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c83Ake4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E1CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775051133;
	bh=mULNPy4XLnygAqVUYlFKo09tYGYZ58qAs4aQ6AOmQiI=;
	h=To:Subject:From:Date:From;
	b=c83Ake4Ja7dQTfuJIVD5bGwAhTroBUqkYtnux80pdH7Kf3Ihu3NPckgMAEXl4ksJn
	 gzMi7hhIA9qR21l22dSEcgCo8C8v3kVrrF163bWRG0vKGskxQt0upu+HgTm7eKeZmD
	 utg/5HdJdp4mEgKx9wdmD82zLp18uiNkJ2/jfMlp3TLemneXbjExz4G0zwGhNy/fYW
	 mxRMS3Q17JRcI6xLYAjSWWqLX2v9e8WCF2j/HHIeDx5DEtyHk1fOTC98kKOuYNLilq
	 bgG4lUszU/J/Bfrv9KrJhrh66OQ7Bjxgc4cqLw398/Qj73waRIw5LJJVfnG9VdZpNP
	 0Ejee4cZdN0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D72107637B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505113371.30918.8451140432582746985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb0bab406af15d08ebdd7e2bc31c04f206878fb8e464a4b65f1e0ffa761b852
Date: Wed, 01 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775051133
