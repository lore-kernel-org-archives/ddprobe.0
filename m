Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996A330BF4E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763581314; cv=none; b=RjxoaDt/I6oc7CPEuUPtVnh2jb+lW78zJpoesaOydjgxWDU8Bx5hL8D44K0ksrI8LXyHu9Ld35XsCH5L9RmPbA6NIw8frTBlQGvCkSc40WCWaQ6EagOlpiQdilXYGa0UmiRVOr2wBihA10FFRetJDZiXpmT5Jw0dRp0iqCwLhPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763581314; c=relaxed/simple;
	bh=JgFKf8RvKVMQFgvOk5rrrsB5PdNIHt8HViYA+6PME8c=;
	h=To:Subject:From:Message-Id:Date; b=JiVSaOOQPcY4pTb3TgIcncQ71iiro8VdO344WwKvC/U7OFOI+nSfas2LKl4ZrHObwvGok+TmZxepPawC4bBbucfc4OitAOU4fBk/EkXVBPy4U2bMv0ab9qMsJHWntPmJbiydLlQCay7ZeG/VKStrK3M7LOwdaXu45PO2c0F9TCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZrCmjR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZrCmjR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC48C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763581313;
	bh=JgFKf8RvKVMQFgvOk5rrrsB5PdNIHt8HViYA+6PME8c=;
	h=To:Subject:From:Date:From;
	b=DZrCmjR9jPeeLQ8xLEq4C+PgCDMBT5SRauN2VUzud5KBkp0iVL8mHRQp3RiYaNG8v
	 /ERBfw3efI0SwZsKgioM3xYHlo2iUnhVD4x6lyH9wwGF/AU2EwmaizHYzSEV8WtFmZ
	 SdkKXolT+Ll2qfyEvHlUU4b3ej2ep9eo8CyrJcf81syU4ic8+dEbNqtrQT3/lJsmAa
	 4gmTjB4qCDuG6IsT900n8Rog1MSehXXnLc2PT7iT+sAWPtBaZAdFabIYIH/+C0tVSu
	 KafzpUtGMsby1hqxhXWCsXiY7k2L3Y+l/ZQlHL/QEgZT3XtQHqPyz4MYCTrlQLJ9MW
	 jFGkro2bkPfSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F9CF34AC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358131358.26747.4243938313999743260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c061dde7ef8b53d413bd74b12ce6cdc5386ce29bdd67b233580bc932c7236048
Date: Wed, 19 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763581313
