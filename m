Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32837CD48
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776751654; cv=none; b=K2Tp2p85CsvegI1J5CYrQNkGlEIAW+kcPS5oUKbr3dH3d1RrrIwxuXnq9WbGdb+ZsJ7IC5HZdIZPt965XIp9GBiskegfPDjrER2JwKpXbM/GYELyccb/Ofu94sMUzsX+s1OHEzyOShzvoCzsSZVGhokrpjgxAC2gACoLIjvXUII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776751654; c=relaxed/simple;
	bh=fJnnhD2CSZEMRmNXxIJpPdXwiF0sPloM+GcDFVV3AQ8=;
	h=To:Subject:From:Message-Id:Date; b=GQXtALfXtnkV+QmZO681tcWWEN5iezeef7g8H/oV8glmR9Lc2t3JMJdctF3cnHP6BdZrOPpwpmYsa8isZ7vvm3xrZsVzzoCYrk7N9SBfSJo0wiFvaf1ucLEDypuiymDJyfEB03APFxxvsNzd+nlCBZM79wfhSHs2uYfNE1NA3Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm3I/XfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm3I/XfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE53DC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776751653;
	bh=fJnnhD2CSZEMRmNXxIJpPdXwiF0sPloM+GcDFVV3AQ8=;
	h=To:Subject:From:Date:From;
	b=Dm3I/XfTTFPQIfL4s4DA1k7nXR9KlJd5f6y7/sqHE6WJQFbNEQn1H9sIKbRswu6aO
	 eQzkKqvuiUcUv38AxJ5he9AXkj7dd3ark9wrM0EEceCtRQnRTy3GrTo+64sNxURjSS
	 /mxYXNF9mw6EUDALNBWjUUbtelyjTwgJ3tcqUNpDF3HG/CPbYgOfC9iVw+HiIum0c7
	 /8CksC1XuXLS21G6v8TesIAORBqGasbSwLUVmqapXDKo5c322WtOZv8pyB8hokQwej
	 g8mxKkFhYOg3Iv4GFm9BattnZJgTOWWsZDJAFcxiAKseLA26kQUiuyVALCkcMcAqK2
	 v3my0JkQHHFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0DDF327A9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675165370.3014.2441532646426144445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e927d276d4ad33013767c335a9b3dd56f3588e898b015ea4d586b1983864a4
Date: Tue, 21 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776751653
