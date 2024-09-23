Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23801184
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727055954; cv=none; b=nMgpqR1Ij+25v7w92rFiVsvfuqpHCUGJKz1dmFfM/5e2us3BVdXBm0dzYmNxO8YXeZ2H9zsn+fVrVMmpFPKQKNDx06CqyT1zp9QwZkjHf2TOntTkeLYvLZLEF574/D0lxsc4aHN+gOYHJEin21VF20A18Ly7vbVJxynqEH1160U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727055954; c=relaxed/simple;
	bh=v8LytfA+w/RVN3z5JfRk9csKbqB2RStcljNykQbYSuU=;
	h=To:Subject:From:Message-Id:Date; b=nQK4m/UbAG12zBg7hApnWqpn0Z2/IfbTO4R6+ZLJf07vNCmcE6EzZNyRLwx3fKBaDJFyjPg/tA779bXb5X8W6KwFKtUCNDyTY3uriu07nerJzFsSMAopl9+6Uvor8jRXqFa77KuM3iYRHCfIJMLZZYS8elaV8mS0c/tDBOzeJow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcrxsmCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcrxsmCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0EDC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727055953;
	bh=v8LytfA+w/RVN3z5JfRk9csKbqB2RStcljNykQbYSuU=;
	h=To:Subject:From:Date:From;
	b=pcrxsmCmvDQenPxeyO8vxxGXZYtjDbmqhL69LFYZrtDnZkxuxbQ8k3fur2uBmsd7a
	 2QKAZbOlmpb0bN1UcFaeWWRW6as3GcRbSeOtzC4Iw2dkBdeW7oc/ZRDeysxykNib70
	 5Mv0fUvxO8ia2plJ8oqGXhQJrLl38MdGyA1yQ9pozV4zmJ/LedOXGtVGoR7UdvHhLr
	 OQgH8qPSPA+VEYjwrZEXdM3FeD8xCnQUSpgYtOHZ8csohjp9R/peQU7/mxg5lIcKH6
	 RxDXEmf9zVGjgCASSaX9olo8Y5X/NU+BdpoT2PG3YR6GF5lD7WfbxdY/NQWX5R9mpF
	 eh11zmh4lu1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9751DCF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705595360.7652.5172788244768107634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1438c1fa4bf0beeb912be4102eeabb50b7c6bac83ba09bebd6a6f1f4df9fc59e
Date: Mon, 23 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727055953
