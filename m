Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E57042A82
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779607954; cv=none; b=EdazeBfpK/97t6DHLvDxlAhmKnCUdw1BFWG87pKK8ddlslsbMTJGqMQfcEBz0w6HejRryPBL7cdTR3OjA5aUlnIVW3LkEDBZZogXPJ9riIIMFKkiMpvn4Bi7CmHrChzEpj0DgtqPS3GjCI1HQTJ8HuI8ZB+db/whG0+uZZgnP2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779607954; c=relaxed/simple;
	bh=OiNRw1baiPxDx6vIeHL3q6aVizMVQTRihZsQUOADWX8=;
	h=To:Subject:From:Message-Id:Date; b=io2xhqAe/Ry9wHka170p+opaWYpPVgq+elg1F0NRssgTs1SFxl17j9vfmB2jSYN7tEzPmKuv0WKqk12QeVTdWsyR8c5mXZTC9z2FREpd1Ui7rwcnpUohfBcD0FChe0fs2RN7e4ng5FNZs2nIa53tIs3Wes1ki1xogt+cbbS5/sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpSkKLiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpSkKLiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB90C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779607953;
	bh=OiNRw1baiPxDx6vIeHL3q6aVizMVQTRihZsQUOADWX8=;
	h=To:Subject:From:Date:From;
	b=YpSkKLiKt4OgGbi3I0h8kO79nvjTntUDdx7Yr0kgw8H6sKc4W1KaseBCDB/P1kyCy
	 CAAKPT1L4/RamU/s1zNoXIjIYydCqThw8ZOPtIxtohFoQepiF6kaUJPg+NDJ4S8UPW
	 HaCTY4KxJFMsEAeUro8cQvl/T14HtN7P5vxJmbFQkwCWnUWsm0hGUBUHIYPavuu2Kq
	 OFbfXCH3pOJWRtFT6LHJUC3LPoIG50HSPEP1JFkkDFk3s2I8EGipCJZGauI0BEIVj/
	 Njqu++Qn1oN2f5kGN815ms8PJNa/s5J5jkKU81d0fP4jPJ4mUjEmzXb8do4E04KQ/P
	 3UmbqafuYwdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDCDCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960795368.23843.13814503305838446208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a49c255ffe21392f54dd4f98dbe7eced6f086c880d69975522a20b9c24f1e8
Date: Sun, 24 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779607953
