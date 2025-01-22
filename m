Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E99212D65
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737569154; cv=none; b=tyFdICQMT9yxBx6zsZirgZ6jcZY6dWKw7q/qyHMj+eyc5XuK3DDemcfOMZKzcWciBoFFldl5fp01ZkBlh6fInklRDekXEPY6J6skiOsqpS98EERFf8E3ACYMmQlIkHHHR3b8W4Hnt1PHGNZ+jYxqrFWpcIskk+tfo0aBGrvI6Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737569154; c=relaxed/simple;
	bh=mGF6/uxD9SQkP3kHqrMoWJ9XlYVkf/ho5QjkAv/dvqc=;
	h=To:Subject:From:Message-Id:Date; b=eevHxX2JAe3CbzEELQck5YNZfw+0Ss+/3Zg4Ca6zGv8r7Jtp5KLvhNnONjEreucKaaIlb5Pv3WNGOgXWtmb33OPwaeXfbZaqdfne53NhYZnrpwAvbVa5hA9URtcAH3nBit5bLcAQBwW9WmzO+PgXRxgBB+oaWMtBCKtHC6Mnv9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhDKLW1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhDKLW1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5031C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737569153;
	bh=mGF6/uxD9SQkP3kHqrMoWJ9XlYVkf/ho5QjkAv/dvqc=;
	h=To:Subject:From:Date:From;
	b=jhDKLW1oG95gKOXJ75scsPHl0pWLnc8G9JHJoIVBpOFSPiKezuvQh70dXynqE7zOF
	 aOLyHwPqoWgvqWZL195FmNiH6aw7H1mtEtO313kaylil9WEFf9sRQX6K2ZBCP+EQOC
	 hPw5svdqdq8P7wbvIsAzRb3I6DL+4WqRCoHR8uzsJJlKDNS3sGPluF2afky/PtDbik
	 towXLgb2nxcMH6n8swJfEn5G1KrTRqp5frmy6d3LrSYI3e9sJjLo6BGDsD7UvBANMM
	 gO09eW5EG3eJBouRpAh5hSbsKbctvwYLP48o+dAiAaa0i2YAM9jt22aa7eE0GMbPrg
	 sRDRqhkgsjw/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91642C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756915358.29229.18141473561729438274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4ff8956880bbab6aa28bdafb95ca765dd1fdbcb473a396bb836ed8c1d0caf6
Date: Wed, 22 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737569153
