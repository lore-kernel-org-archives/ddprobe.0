Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2468728980E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770171234; cv=none; b=c4/avNWqVAg/5g69gjPRwMLSAsnc+fwf1oEkk54rJJnw2BY07h2q2Pxsa+QJamsImfcoMVz0eSvBupwAclU6JSf265JcmjOtnqRxoM6aK5W2cPlvcaLsRiWWmmjs/16+it+27PQpDNYmDYrJ3PDp6vRK1R/PrU4GH6EPI5lmvrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770171234; c=relaxed/simple;
	bh=9HRCTInDUR6+UkIU7/lNvDzVlexnfezGuVMwq9ExtWI=;
	h=To:Subject:From:Message-Id:Date; b=UJRRNBSxZY5IlrLtEvKa9bdjZBds4pm3t0nCU1vvQlBkg/dCN+//hxy2GwM/uelSKm9h2qDMty0bcCL48AdZcR+ruwramDZRKj7qTZxKcJfiKmTKUZk8+QWJHB54zkZUpxv+KUbDR9R10l9C0Skw386vQUFuqpkICCQ4MOOjjv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5Nh/iZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5Nh/iZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA41C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770171233;
	bh=9HRCTInDUR6+UkIU7/lNvDzVlexnfezGuVMwq9ExtWI=;
	h=To:Subject:From:Date:From;
	b=k5Nh/iZeH8wVR0PYcuaJ3j2qBOoqhHy7DeSVUDUw28NTkEN77Zmf81a31kDQCI7b7
	 gSJ80lJmt2Z8WyKALYn2aKaeCPxuEoimgXkf8EF+Woi8bPs1yrIKkwyZQGp6nlEHOY
	 1Qby94dmXcKYFt1NJc0Af0FaA2kaxfZsu46un+2cyvtFvaPFIrD2OdavKvL/28xnqk
	 HLmhxx7odK1vZoRWb1Ar1qIy4qq7kuSVzSiq8iYXtpZsjVMNxTwW/WJU6pdq0wiNI7
	 kKQ1L4/NmYl2j+lh5QeVhO8Lw7znZ1thb6x3A/EnVK98PliiApMYcWfRs0QSU92W9f
	 WiXvUMn2eNyKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98472E8B383
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017123361.26575.16641866457214178195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8857172ed1b7ce9c3d58a8de461256fa5f730a26acb361dd5a9359098ad4af68
Date: Wed, 04 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770171233
