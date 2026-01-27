Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B820221DB6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513634; cv=none; b=a9Ssnka/qsuX5N6uXRqTbh7DpheeufufPWw8UKFvLgNbTdIUir/Z9Wdvkjv/bwofHAimA4XyleZmq2VPyjyg/1GVms3GhYpNScwSZcF6tLU26j8bk7k8V6BdIPCFhk9AnNy9T1FLfdElge5umJUTFhSeDtbjSklzA2Nv+2Tbznw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513634; c=relaxed/simple;
	bh=uJxu9trw124vWNenJjWMilf0jJNNSSRa9FojCCVkJLQ=;
	h=To:Subject:From:Message-Id:Date; b=oCzcNof7MdONpPNYL3cxJlBcTgbgDezphI7uqLmaOhJU3IXwx2zF9gzQovwQUXbJ/1Qc+DH3H3q+PHJhdahwBdzXtSDWPy3JG0ULN1Wb3XtGHq+cRf0jgwtk00mZr2h9tdzBrscXKcLybndQudWU6+Q1EFfcst8r2tn5ZW3KUTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF4wUpAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF4wUpAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9976C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769513633;
	bh=uJxu9trw124vWNenJjWMilf0jJNNSSRa9FojCCVkJLQ=;
	h=To:Subject:From:Date:From;
	b=kF4wUpAA0wEag2+kJJJhm4b5vVNGV62FYTo8lPGH91mshBsKQtcr5PiWHQYlYzl8y
	 jscjBh6CKTnNuBKrgRU4Js0JkbvwFXEmWpx5PdbCmI3e0aqtUakBFKDdyICZ56EKkd
	 ydnsxUkjWC7bifeiWh9CmMj7LfW8ThVVGHK5GRjigm85H7fMogOS8hN6A2B5BNfcan
	 thM6XxKoj8s0vxH02mMEP2FhxCzX6egcQ0BARgDHhuG0o1rqhGdT9f6y9W9jYZFvFq
	 fMyNeuaMAmyXp6PAszsk9TUq5u+Dum0F2/PB7IFtWYLHbAtfF6Q73dDJVn9vCdcd43
	 FT9jidzV67Law==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DCFD2F001
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951363358.1807.2071053913887258427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e152b90d1f455b28c7ced3ae2bbcec5e3ba379c29ae08b3744ef0db8f3e805d
Date: Tue, 27 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769513633
