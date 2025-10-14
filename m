Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250D124DCEF
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760411394; cv=none; b=FalWshWtZQozPtgHl0io4uZXzSE/SHqgd155XDRfytukiyYn+gLYOMKnm+l4STQW/GyohLvECmgont7ALqrUYWQjxO2AgaVCdGOc97L17QP7UjY3m5eLHMZY68qkRuf6y7/TC4tASEmc56YUqfVitCcmj6lhHekymIUGsl5hn2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760411394; c=relaxed/simple;
	bh=vtm9PDTWOSJMLQ76WRFMMxUoX53YQnITta2HOBF4y0Q=;
	h=To:Subject:From:Message-Id:Date; b=LdtPz3emYkwrgyjYCr9NHL5uDClJE88Ff6ui07MkLDGuCKy/5/JG4T9IaNOp9i/mcoMs96qt53ydjPsO+cEyAWHxlUgtVFi9WiXmEs3RpCUwvxG7yaQfuOdYL9ChPpCQv7Sz+e4fvBb99i8EMFW7zPrErz62wi/n6fvuoYa0ks8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCPOqbV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCPOqbV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0845C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760411393;
	bh=vtm9PDTWOSJMLQ76WRFMMxUoX53YQnITta2HOBF4y0Q=;
	h=To:Subject:From:Date:From;
	b=lCPOqbV6eCIlKRQYtkawCRMPURKwwhubZmcQq6EF3Am7J2gag6DG2M+875xbDpi/m
	 6jI6VGVRogzDn4GFU9H42jH1gfZgeXktr5UtQs+bzLd0IjYxuPf9y8A3gVJRiBIgFh
	 V1vF0sSNmWcWPvH9J1XRGL7eLVO/jN7ilFRFfUyKBbOUQ8BfRq870xvNzq0/O9HDlh
	 weOJrANvRUcmdmpGXye8BkVt52tO7Qh9/qkTYuZ+Bd3US4dE+7FCf7SBMW1u4USKPB
	 TJjKgR2rvIfg9AjQA1n5QRk1vOAPxUFnowssZhd8ymAOKXVpvZdIAitQbEy4ZL9R7D
	 TBvXXa66ASsoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F152CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041139357.6163.8307858612116745857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9f56cc1661c122768b5f58765b0937a29cfac1809936747f2de7e54d4bf0c4
Date: Tue, 14 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760411393
