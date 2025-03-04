Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CD833C9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741048134; cv=none; b=Tqf1NjbZVzlpad9HWE3iUW7ZSCMe5zkPwrUd2C7tczmNhL36C7h66G9KAa2C+EvbxMeO5iYMQ5ok36M1hmEw565EWHq5CHLYFcmVkOp/63mR6zfikL4ZxL94YFvKKHuhblItPcVNb3W+kQi+NSaJRkTX3QSNlsNb3/MW6FgfUWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741048134; c=relaxed/simple;
	bh=3VObm9qcuIVlLu6iLuQ/RcjacoS+xwlJ2wEhAqSYfcY=;
	h=To:Subject:From:Message-Id:Date; b=Ej8dYJf3qgpX+RKeo1Aa8LsOScmN2QQ4TRBi8f9dPQZcpwPne1VP2/WXCIcf1UvF6Bov5m2L2VN2QgaqTPb8ginRde9k+mwApSQKNYC9QxhiDjTbpnvJXdg1ggXcKijd/XKXphuQWCsk+6M2W8gQES7k5kqdomanWidObb5Po8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0jeH7eb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0jeH7eb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF15C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741048133;
	bh=3VObm9qcuIVlLu6iLuQ/RcjacoS+xwlJ2wEhAqSYfcY=;
	h=To:Subject:From:Date:From;
	b=J0jeH7ebM6nKPQNc6MqMB4qZa35k3nnTzvd7Ks5qEPjUrsBnBUSoKeLMTutCr/hLH
	 YTn7CX/MXT38lFTeonlb8Np7QEj7lcq45V35z8zSO0WknvYaXIlPUT8VmcJkUSTfnv
	 X8JvnppR6GyYq9j4GPilQzTjaGbCw4N3+1AsGMJ2B75J3Q1cRJ4ArhwpcMX0CKZ6Xy
	 N5qhfUXwdr53KWpcCDjUcvQwAiXDFu/P12AuvZzpH6vGee61DTzOPSXphLmBctwLA5
	 5ccs0w8bnWlsTYgtztDzeccavuyCFHBuTvjaJGPjd8gBs9lt8QadTQNfM50FUxTdy5
	 ygTlHDFT4Angg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A4C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104813361.21553.8890845081714104297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0898ff5e27a6fdcfe3c94d754c96b5824a123c373428c4f099fbed8dd7d8efa3
Date: Tue, 04 Mar 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741048133
