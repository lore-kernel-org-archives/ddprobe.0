Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2293B15C158
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760839194; cv=none; b=CxmfKo32pNm+qQ1NLf4PqYQV6N9msA/Kyr3GIgkMUtYjDgAjb+4p1AZEsfjBNcUEVJ9NhZawib7nJ09qPcqs8znpny++J4OHJVNA6/PwTb3z+diTOqW810R20rugYyiUDa6IrsP0hucj9x3BiQ6V7pOoVMYbBBdBp8/2RB9gie4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760839194; c=relaxed/simple;
	bh=miD1mrfmtrWmf8AfwbjI3DxUe2XfSYgHeZ8y64BrAC4=;
	h=To:Subject:From:Message-Id:Date; b=AE3KAIAZQl/OsUSxcgcofm+f/I/XtdRm6/ILdt+uPfOZXAGwHhBjnsy+RoK9EDy+US1+pgYLsb11Oqa/5hxTmXG7TAWGdBRkpxbzFYttrX0722iB53gxbr99pqTHaO+FAior5rvbKAqPuL9lwr0jNsHKl9TxwSL18MkdS91fAz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kq3QDras; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kq3QDras"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81DAC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760839193;
	bh=miD1mrfmtrWmf8AfwbjI3DxUe2XfSYgHeZ8y64BrAC4=;
	h=To:Subject:From:Date:From;
	b=Kq3QDrasLTSBidrSPy043p54/BkQ7kQl3G/glqfaMYXijW1sbj0Au5QCyNYuUydF4
	 nSNyBkvXd1QDC5ucCsSXy9K1BCuRsV9qxcJE1Hzpvu1JBdytjVcD83mCySHq7ThU1l
	 bZ0DbHM+xK5KjQij+L7UJVEAVIDKubmsLFtHS0Qij8Nt2jZHwIegz0apFRXHG5ElMz
	 cohLIwONuYYsKqqyPqhaavFoEdZIU7hNEw8ByKlzS7mWs5oh6sySN/VOW3wyt1hqzq
	 3hG/F1yvZmf27sbo+qdRwnVa7FwM1vxQS82Xv8UmmA04OPyndEOnf2nvGRPnAf04e1
	 B1TgqylRp7KwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96291CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083919358.28535.4063646919581233142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5042e739df69fa0d7ae3fadf8842f0043651129dd7305c31208e0f35c7de80
Date: Sun, 19 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760839193
