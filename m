Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2854328382
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752977994; cv=none; b=WzofS61JIbOenyFFi1BxO0yX8HZW+UGpPT+ab88TBDfPB6sqQcSuBAxgKwQXDeWVg5Jarrc8q4jpCwcRtsu3rwreR2PB+VBxxOOEoJ/YXFkycP2Uz9hskCECI60UKh+gxcUpDeH+imNgYBq+L8sOSqrEVY8xZMkgone5o++vnds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752977994; c=relaxed/simple;
	bh=kbOY8NX0hTdfsx43Bk1Q7NU0DBgyzNVrg2kszPCQtB4=;
	h=To:Subject:From:Message-Id:Date; b=UDRHdfAsuavj+8eNx1OZ7PmPcDZBnnPS1MYj99FYZKM8pKU20Mo4unkn1XfAF76lHdKMQ46rZFytbJ5xRDfnrngNh9KlHn5dWHcBlqMRVPx45wk5N7WjXuuQ1bCT6YFmLVzYFLH1g5KmVzjDcGqXq01StPi8A+uXfHhUPImD+lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOOODnNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOOODnNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A372DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752977993;
	bh=kbOY8NX0hTdfsx43Bk1Q7NU0DBgyzNVrg2kszPCQtB4=;
	h=To:Subject:From:Date:From;
	b=vOOODnNS6pcptbMDIKjJhZ0WnoG2+Q9gv6KpDdnJxFRPYz+Esogwxsx/GGNTADMes
	 xL7I7YKB7FDvNi5XcYQix68GjSOzlqn3kKLXBJj5YJjWjTByrLUfM3gLtgdwnyd30S
	 nZ9099LeBlm0g7/aW9v9/vCyZJhH5qnDO2iGvyB+SwDlWk+Dklh3Cr+v/xw2q1XdUc
	 oT9uSG3Ve7u3kxgAaidmm2bXmJfCKyDdJ63TRBIPCr5SeFekzxvTaPgzbBCfjTPaud
	 4SU6aDtMP2lRWoObJpyFqaxzKQqtMAWEqCJGKmdSxBkRYJ8yO6RG/O5//FBguUyYC0
	 TAtVe+dk+CMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92163C83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297799357.14528.6384261071679407367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b282cef5f0cd8f1cc8fd8487ee8ce4d86744ce5fc486a33f2629bb9482b68c02
Date: Sun, 20 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752977993
