Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304CB276046
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748354394; cv=none; b=XJ0yehynMQvQSxgzOIw3hJGaz/nZhHrz2AVCYjSJB/nv4DYwIGPyn7+YDsrw6b9YY4D97z93mKT7vVGk9Iv9L13LI8S/iw56NjwFX7ZOxT9IrgtnOUyV4wwsWbYLUXmwIAu0bdYfN7XifjoZAVdeB/blIz8HkvyUaVCY2thHsMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748354394; c=relaxed/simple;
	bh=ANY+Bu/wdcgb3od3JYlTifoaZT83aXwVF2gHH6ZKO4U=;
	h=To:Subject:From:Message-Id:Date; b=PEgGn21tOQ8i7tIpXhWnl8y2jqQ/fHhTpuJ84o18XcJt2SCapIgEUN4AQu/RFymc6+finAmypVaiqDv0PgTdG3u0wu158pol2eHlfuOUF5lca+OxHNE1Dm7zeFM3AY0/ip0O5r7vElQkswCitOBJXYaUL7/zRxrsOpTifr0Wqbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx9Amwb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx9Amwb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0058C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748354393;
	bh=ANY+Bu/wdcgb3od3JYlTifoaZT83aXwVF2gHH6ZKO4U=;
	h=To:Subject:From:Date:From;
	b=nx9Amwb84DqMa8fh2dEVmg55QzsdmpPnJ/4yeLWt7W7mfz76RsUifECA6fJvB40nl
	 agHJmNKd+cwBUVWm2c+JHHs3AIBQun0ro6r6WIiNMzjt//OTwAJbbmtTthAd/9Rpyw
	 jwHzwz1uXz+2ekfGHTQaOU2I3sKNakKkL+JmiNZdxHPJo21xSdXUGSN4Ug1PsjC10X
	 DiealmSbx8rJTtgfbS97fX/ULc8PX6wzMgPDFkvCCrGkch8EPfjIn6IGsxEJgj9GTY
	 RJlkZbz2RdhrtvawDU2oY+WKMG4jtd2ye/p1F4odL8SiJJq8uO9537e5QPTpA+bhvi
	 4H6pI7zGdAlcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028DC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835439358.15419.10605332031433141581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ffb74b5e13b3ed8083a2c3a8b62850b0250357df9e7280b9f9a26c6fbc8d08
Date: Tue, 27 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748354393
