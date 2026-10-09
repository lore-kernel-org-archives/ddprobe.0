Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB742DAFA9
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791588034; cv=none; b=Dmp84DJ1QAva8b2GdoSvwGuF3FNq7maZaHD60v35DD56vF47mwihzt2oFtEXQfNlqUPcXFQxTh3x20io4tuLhgfF+8BGVUJrwWSkZFieC5/XjvDqyrThZl8cMYwymhcl+0l2WFuQq3vkyWn+ucOIDouaqZCgTvVc99aoJtsA8Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791588034; c=relaxed/simple;
	bh=Br/pcsQiKr4gH6QHTSNurQNpUJpxgvE9HAdBRsvG3No=;
	h=To:Subject:From:Message-Id:Date; b=eXXwKIiHPS0SXqLuh9DzBc3aPXOzEb6Kd4xXvJdcGRCOlzL4+uLqQok75bXxiK4q8kGIULkExphYLHNY1PWqXZ8cJY+vGyaAD6P2I7UWWJMhBEy6UovevVX8M4jxDZQywpL/R4bu+YlBWECPpBbZs8LZaQJU2z/e+GmXTs2tLC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5QJovhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5QJovhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4F6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791588033;
	bh=Br/pcsQiKr4gH6QHTSNurQNpUJpxgvE9HAdBRsvG3No=;
	h=To:Subject:From:Date:From;
	b=k5QJovhnW6D7JB5yHX7fMjvW4jOxKxRlmPRaikt+s4ZiaTQYfH0Pv4wZA9ESSr5h5
	 jXYLSO9AnL7Uz8GScSqcX3GVwrd88U7OlykZ5wtwD1WuJoIRV2UDlUgDS9BxYVxX16
	 GjY50rvxxHebDtk7akU30brS1mJc8gIKw4gGuXHAa8xxuFqEj/1ZuOhyodT7hajFPR
	 BCMnkMcY6XdkMKZF1KzBycRbYM2QsfsNAPPSzHutrGIvsFqxWYqAJXEkNHBBAAHdfU
	 4yv6CkwyGlCyuI5JYUiYuIHAN9sBmFVveFV/yAj7gK5t4LHOnF8uy95W7NMqjaL/qC
	 zZFjdW4Jhv0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF422CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158803368.9654.10838270986200075470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4aaa8aebd71a31066c308808ece96a60e809a4d7be20b5dcc780d7a44dc4006
Date: Fri, 09 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791588033
