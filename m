Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B56A125D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742863794; cv=none; b=AnY2GZ1mqT3UsypY2KpTc8tnTp3BXCL91J4Q13yKY+Wyrv+0u5IDs0XzDiu2EonSeSYlSNQchO6TcwH3VC+6LxXI7/mnXIzH5wFaccix3fAjzk1xnnJ++Q8R345QjTf+txrby7+yyO9WyWjj9kiErJK0dad+qgY0HjFl/C8v8RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742863794; c=relaxed/simple;
	bh=jzO0bUviiSzQvcuYnOORSMZOhpr5cLigBiXxLKlCpLQ=;
	h=To:Subject:From:Message-Id:Date; b=ZN+VW0GZ1A+HtlPDXfNB8hOFUQCno/Y5HO+B8woDrkr+N3sjRWuoTIt7P1vQjJIOizjswjVAgB6TKeIyE+njD3rnhW3oydYpafL+zBnDsFyHiNmbzQc0DE+eiQxWDRnTTUhC2UqjnakFPTxgbjrKdglO/4RPTh+5YvLw+EPvZ+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYzWL/Py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYzWL/Py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA79C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742863793;
	bh=jzO0bUviiSzQvcuYnOORSMZOhpr5cLigBiXxLKlCpLQ=;
	h=To:Subject:From:Date:From;
	b=nYzWL/Py3ybv0P6PNK7APA3TnNE8+CULBgeASghVd0n0nS8iUih5yf5mApHuT6B2e
	 2Srsp2DJFyE+3yemiZ6YtV2kFdBxyh0EvvTF++V9rIyulJsKbwPgb8KEOK/sOPV95u
	 PukljstNYmO/xgs1yu6j0SzTg90djr4S5NQa43SEtMTvE2bRBm5FmysNGM6UAJ8HUT
	 oLQ3IfuoM06DQ9GvIXX+EczTyrmU6o68GQCw5ry6OaWr7S/pl5bbJ6pL0aca5XA2o6
	 hNUOJjh1/2qaNG7r84PHZNPMXZxGrmHIpQKhntx+nvGl/QfFomJLhV1+bG/jTHTaru
	 5B8atLF5X++Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C575C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286379362.21119.13837540281676581484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36bbf6cf710b54eeda61f1ae90e6b70027d8a168138ee458189b46bed1199c92
Date: Tue, 25 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742863793
