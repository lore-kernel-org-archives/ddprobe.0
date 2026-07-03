Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F133C343A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783085314; cv=none; b=q4xbzEVGCDVo4J79mENV9FDH0RFBkI2HOERLi/yavMBVs7TpPoMXdLbOmWyT0qD/8NqCag9nawwn6569Zx/7LFHPSmbEK9BZuAjWPLSDvSGAgxNqvPYvipFuAMfliv5W1hZcCUO0UnWWFHqTP73BAsl8HHzLpfZRGpmuXlEZKyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783085314; c=relaxed/simple;
	bh=zXW/eXrwn1lFHzIcG1bUZxrt+zHPZrg9GPJwNXViP0c=;
	h=To:Subject:From:Message-Id:Date; b=lfnxx6LfaOlmCa/HtKsLlJo8xwp3j2t+A5gRFdDtjb3ODrchWEePrF6IfX3uaOgTfGjI1cxd9TkCWE9k3wB+ThZ3nSP/M4rHd1jAawDo5QhfMRtURijuV79CAn+v5BhDDwBBJGqIKj82Kyf3+kez78r4lRa7zKbhKmXP0roemjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rm8Nrlqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rm8Nrlqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD7EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783085313;
	bh=zXW/eXrwn1lFHzIcG1bUZxrt+zHPZrg9GPJwNXViP0c=;
	h=To:Subject:From:Date:From;
	b=rm8NrlqdWp3Um5DCQOR7bZ8mfupSNRQsZKKMesaVXjeghZhrkul0rimoWrhV2UR2P
	 N7epCk0WyKU5MAulsk9MzVtXZGKz1+/nt31JMAcozwJRNH2t+N5MxbgEpn0NCRMMMj
	 BGYuY954Z3XEoH4XeOwqBKNdCGxJT7UthFL/Wxa0lX0UVU74cZn1AJwCEbw/2C1uPu
	 +KEkAj6kAKAsi/A+AFR/ROk5a6/5ZTNKZz9Qe//yhBfxpSBP/4GbPphEfCSXG/lohQ
	 pqkE6BS7Ul0nww68pQcI/Q2t7bW+ATdrEyVwnKA8ikq1dW8of9tbMxSu6GhqtIqS5o
	 mArRtAe6Zbw8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A940FC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308531368.14640.6017701674320690452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203f5a62772be17ad78f7c938b182b60d7c75e72e3eb6f5afb5fbf098096c840
Date: Fri, 03 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783085313
