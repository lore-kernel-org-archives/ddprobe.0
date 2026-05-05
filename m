Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0E844CAEA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777988254; cv=none; b=kpPCcyx3UsYv82rGyvxySyFbp0HJzQbcv98txQC1x1ZsloVNVjTZlovb68f2yF7oEOkjHkIhZcTg1YywZL0Jd03g4QNfshrmGGziI7z5TQaVw+Vg/HTNBvcSJSVWV38xhnZIDUK/MTy7yGe7pDm5Ji+knFDnJf7sHmUMT4NATEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777988254; c=relaxed/simple;
	bh=z5yNlWJNgBfz8mCwhSJHqoz9WNuZzEsT6NsyQ7Lbit8=;
	h=To:Subject:From:Message-Id:Date; b=k20atbrUWEC7m2wk0KpPIB93wWkupoAAfdeUw3ii7zJg/s+rAzgagYXlk7CjTeiekSBDsjiyWCm+8lRHW3xM5wv1MTwpCWkttSyZs3A7SMSyexkymgfm/cW8Ijh1WqJrvCtuNbIlNOLI36AKN6S2rXO6XH3IlyhZEBbwXWxnjCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHqhQLNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHqhQLNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD72CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777988253;
	bh=z5yNlWJNgBfz8mCwhSJHqoz9WNuZzEsT6NsyQ7Lbit8=;
	h=To:Subject:From:Date:From;
	b=NHqhQLNEohuYBq5neXVAWWpJbyhC4b3eBNGreXBB6pgDU78dEx4m/s7opzh47tAG0
	 61R7uypxsl+w+WeVCLnK5j1PlHYbEXvkW0PzDYFi+EwcwwAxURoUqR3zBw9exjTLzp
	 cVsetbNE9cwKSjO5fZCpvf3QpxEQmGhapDAxiqRNcgScOr5YEQPiRVCc5Frx3HGHve
	 jQeD9mAmRZFJM26wFFOI9JFsKC5TEqvRuYMKLdbLm2RPB0dM4Ru2SyLAsNX4wCvjKT
	 1wSXtPLzEJexQnEzk2sN6FYEr4zvmfj6a8BMCtufKuBQuLaRgIQIebit3DA9TJogil
	 ZmRnonWCDtZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D3ECD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798825368.31888.11550993249827775354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ad00930f2223664dc848a9a9252251fff5a464418b08058ad97d86c16413dc
Date: Tue, 05 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777988253
