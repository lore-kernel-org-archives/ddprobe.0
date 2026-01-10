Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA5619F12D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768070634; cv=none; b=NPn4noVFJvsrSa2E0wzpDs9+nzGzZgozE1rUn5+d2jWlzZ4R/OWhyBWeiahK29lRt7naCaYvnw/MfyybYms1dEbLKpIGCXUFhwcG/Iqar826M4rOE668xcE2A6kuMvW/B/cVZtURVBEsmjs6cfwVGylkM/uRvAsKbxx6GyUUJvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768070634; c=relaxed/simple;
	bh=PzJ7mDl6QsE/whkXjgoY3eVB+rTnth3wjq+u0uoqmF4=;
	h=To:Subject:From:Message-Id:Date; b=PE5DEGC7E7jc8EXQfysm9xAsEyjOqyljrKYHH70yBB3eJM9b1ufapoZ8gqDQJxHt6PvhhDWAQkehwrufsTI6YL7huRjwlVbZwvo0LoV98B4dWHrnXZVYwG+mg0CpBmBt2DS1I4fxBxpWk+auP/076xdkkpAfk0peQyHQ9Kdg7e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtlc4yZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtlc4yZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3FBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768070633;
	bh=PzJ7mDl6QsE/whkXjgoY3eVB+rTnth3wjq+u0uoqmF4=;
	h=To:Subject:From:Date:From;
	b=rtlc4yZVzCt/gTusyCZaFlkfJOqm72vKzQ1KNtz151U36hq7lCq9jKO/Z8trVnXdV
	 iDTfK3KtFzhuAkEPMhUXtQDn8EDGPsLFa9jyLTtMKGGwR5CwBY0sHKbEcwie6ZjEnm
	 AVIow0LnOb9es4XnHZZrplDSr8rbOjeHwidQZGM1SdLIhDH4Zv2Vuw3Am+9TmQfMac
	 +P4/x5IvWrV0iEfBwFdmiqCJiAPyvBDacUXrIGDRvXjUeTYdteymmsw2pRoDgKv5pu
	 DrZB11MMGIJaH5I/PR01aCak/oH6DFUW4o2MoiPQ9uVFjdrj+KoedN96YJkfOR1ysH
	 4MDrbj/bIFZvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E562D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807063357.18281.8439850617673366685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d172f14defca9cad0c192da8bc6d4a2ae549b6bfaa71b5cf8128ecb55bf9fa76
Date: Sat, 10 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768070633
