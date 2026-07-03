Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D82320A34
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783116514; cv=none; b=lmhtM7XwEGxDN496fkD/nBEWFFrWVtIQDpdhCr5nHQaZpshlnbxQpq9t3pnAcLKzv+by4Qb4lUqpPjWR/Q0wkNxv8Y5j8bgZZfnCoDWPKHjePePFoN4ECNEEElmXFxWyWGsytWUZthThkCSsYHvZOD62uhOquVY5561F0dDrTnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783116514; c=relaxed/simple;
	bh=MSKteYnkQJngrK5r8GZ6PLmzVBChDalGuHZ3djkWdhk=;
	h=To:Subject:From:Message-Id:Date; b=pZx2jeJQwgV0N1Au6gHiH1p5cLjFQtiaD1N7ba6sRojCatqov5QV2ZSM/Dl+byTVIpuXt6QXl2Z3QpW1jutTux7oap5CmUVLUTJf45BLJlAa8X7nTvZNe/2M9rFtwefKYHK6bfAdSCNqTBUiXlJSJSOwivaN7Cl5ZPxyH9w1PNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mACSQzVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mACSQzVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFF5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783116513;
	bh=MSKteYnkQJngrK5r8GZ6PLmzVBChDalGuHZ3djkWdhk=;
	h=To:Subject:From:Date:From;
	b=mACSQzVOx05bUbTag38ZNYnJreBKsMM20a4Bl32zylzhDV5Ps2wcTHjePeCBbTLdx
	 wITKKERVxIXBcPbaO0yQLbzqvqI/wVSTZsk8K9spx+B4ZfRB6bqCYeqU/QyXEVujzJ
	 R7X5+4VV8IF/65IC2rOLIiddfe0/ni3vGZX7OoTPBHmT3aeMB61w9BYKWGubVxDNR0
	 F8qpt5ntrLqQSShvB0p4nFTSuNWPB/UVTNgPp6oomPhUtY0rcqkP6hfaAjb3Y8Ei/Z
	 ULiHPB3c6uTGIw2XHdW+NXDzmJvr97h0OLzuTD9fgk1NnhMhKNlyVQHjOujL8OV4Qj
	 rBUtpufv5FmQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE201C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311651368.17503.15126597447455681001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3ce7b8c6347be2ad325878e65c07e9cc35cf7c86cfa901daaad0a9ae4ffaab
Date: Fri, 03 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783116513
