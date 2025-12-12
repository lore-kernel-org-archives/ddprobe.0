Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C733985
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765504374; cv=none; b=niW9JUh2Cpf7/VksAJXu7OdVr0C+FUFtjxp95Yd+vFWO26Jmr4IL++AULefVcBOENr0L+iyAJRnhAUuUIRCUmOl3CF/+K74qvGhQ/4vvnhLdBGdBWl5owBdcKoGgDQDQRCJlu4w0NyZ9AfyHCMsBaG3yH02W8FWb55KcGSwc7bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765504374; c=relaxed/simple;
	bh=hAgi5MbGDDSHD+/xv22GwgAC3Qpnr1qtC5H7ubMAEs0=;
	h=To:Subject:From:Message-Id:Date; b=UGpSIMqkA7k1M3gnLccUEydhtN3jc7QkH8Cuyxmo7LN4kPYqGSmXdl6ggLENFIrth7/NXHiJX4tAaKBcoLVTTeTX/R2MD2yNkILn4pOt3RINaWam9sDyQoEqKxR8F1fA7qe2lfnOt0gpTBOUUYDbsIDzcW6u4UmmKvOFVJXkYQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HU7RYNqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HU7RYNqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8643C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765504373;
	bh=hAgi5MbGDDSHD+/xv22GwgAC3Qpnr1qtC5H7ubMAEs0=;
	h=To:Subject:From:Date:From;
	b=HU7RYNqvuxpaEAd074B/6HDYJgRbHscQkNKowS9RO3NJ5SubgOYdW1wnWkQ3BzRcO
	 Cw89DLpzss5wYUsLlnPUiKkB1xXYLrLA4Ap6JIKJma+U/I3ZFhbvwzgpDp+mkKi7eL
	 95JY2+LElKRjbDcVqtDAxXTZlheVr+eN5/fKbBeYDdQ9s1cyQDf/wUkpMboTcaJZi/
	 nYvEywN3FXrcDsLah6WDWlhhJ3CcBo0C/or0KaQ03l+X0IKJdnJYqzJdDLD0wJK6Ff
	 zS6CbYPgL7Kx7imGdVh0zE0fIyFtceAAiXtfdUVAS+Cc2qOmzq64hgiyxkmOqVUzTZ
	 mR2AvVva7xmNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952ABD4335B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550437359.11833.14824641948983662645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1676014f3a97edb67869108a0e48197c5eb73a8d5eae3f3004e64ff749f701d6
Date: Fri, 12 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765504373
