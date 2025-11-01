Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7B02620E5
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761991794; cv=none; b=dcUcMowy0MMtkqXTLBFB2DOxTqvX2JnQWDRNWFdtIFn8V20nSiLrT8ugsSv77dwCETMhYG+p5cw1vBNEU+3216Qz5zzuhOGuuHEQGfWR1g+GC60fth6MAoqcZhT76jDBC2euous4AA8X8+aQRanEofJto1P++bJ+TPq5NzK+wDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761991794; c=relaxed/simple;
	bh=phSKq+/t0N0jSrMxpFbY5cXuqLexYR3TR3g/62qxa3w=;
	h=To:Subject:From:Message-Id:Date; b=OTE5Wnm68Hfm44Fcos++WYJKFgMApXjGrqFHOZeTOur3v01LlGozWNLb8tot8qOB1V1WMpP15Z5aL52h/2fP3MoMf2nb4eD03KVfx9tVYF7e+MGQh0fcAxdDuyBD+0cNSuWH1/KHkLSYTLacTiA1ZRZSOQfcNooPXXYi0P5Ulhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEoogo4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEoogo4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7164C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761991793;
	bh=phSKq+/t0N0jSrMxpFbY5cXuqLexYR3TR3g/62qxa3w=;
	h=To:Subject:From:Date:From;
	b=DEoogo4VDOWpETkIG0MRz9KT9q/gY20vV+mWlfeSiT9A5WVMWF8aWYJkEAWQLa/OG
	 CjcAxUSKatVTnwdwsXNG2o2XBiAyzfew6ekdFJxIDqw6WyuUkMWS2UDZi84Ay0RgRg
	 EzNqQDMGTGtAkGIq2Nbjkdhs60AqTfHNxdfp7Oppzta01IyjR5q2cwPmdPbgd7htaX
	 8xRUIXA9iKFvklwoJozoTs2pYG/ovUAmPuiZYPMnPvUVhrfJCuowzIK84IoM660E7R
	 83R1mR2pco/bJ5nCG1q66qmlYvzk/grl9OptEIfpQtJIMpOO+XgDcGOeL/CcBJzBv+
	 IbFgoBVqbkWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFEACCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199179361.29223.3834713937225757143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32032e671a5ac3eb595411c4650ed39ad9723a0c2096c2d896ee924fd7f8971
Date: Sat, 01 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761991793
