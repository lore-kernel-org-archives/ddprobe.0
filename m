Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EF818EB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778907634; cv=none; b=PtdzVwv8IeYzjB+XflW9ozZziW2tpPCB1c1HKb7sFHPzMKzg5ivUQ/82W2mLW+aHDhtUDPGjlkNG8TTzWgdBPn0zhP4G7SN1XOSrInpEZf9Y9XApTsxp31gp61L+ARvy/W1vDKoQ2KazOPj5x5L6rLF81X5nTmkiowJ/qIx/Kxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778907634; c=relaxed/simple;
	bh=PQfhj09Wj6cMAssKvMt4C/hZ2U5xEzhVRAMAoFG6WcE=;
	h=To:Subject:From:Message-Id:Date; b=NC5DQFGFckmEsnXJGRKVVxYyr5r39AlZxGg9OBVPSam5foVmnOqBSZouCvQRk2dtAKth4SsG564hHcBDCSx19N1mmikNB+FXrTVKd42btiwxyQlBf6O66mhO55WwP7Rc5lwLZcEtTM89Xp1T++1MiVjTGEU4rHqY8CYEDXslnLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/RGWoHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/RGWoHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA13AC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778907633;
	bh=PQfhj09Wj6cMAssKvMt4C/hZ2U5xEzhVRAMAoFG6WcE=;
	h=To:Subject:From:Date:From;
	b=W/RGWoHcfI/7dNlNzAQBNOVTZL11LflSKwZHHhOJpzVrqKzJ8HCMwVl8+3Opbpudt
	 iEsJgBJBVhSkdcbeQPP9eZExF9eT1XoQ1MqMblkdrT9z4R2cvmqn4opJzj3DnPdzfh
	 5wd1kUYdIaX4615xDnPA0ZeDduajAQLzjteFNRdGA3vQ+ulNTx/toCFuHK3RFd+BO0
	 qMmWXEZX1u8ZO4M0sRuc88jZacISJNg+BmGLq5S5e/J/dsPXPghEbSj++3o8TtSMdJ
	 03nYzb0t4cyeVAnDt6xWvURpNAkL4bkwVyq6EWTX0DoB38PdVS+4LsHKbN83FkErpr
	 YmWjRIJYxmFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57B5CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890763370.8466.6300726339412758918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b30db68591f0b3fda53f55a703c6201d843351abee5d2acc35a3c98d3de4ffb
Date: Sat, 16 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778907633
