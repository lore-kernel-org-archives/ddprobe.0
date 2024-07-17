Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426BA24205
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721249723; cv=none; b=b/yn/Zpf3pmjXJUYC/Ydjsnk6AwLsBb5N0GKHUs1FeREvO6ofpv9AA8i9w1a4mXI/XAx7lrf5BuMJzcDKreWlVL9M80rVGUSULsVUdu6Za6JrwirwOJZHt0ee0YWfaFjXbS/7J5C/BD9c1LQ1KbsQ+knDV2TvOcD1WT7uQHqNWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721249723; c=relaxed/simple;
	bh=fzcI46qbFzLw2DHJ/yB6WByq1zsTKxb5IqtB5c2XxOM=;
	h=To:Subject:From:Message-Id:Date; b=eH9vQRPpc2HxfPJkvpjTHFYVUTZRc4XpXeVINxHVEX1r4n3GIyJPRNri0azA4bA7ZmzQRGVso87M/OWJavKBi365ScGFkQ4yYBckeLb+FRxGBBaF4jTbzJLB/S6Ztbg2jHxZm8crLnoZhaRADsxlxfk9z9BGfD6H4ewhyOtwBB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbqCEPb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbqCEPb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE47BC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721249722;
	bh=fzcI46qbFzLw2DHJ/yB6WByq1zsTKxb5IqtB5c2XxOM=;
	h=To:Subject:From:Date:From;
	b=QbqCEPb2zgn2PIpfPmYaLhbk5p96kpJMeMCtwmn1CDDfrBFNuhVHj2esdP2Z8MiBv
	 eu2Y3gv+vt31AivU7Vnvz2svJc7Hobw8LCWj0XV88NE2XIKdAamSjchqVut04IO3Sa
	 3fJNoi7HqFsD3defTWPYkXZYUrztLI+eDCv8K5YrfLkK0TB8hkl3LL0os6DPvPGj4o
	 +U+GvY6ZhHt9pvpMhpQY6cwTdCEz4CzuQF7OOBCSRyfj8kav7k2rurDLUz2H5Sv/7H
	 6RBITBUZMoNrXjfZ/ecM8rqzruk3qr4voZmzKhPJwCYW1Ulb2kip29zggBphdDfg0Q
	 +lFSQX331YGtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC66C3DA5D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124972276.2106.5267306734856697558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f9001818fe55bb850d0575b9fa1057de69d318d3264ede0cd89a21313e5f85
Date: Wed, 17 Jul 2024 20:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721249722
