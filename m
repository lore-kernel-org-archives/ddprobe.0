Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB733B6CC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770333234; cv=none; b=pZhpFVlNyfAz7ioI1szxOnBeRdkG8PC86v07wfNZQuPiS/0guiV9DvTpRxSOwBJYxlEVED8hldRF7iG32RjzC0nWSoUXTVF0eeb4/52b/qhIly7yuZItWP75eaPFq1lL2J6BpvZbBPmqqmcmyk007QOo0rjVUcPqlEbatmsrNFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770333234; c=relaxed/simple;
	bh=8END+7RGQNeqZPGYvnVPDzWDKdRSVp7nDaxFLx5dNL4=;
	h=To:Subject:From:Message-Id:Date; b=ZneLWkAgvRp/xtotWbVLSg0IZmfz+RNueudkoE979P/79iWN1VCd7a8REh22TG+Y/NbUs4QvyKEsY/V9bWnlEN9jJgDL7clu7xJI8fZNXQTIMeNz2u2TbNGD9ksJaIVxNGc3mqSE++c7aIF0jII8O9ZTFlcj+kUyeevo/p+btnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvKT3z9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvKT3z9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA259C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770333233;
	bh=8END+7RGQNeqZPGYvnVPDzWDKdRSVp7nDaxFLx5dNL4=;
	h=To:Subject:From:Date:From;
	b=QvKT3z9bx84lKyHzVqCUrmLS8kwpUvbHSq2P+P0+YZs+qtWmEs66i4kQNe6tB+yhu
	 H/0Ze1JQ5ilgAdtPMfH4oKekoBoLnzfWPYX7PYcIowurC/7X07GcAeoep5MGkXcBz2
	 WlqXtgqqKA9xRuG+ie1RNd9Xp+XgrZgwXTWHuYSt7XFB1iOGUwaopINI+56VTo8mK7
	 wtoW+ctWd7mrX2y74kjchStBwnAs7jPhjkbQbDMM5i4hOdpClGmwoj22FQNoXMwbYw
	 tPjM7HJwTrV1niqYo197UFN1QOboSYLo9yMaPsIJkpSdx7tLoyDff89CGCByb9OOLW
	 a5hlnmj4/GFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF13ECD9B5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033323360.11428.15638943624072913497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad23f58247b00a217b95c29032f7c7bcaf4b5df36ceef23140f906ea4757ad1
Date: Thu, 05 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770333233
