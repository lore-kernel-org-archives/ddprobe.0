Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C81531C8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778720434; cv=none; b=Dl9dbppL8/CQiPks0VhvsCu85YosZXFWwe6PbGOB5YmGRxj2h8WCK6w7SXN2M2IXERauMo9/qOnm1iA3uICkOIRuNCSjmLs1OqFblGGBD+5ofMhjBmUsgxzmWrRAUCTKi0pxT4YeLWalyY9m8DcopLpZOz+lrjAXbrds+cDd2Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778720434; c=relaxed/simple;
	bh=R4DBJRHk2srHCMg6pPzPmTlPixxzD7sEmqoxG1g98ME=;
	h=To:Subject:From:Message-Id:Date; b=DsjFj5vKnFuBelSz1RSFMsHFJgBYT6ruNLWpgm3sskYanExm1IcW+Q6xl86G74mhjXquiYO2FCAAw+yPGYtLJuP9k4IaQn5SaDFNl3QmhkCpz0E5kgQV1Fi8EUhwgtIsC0zFq2wvgKSCAa+DESUo+Pkb53kEydaPG5iVcYBgcDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STthNRUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STthNRUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF26CC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778720433;
	bh=R4DBJRHk2srHCMg6pPzPmTlPixxzD7sEmqoxG1g98ME=;
	h=To:Subject:From:Date:From;
	b=STthNRUUWRM5FQBEO84/3Q4APfQKe+u51sf0eoj3rZsWGBgF/dgNhFsZwOqngDhUj
	 m4ACupFughqkTDaLaGduwr22AJ+gzJiDbUCmfJYPUmHvZFiioz83ODsmXqwH9hR5dD
	 mmbVjgWoW2l3BwhxbStKQHBt0Maim0rVhpw9frLXD6frMfCEF/23i5aQndqE3DnfFT
	 eXLNmrg0LtOjKWDYg8J7RY0ddF/USGsRCj8itu2aEyQAY47PKBSjWmB5Epv503KE9i
	 A3z60FSHPm764CorkCWi3a6Q0ogDxsaZYgFgJ6kBOlhfbuz1xxNVPzuPFjdkYR4zi6
	 TM7WV3eqggYDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01D4CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872043368.13505.18094837257016987322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21301d26bf37dc560c838b30cef388555e43413bcce6e033cf5ba4cd0250566
Date: Thu, 14 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778720433
