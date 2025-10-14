Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098F226FA56
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760419194; cv=none; b=YP7JFd7WmpXy1tKq71b2sB07nNLLQhokOdy2YZxeN6Ak+/aIbYs7D6+n4HkuZoLePHuzT/FRftmAsD9Mtsoqj7Jf0/NjaIQ5PIiO6TOZuRKxJVWc6cchDK4epoABRH2RxUZOUUES4XBUCZ77hEQTw8YArp65UwBXTKLbZwFgChA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760419194; c=relaxed/simple;
	bh=sI/82DeY1iWa9f+3kG5jSBpB5PFKA8nmqXIfHnYgP7A=;
	h=To:Subject:From:Message-Id:Date; b=QQBnzh7sWivyWe6NxmJjbt33gDfAekFIBwt7KQlJJkrU8aGNqhNWmkX///b3zAJ/wlKaJ6K+/iUrnK3RHZKUc3kmqTBSvxgXRpHGfUoeCj7rbFn9vvosVZs5zapKJ8yv4cXDUlmVbG6e3wCAhXQMkWHbx8dKP6qOAr+dYUGtYUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un7wTxJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un7wTxJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F912C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760419193;
	bh=sI/82DeY1iWa9f+3kG5jSBpB5PFKA8nmqXIfHnYgP7A=;
	h=To:Subject:From:Date:From;
	b=un7wTxJXLLbjjvJTisGdQNvkHT4kDl4wMSyAnI3WMCmTiEMcNQQBHF3+cezJ9FH7f
	 D9TAEejZwhrWYeYYzMOssj/gffp4sn9jpQ/xBCXSts8o+z+Hxs03R9PYObfiwJESzz
	 /A4P5xJB0orggTawGYvvbrW/FUd7kMjnjVqvx3Oz+EzgJpsVrDF5ip3mQkZZ9CtI2W
	 zVBYXCw98a7lLp4viwJ8gnfp+OqsF6y099yTA25gSZU44ZH1rM2BW9gOY6AeAJJHb6
	 xA2vr9yMWVREX3D8CJmy58S9xU6dDpmbrY1VmsOUG2I0yQMokpnDGOcwi8FSBtFWfu
	 +HWlwVV9VezNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFDCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041919358.16907.1584369025055833800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc6dba40cbf748ea1929a308b21dc492c4854b7bbff0231a544a3c7254fb940
Date: Tue, 14 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760419193
