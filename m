Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353541514DC
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756859994; cv=none; b=PhexEMTr4RUgK7YN6LkooHMPxTp24qbJofOWsdnLcaYwVWvpFQOfg9lJmhRe2HlWY4SNndjtqNQ99nSurIKllXhp+gdkcVbiAb4euhLYKrdpoL2Sz1XbnqkXTTfYQAXNtlm2Js5LqGiQ8tRWVYo9Ce3UN8EZt26N7IFDkvPdmx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756859994; c=relaxed/simple;
	bh=rr24ogmI4O81NNV/aPCTqYCW7xBQXYBg9qrEOrLIiuw=;
	h=To:Subject:From:Message-Id:Date; b=XsyBAgZyRoAMyOF1xaVlvOkKbFiqgT72rC4d1iB6bF9m+X/43BDAZARoU1WkwuT6HV6XaLyuB8KGCNEVmbBD8kVgNGuf6MQcG4Tvlr1ue/GPKvwKSUfCOHZ7C6iOs+tOHE1dNptTUCeeg9OBiOvMcwWxMdJ/0xMGBmsvPE4n3po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHZyq6HC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHZyq6HC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F03C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756859993;
	bh=rr24ogmI4O81NNV/aPCTqYCW7xBQXYBg9qrEOrLIiuw=;
	h=To:Subject:From:Date:From;
	b=DHZyq6HCpIXxGF7Va7Qit9YZ4V14NcZGA4Bb21ex25t2BZEj9ACBY1VJs4HDo0bAO
	 5FvFTUsO2JFwv+ZRrwLLaA60Asp+z6Yd5C0qLTXfp/JZnFyDRj/RKCBfu1e188gPc3
	 e8k1BUx6UDPad5AEfwYJezl0uQoacwEhUuRl0IYfbH7HnATrq8vNhKSJPqb9+GE/2w
	 55vjrKK49NpJS9vdjPwBsByV8a8xZWUoIrs3wNrnWoJ+hYYqoql99GBnwHXe2RTCSe
	 y3sFL5NMn59HvK9xzT+NIAC9PYipbMAGtwXMvT0meVjroVzkXlGl38h8ilJMu8nMfk
	 n5r93jhVwAgBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95222CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685999357.16596.11120720352696000860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1806077bf40a05e10ce91aef49a4be613878afe198e59becb3a30bc133761601
Date: Wed, 03 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756859993
