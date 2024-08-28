Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57213D899
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724822754; cv=none; b=b62wx8uhPXFZp9+rarEVeezwsWof1JlJBDmU5GB7e24lFYyzc0xwEHwHUWaRczu8ChqoFiouom4D1IMmlUz5aKqGer8srnHe3acXqQjXaha8hD0d1b6f70NTmiix1yz3nUcyhln2hDpDIqz0inybCLNu/+oL85EVV1zG4h0XFbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724822754; c=relaxed/simple;
	bh=hDrFfzN6Q6TRwgIKPrlESw+Q9D1bj1ff3Up9VpexQ2Y=;
	h=To:Subject:From:Message-Id:Date; b=CRFT6dApZq9GId8k0zP9xQIE3ih0CqNbXow/9thrrpMBKk3Wg0OoeOZcgd6Nf54YtAvVB8Y1Rag3cl49t92UmWfNVevAlPb4DH754Xqndza8JCARkCpo5crPjpqMUo18uQBcsbpSkwtLJUgeAf1YMSreZuf2mzQwE3L6y0lNBdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYM8RT2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYM8RT2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FA5C32786
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724822753;
	bh=hDrFfzN6Q6TRwgIKPrlESw+Q9D1bj1ff3Up9VpexQ2Y=;
	h=To:Subject:From:Date:From;
	b=cYM8RT2Fbb7yjaAEhgSdz7pXXV/Ve2ttl6fdc3iQWuog10UWmHBysWNTr+eR9+gQU
	 VUiXHx4VG5HAVb//O06l+ayGDDWJErqumjUT4D8tZhZhWWOMtOBdM9JyMw/olPDxbr
	 LnZW7BhPCJ/7L7QvnPO1uMOEfh3BxVQbtqtjb45DtRhfVQon/ewEhhI8aYuoc48nch
	 WtQFjCdodXS23bvK8U0fQpRhFkBi+Wb4REYYZ90fyNNTsZAFQ98aNgEzifR3uiYNGm
	 VgA9lG25S+/LNcIJJTiREYzMJzL4S7icGWz5kGglsJeC1gOkXtBp+RZ7Jw4g9gRFs9
	 j1ndcg1p6knvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB91C5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482275362.4371.2961645709584991875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0b2c4b7e3d733c1febf370c23e7af26c9a588ee188146a919636c2a3db59c4
Date: Wed, 28 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724822753
