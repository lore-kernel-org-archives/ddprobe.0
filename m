Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAC431194E
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755593394; cv=none; b=KSo1laP6AV40lLhuu7p1WCmcEh280GsNK/fWPr8ICte/kOv9BawN8hGLSlJp2bJDn9Trrx57NVkdyFGbHGl1WgaNJKbX3U9op37+l9ZRfqdh98AeryCehldNFgzMcHViEHiMn9QLS/LkpMoU/5s6JHUpBcOu99N9NGwKGE2hb/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755593394; c=relaxed/simple;
	bh=6JOBkzldWMrPgm3d02zJd5kIaxI1nuMkd4AIoK4cCf8=;
	h=To:Subject:From:Message-Id:Date; b=TKQivDi1u2ni3zUHIMrW1ADjWbmH2/fzo3HOMI1heuzQ+nZ4o/nRyY7wF3odbwZHuRnj+2bziBdzzDVZWtdoX+mmdN/TLVKTDHquv3GDw1TeN0epRDJosLABzqvHvX5cKBY+MheFGL+uH/rZXcCjmmwQEL4DLVGPa9KZx7llyQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCESg48o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCESg48o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755593393;
	bh=6JOBkzldWMrPgm3d02zJd5kIaxI1nuMkd4AIoK4cCf8=;
	h=To:Subject:From:Date:From;
	b=kCESg48oDGYLpb5mrinioytZGi4gO5t21z+G7hFufdks7yLE/UzeXHnkdIEDLiKxZ
	 igAOeDvPKrRybfsmyS/spa8nwc+gOKXXapOGSxiZywU/iqEsMzhSY9jXz/XBLEdw2O
	 HryE79XitozL/WYqYf0JwGhpG1vcmv8T6Lia0El6kdi89WSMN9ka9s22BP0QAQMl2x
	 M+JM/fRVuWWDFDZlYDQ1u/V5GnOK1PADnDBRG+wzmkJ3oQtYae3bSsFep8tW8/Pr/G
	 hJd9rE8r11wgikD8Y96AM7Oo1wbSWHMUAWD0CCyei8bH/RwrbMmx9YlxX+ZGxOobSa
	 d1u7zfu93pBYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF00CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559339357.3219.332416668761291521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9756ef8808c19b161e8325c6efdd26389ae8208abdd3469679a96af43a5d2c
Date: Tue, 19 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755593393
