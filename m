Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B06821CC5C
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787121034; cv=none; b=TyZ2j+j3CkeHc4vCdOggaAwHHi8GVfXo0HUpsFwaIaWGlr6jSc5h3O7CeJL7KcDfI0DEL2PIFjJuXy5Z+FRfw9cDbPzWtSomeifpgXwbNXN9n3HFIL1F4ldMRKbjElh9gNnrpYUxpseEGId0ggXbIC20pESIg19JfqBcrJ96Tdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787121034; c=relaxed/simple;
	bh=acs2QybYG2Pae2NtUqDnhO+1oMbQCgQO9MhXCErLIA0=;
	h=To:Subject:From:Message-Id:Date; b=NNY3Qrn0xhCFwzLlqHWqeX7yU0PUnz7NA0UlsYlbC1PWB21ecD25hAOITWc74jbSBQI3wckTCdTZ9N4AXdO+7ssO/DRo0zshPclvw4EQK2uQLbVLMiMa2DDma1fzz5AHpk1sT2zpnE8hHnwr3RUlMhVyeyc3ttV1TB8cwTPqhxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bA0HGJpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA0HGJpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAADC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787121033;
	bh=acs2QybYG2Pae2NtUqDnhO+1oMbQCgQO9MhXCErLIA0=;
	h=To:Subject:From:Date:From;
	b=bA0HGJpPik05Yu9vwkqZgtBOH6F2eueckwQiZH3f6jMh/oV3tl+NUsgfYNtUOJJSC
	 YDz+1AZ+vfWKl1pUkv5DcYRVpKaNZpSWwsJBDY5aETrc6zlfSh5yNaYq1YKTGowb1N
	 KxeL+jeRpQS5s79utxFS2XkBdxR+CUPvij+NzfqAjILk8zDlYqjfdeSs6ix6fi7WOX
	 c1QbUlnW4lL5uRgr5Vbf9bZG2PWYUeT+TlM5VRKPt6lDGd7xnjxjAhYW01/UDrExad
	 5CrGRP8rAgHiruvZm2FP4eyXXg6s09NISh+Jn+jMdaXiPMO8m6uxFUdtnNkMR+t7BE
	 KNBJZcy1Z388w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB62C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712103368.3269.7638357900149633162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6e21b6ded61d36c02c4df06a16a6ab0293eb23a18a200befb25fe5971d9090
Date: Wed, 19 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787121033
