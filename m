Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1D0276050
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776619653; cv=none; b=Ka0oBidkI60jyrMVhDSctpsHq+6otg7orK3WslHb87q+DELP4O28sUcmKWfeGxiThq+IU7iBXfVa87VwzBjOlQlj44AFlH5JmxOi0P7Ht3/VAvL40PJcZ6gqoLqk0BAS458rILufvb0vaGV6mKKBNA5RjuGsPNR/CkBbU+dKuJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776619653; c=relaxed/simple;
	bh=Q8hPD3EggiaAT3OoON+TzD2bqlSHGJwbkaNZOBEM1Z8=;
	h=To:Subject:From:Message-Id:Date; b=PX/uShtyJvFFGTTBLPu8ahtSO0ADtyQdBJ3OilsqAez7Vc7ikx2eYO2wbSmbmBYjZUqPDxhztpv7kXLqKV2OPV3AF1f74dDnx+UeIx2xREh7tv3WDhgE7AtfnejL5gMGeOHc0swzwcRhAT0c/Ub5gffMeJ1ZApzNQhZuq8YIUus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpZRiRUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpZRiRUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC83C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776619653;
	bh=Q8hPD3EggiaAT3OoON+TzD2bqlSHGJwbkaNZOBEM1Z8=;
	h=To:Subject:From:Date:From;
	b=jpZRiRUix8YDSPyvyel4056m/HN75GdktozX/aljxITZgr8LQpvJcPo7t5/zXZVB3
	 k8rLcDJ7/JUti9w05mBMPcmaPWfoG9KXL6RITY9kVP6CzyvCaZENyyVgwDw0GQAPA5
	 jC+2ypQEe1AGJKbAJhTtVXkkKrEtc5KyKZd5jj8JZw6r+WIsCcmxOijWQzOlNBRHJY
	 jMN73vRP+61+p6xSR4QQSM4UvwOo11Nw4nAZfcBsWfgh61hEt8pJAe51+fw7y7eNhG
	 nJEQExc3rr4PnWtugpz9rcDgdMUdxYFdu+K0WZOXqSYTcQj2nHTIeNrZ2uchjwYIgY
	 gdlzcDF4E865Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF46EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661965368.2126.2464764778073137210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d78944e5c5e6584da25845694cbb82c236ce6b26dde22a57264b53d51e910ce
Date: Sun, 19 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776619653
