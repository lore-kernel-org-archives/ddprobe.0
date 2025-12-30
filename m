Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B572253A0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767117834; cv=none; b=TXdJoGort4pMFIRjDCqaqYia8ynuwOcE68IbaIcjg5Gx9COXW+pgWNlqjbKxJmVaWHBW3NHWBTyh1Xrewb4gu3jmNof5s9otRy2qyTeJWY8CC3XZP/weIjUkzOguZo6EtGqUxq8wOMUe1E49J7gghCmx3aPUT5kxWor4Umx3vAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767117834; c=relaxed/simple;
	bh=HCGckU0UotkElc37w8YPzQy+9LuTYmfQU3r4oKk9Y7M=;
	h=To:Subject:From:Message-Id:Date; b=eUVdBuHuT0h5TAEGBmkv7LqeAcXBh/nAzwU1SSDIyGpvWBYagtplpZcZdFkyHNR6yE7CYLyJjqIB+dkCxhgcV95TMFXq6e3v5RZizteB8i0pGoov2+DAFuzbIXZonDJCBNNLmtGoNUTSC6CAzu12wlMgCe1dsXnElAgTcUcUvgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4VSYoNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4VSYoNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FD9C116D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767117833;
	bh=HCGckU0UotkElc37w8YPzQy+9LuTYmfQU3r4oKk9Y7M=;
	h=To:Subject:From:Date:From;
	b=H4VSYoNl/N0dJIA38xgkV+N1K/4HlfZqhlIFGIQEemEcTszLiuB0tJFBY1+MkaeGK
	 vovytsSWjUCoGddwKNFh+AVR8HYmhmiElcZpL1tj2lnteFCUgl0PgICrOGgOFZuf+u
	 JsFV8Qlc9WJ9pC7kNaR50BynNQ3J5CW4ZnJ/JwQvFg7bZo43sobtqXCBtynp1yUlIQ
	 2ugRASkDOg5D+huqSjC/0oTtYtlWfpap/gqMcIh9N3Gydf4yAEQlcf11y3jy/MYMIR
	 Kbs99pzyWUvnK/j+ErC1GLV11f9hEG1RrLiDkJifkjcj09IiHtCIrrQqkwJfk1fK4/
	 S7LyB67JgHtdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94917EE4992
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711783359.17171.4886604669640468795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b670c34d2c7f8373b5da58338dfdcec4ad8fe942b6e90ba14492e609e89464
Date: Tue, 30 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767117833
