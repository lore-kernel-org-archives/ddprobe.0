Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515C21946BB
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719497663; cv=none; b=NX2WB0QdIqJ3s+6cewAtCo5i9V1nFh0DUtsZvNNafHld/ka2PX7qLdx84oMq5pCOz3HGtflQC9F/R2y8oZ65A5Bcr9gwbghTVwhDrqUl8K8mXHC+fSVD6Aq2LZVj+DQ/zMxO0dA9Lm44ZCFPMp6y4ZkmGkTSBb0xlCVC98PAWAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719497663; c=relaxed/simple;
	bh=YGqs+j8cInE2O9W7QayS+WVUkjlHmwRAyDU9phkVrKU=;
	h=To:Subject:From:Message-Id:Date; b=i1jG2jbIS1ft4IuQUUchbcJU76tHGRTzbnt8WbBvCz0xFn7Zr93y5Za4od9wLur5LG4OpSpur++NIpnc2C4JBSBNdouZafgmkuLCYlM0YIAe2SD4kzbRsIrJ0rU9LS3ZfmBgBxigoTSm54oo0f0u8Pqa0Yq5bUGLE/v+B8xxEy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBBwOBo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBBwOBo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7640C32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719497662;
	bh=YGqs+j8cInE2O9W7QayS+WVUkjlHmwRAyDU9phkVrKU=;
	h=To:Subject:From:Date:From;
	b=oBBwOBo0T1+S2qY2tPBwKR6RLnbumS/Aj3NAUYmRhyUS9N2JDmiqXnRCOAzclL6Ft
	 QAcwDFfItQmTM/BBkGtT/Zyp80BZGZPEq7tB3ZdWZlnE9Drgnj/DVDiYtwFGmA6lfu
	 BMiQlXhpNBsPYQ317HM/xTDkEgvoPjcs60X6TEg0FWxsImWy4A+Bd6oco57oeBGf94
	 5gRqUDhGTLFKwJ3UckvOpKyiSybmLGU8hZI32LdGH6qWLax3QQCzc2jrHBDOg2JkpW
	 fqbxw5qCkTTvP2C0tm/Ot9/3l2HiR/zZI6jgUFSdSwJiWlzBVheSIOH1KGRKkPZM5F
	 vGMg/hgE64cHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D91C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949766276.6633.1784682379600832998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f326985a5051ab5b9884af16b5075507de4e6f04d255251ba980a7a57c4947e0
Date: Thu, 27 Jun 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719497662
