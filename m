Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F733A4521
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788195634; cv=none; b=fbQPHBCqpO7vKJE6vW8Cmn03yhr+TGGeSj0Jv8N5Yifw2WkO9y/TlzZn6GS23ye4rZEu+UHskAic1lXnETMM5xM9qXyMDlfq8JMyK6ntg29GcgthDvb11v4O0TlwbdaFAz9CmsLFjh0B0HDTsoanElAUvfLAEqkHtYnogFOCizE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788195634; c=relaxed/simple;
	bh=HGyJJnIZhjV34dvk06n7qPKUjYwHin7xy85TqdarNuc=;
	h=To:Subject:From:Message-Id:Date; b=OBty/CHqi3SJaxyoB79GwtGM+xIU+8pnSSdIjw3DQ0CQAXLU2dcmJYqV1S8CIm2pOUqVn6mIhpKVmMDtbshCElvpxf0u1FcqB0c7Pa/V+OfZ3gjpBMPLlrh6nfc+FDK2ZgZFjvqAm7BnSu5pEW8diym3XcLty9Z31wgDj4RpOxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojjWyNrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojjWyNrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD82DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788195633;
	bh=HGyJJnIZhjV34dvk06n7qPKUjYwHin7xy85TqdarNuc=;
	h=To:Subject:From:Date:From;
	b=ojjWyNrTF9tXbkrPhu3tzzIuaiUCwhBjIyIgZyTByRDNhp4x5HA7TJaSW+ub4dU/m
	 vLcIUcvytQcjJPKKEs2scPmAwWtewohEDVlXYwyeUPU3v3u37nwiF7OvgfUZhptlAX
	 gD1cEMch65d/CSlA02JX6kq9qugQmaqWGO+V9/awQMjgUAiyYmo8jGaVE98WlQC5Mo
	 nau4OSxbORa34GfW2OVH0sRYxY9OsQ/DWnkCgECHrgGRDMHu00ormjKmYhhq57eC7f
	 COD7s+CLrslEVn0MjsJlPuubja+ttWI3DdNqddTPSkORbuPPTii7lOIWfIyfDcd7+G
	 GVyoHVQRdVtog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22CC624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819563368.8014.14072697692720976066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eb0d44ab28266781eaf591d11b294d3e35dea12639f70f37547d4b8e7b1a54
Date: Mon, 31 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788195633
