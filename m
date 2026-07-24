Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CE9225403
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784857234; cv=none; b=FHOtDpooUVxMVFb6QTTqpeqPV2gY8xITSKc8wt2o49M9SfRQajB+P2Iw9HWAlEpVvofFkeoOxE/LFvgoV+5qcJmGzfDOUk8flpdN1oLqU4pd6jJ+uW+omrpf/857PwHv1J5ckeHUFGa1nTbbNMnvLPf3XH8Xuvtp87nYVkepasc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784857234; c=relaxed/simple;
	bh=VBcH4rXJq5fGQG1JyTVv6UKPQzy7gS83JZn97nzIhXg=;
	h=To:Subject:From:Message-Id:Date; b=pt1WYKsmG01hQmhPSB/mRfa0hyWujU2zTSRjklN3czkxuywvRkH6hczuuG2ib8T+cvcmrt4pY3jj+zgyFabUxYFhSY0PsFoRx3Aj1hoVmk0B2qdegekT1wH23STUqrUTITMflWU2HxrnjKCLF5+Rz7x2wS543IMjOZVhXh3uO3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToCZLcs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToCZLcs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D691DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784857233;
	bh=VBcH4rXJq5fGQG1JyTVv6UKPQzy7gS83JZn97nzIhXg=;
	h=To:Subject:From:Date:From;
	b=ToCZLcs61lkz4kSrmrvwJIOj59cVznA/eyiN23ZH+cV8JBWEKprQegqeP2qKCsNPa
	 wMEDT88rXOqmZHo4FENHgQo+/fWdkEzBYodmjvjW7PvChPbF+hw1Wu67l24wg1ikis
	 xAz8RRWD/6RgZeEB0zmXqhm1ddyEWBDyDFD8IqVkQxBBN0F8ZSAsSPkLV5/K+ZgXG0
	 hB/d+0+zw+5AKLplwXXyDmu6mZzWFh7s4uWWucXoVZgNYHE7XgHCu4GE/gILt0klyF
	 IiTwTDsUftEV1vJ2VLZShpXPa76NuSfRRCaE1xTQtbnXWFo4g/D2Qttzj45sHMTAel
	 7bekuHUEjc9pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE15FC531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485723369.20363.4787093993662984543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d6b1cdcbc1616a2f63622cd465b324cb707ff041185e225e1ded4a0e4e5aa6
Date: Fri, 24 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784857233
