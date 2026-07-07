Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4630442087F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783456114; cv=none; b=DQWKVBnCURWL7qQloPSmcoPSQVeyb4jCFj7HAzHRy7pP37gEjRM0wXB9N4i7abemDGNOFrUqk3UIUYQM3xZWxbDzwIjMOm536bL8ZULzAeSaWKv7rPiyaBAOxJqzm36x1WgJQt+8FdIzjsK6FGf+O2JgujatXggsYk0/msH1VgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783456114; c=relaxed/simple;
	bh=93ImkN3wYpbvb+VZmITu9eAZrc00PzIcL2MaHjJl0DI=;
	h=To:Subject:From:Message-Id:Date; b=fZ6aLuoRpJqR/GWWgwfLmVTl8nKPS3z8Pwj7MuwphQyIZPKh6DTjBOAG9bGps/9qOivp5v7Z+6zO1s0VgUV/c4UjMYs+YZSLbg5Hwqghgz0bkdbWmwaajhoCpnqBHkqsg59kKLsTn7IJQT2jGtrS6iYkAov3FqyAGmmkx2Brp4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5nyBIDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5nyBIDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA801C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783456113;
	bh=93ImkN3wYpbvb+VZmITu9eAZrc00PzIcL2MaHjJl0DI=;
	h=To:Subject:From:Date:From;
	b=L5nyBIDZcBlqCUPGYYjhiKA2nUzKV37ZHftrHW8JmfhTI3FOspxQihL9KorrzTFGr
	 eQdxwSYqeTZH6nNuNcKctFbxBNQ6/DymSZ+Ap4DQcLdtT7Bv8EI6/wJziRLm1xoQvH
	 BrplxbQ2hk4QX6aH67HShYnk0yKQESHIdOy/wwL/CnE8nZfLQNz9L844Az9xNcsYoL
	 kspykfNlP5/wzdqBpJzorjgEvgCNkylxFI/Tj/DMap80+T6H8DdaVZYDWfLZS1QIwM
	 CAtXY7XdjmdmcgBxe3+Ju9gKvzUzY+28yJxaSwNboi7g36TN/z2w9gf8U16wE53eGz
	 CdcKxUIYPyjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D81C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345611368.19910.13068073137599162726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9440b34a05342b56ac1d9bb2e2eb783c46660d04585c5a81e7ba20300208779
Date: Tue, 07 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783456113
