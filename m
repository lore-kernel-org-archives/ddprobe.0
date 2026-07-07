Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422B1188713
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783399114; cv=none; b=e+DQTQCEQAu3sZ0c29Pe17WEhrsOd+nkp/F7TxofMvh/XNCiCvETw3hVGHp6VJKjaI8DmFEhWjrnE2Lkl1bYBRsgrVL6+Z6UHV7Kq0KMWeu5SBz0+RRMEYl2bsv/5zben0gBXts5iAWdQLA+fS8TQZWj6t4YuQl9wQZra55R7Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783399114; c=relaxed/simple;
	bh=WJoeA/jVN2iU9Rqe0lxkXcjqZQHIM26Vl9d2AQEKKT0=;
	h=To:Subject:From:Message-Id:Date; b=GXX9jxdkezr2Lva/5Ea32dBJR7AuzKa4wMnGqwLlhM82OwvUYh4DM8I/tbn6k0brtJ+GRPQypqzitp5tDEWA4o9fXU8IBrxswn+F0b8X8GiEcNh1F5GxaCDnb/xwPnd6jDw7f/CLacAKcGYnSSFNzm/PxUf6/zxXUzsgMnjmDAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YM+ozjvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YM+ozjvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4036C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783399113;
	bh=WJoeA/jVN2iU9Rqe0lxkXcjqZQHIM26Vl9d2AQEKKT0=;
	h=To:Subject:From:Date:From;
	b=YM+ozjvWW12XefHOpUqb00t8CzK24CVHwy2M6KRhM7frN4mK2LKFJVhZ964dNOp8y
	 ejfqffF3dZQmrr9uiHfZU/27IPNAcUDXHAucDG5PJ4kkKlvFj62L5Y0uBaHxrQnj6g
	 egHdcB3WI5MnJ+w63GrFgg9gMXnvWdPTMpG0z1/6QuWLrVPy9NBWIusUk2bXM0PFKT
	 NH+yW1mwBKkTpZtUbLO4gGhqMOY9CYwnz4ORPR2JoTV/gEYYfxP3YdRZuLj0O6lGWa
	 pLEeM3eio9SrKgxvbqxVYH7BIpAID/Kt3qOMBNR+ZB85tgIJFfYwNvXDw8vI2mtw9r
	 XY4Ad7SNewjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9C2C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339911368.25504.7679383433194973267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a853067175cddc1ad3afa41a7097b17da6f43308e014f1505868ac0759bc131
Date: Tue, 07 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783399113
