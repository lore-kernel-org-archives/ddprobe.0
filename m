Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200E421D3F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760303994; cv=none; b=qsvlAzeDxa5XrWdX+W+w7OoSPTfurrryXwP9/+FkXV1mwoq7M/G8Vhz3va9jpTtXNaWuz6P5oALe7LbeyMe9WBX2Pcnc0KEhFqFnM+RzUNl0av0zlxJNqK0N2K4Ze4dxTZR6qmdpfoSs8eoYJcaQrgQ5q8b91+wNLUA1GspabTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760303994; c=relaxed/simple;
	bh=6SOBfMa6QE5GxSfGgmFRzjVHBeLGSl3Po3/2w0SpGu4=;
	h=To:Subject:From:Message-Id:Date; b=N+ZwW7B0YkUjDuC0Ar8iCUEz08bAC7kbZLAO53T6GTf1oFyC0lHkq3THn4BiyN17A1vo8v7FRbNsKu3gQaoORUPMWXmlaMBqZkIDiO4xfDowLtiRKR2Fy0jgq5zoa0a5NSv/WgBauzTMVqapAkXVNfWh9PThc8VacAQvq9aCWw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1+ynPk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1+ynPk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760303993;
	bh=6SOBfMa6QE5GxSfGgmFRzjVHBeLGSl3Po3/2w0SpGu4=;
	h=To:Subject:From:Date:From;
	b=K1+ynPk1bxxNNN0WXE48OBS43M2iqUSwTumtcnddVrb29VWIbzNmClpfFyhz+du55
	 /x2qg0mZFrZS5F+kdbKC95QtCi/+hAKXz1lrIlI7sA42FpqH66U4cpM0Q9nz1hJSDw
	 x30Vs6oxrLKUhBFSA2gMT2m4uPn2QjhMEIre8eQ1GNpvUWdM5K4jpdyGucBfePo+vm
	 XgSQWI4rWAecBUYCtft4r2Y35NglSV7iceUSYLucNNtS2DlYlY7twYy44Rfp++8Ezl
	 qLF1tymryIoWP4XlTM6EwJ3mdamxlYrr/IWFOgxAdUhxLJ6G/XAsG99Cz2M/3l13kE
	 iHWUfYK7cgfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C3ACCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030399359.7742.7683434858259320528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f92084d150d6ef03520ad499d693f053e14cd3a2d0708b71e9bb323103f8ea
Date: Sun, 12 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760303993
