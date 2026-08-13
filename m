Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5DB3D47CF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786659634; cv=none; b=rZCpMvNUQzUu9HO0O5OToPowvmUNGAbuP/QtiNp6lY5/8FBR+sDTyFGL0pdnuGoUTtRtFPnX/pEIO/JqeJO+/E4MsXZ4AbhxVGiGCTfCm44mw3yoVzv/CG3bfSw24fKKCY0SDl7+//w0/6RNNijWFxUY3ojZZdNgrVuXZ9Rbw+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786659634; c=relaxed/simple;
	bh=ld1VTQEnbmTV6oKfrUNS3k/QLOQPzwBdzP3uosZqIik=;
	h=To:Subject:From:Message-Id:Date; b=fRve1P9ITI5Ws8nhr8IVtyOotnqiLAm9lt/3HFSPVcp3gWn0k8aKH43Y8g6tOAN8lqlukndLv62buvOCWAXbkTlvALC91iFGJxe2xKvnxZeO0g7zuCZwFAIPZIjCIOlMqF18HV9boQXJIAgZawphONNe5jPL/2Zbwy+5Sg6mT54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLrIcwkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLrIcwkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66F8C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786659633;
	bh=ld1VTQEnbmTV6oKfrUNS3k/QLOQPzwBdzP3uosZqIik=;
	h=To:Subject:From:Date:From;
	b=cLrIcwkZg7BRaIGHlLBf6n7OrBwU3HFyNwezItacEpzFWXlAPwQRTknuvuAuSB+8W
	 K3X0V9p990qpeCxH0U+Q06wMdi/7oVy7uE07TUZAo5PwudIb5pGfxtiTt7MtrP3K4H
	 VZgSDGEjCGJp8I3p2EAvCpgjW2RVB3HiC+poCspzWui2ZmcLZRZvhixH/2oHcnpeb6
	 V6XtFjFqDKeT+AgVgt3I6C3Bi0GLG8/LeK4CnpFHQcDvzPZy238wHlYvAoDKr/QzEm
	 j4wJ9o+lFpoT7hukoqNp/QTvJX8NFM0MJDC5rQLUqNusmf4fK+9WfFQOvZzHfpNe3x
	 VajqSW+IcSN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF709C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665963368.10214.6956940421896368376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8711e49c59e31e0f76ebaa9407fb64afeaad0a488d27520ea4c4040bc724b18
Date: Thu, 13 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786659633
