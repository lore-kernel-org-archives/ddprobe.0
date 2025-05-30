Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2355422B8AA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748609994; cv=none; b=NOgFGTC1gzS8AvuT9thhb6th+MlwqVwIEJ3R14Qt2CphIq+xQ6s1tohrF9tejCNDg0C1IaYjsQFNgZ8KqZvzBsedMxe8xMDBcKx/OdZ/sx3grvD5s2j9zN8J9tW8OL68vGPBmp/yIiuk3VMpHNy22uDO5wLRkSayQQTyPBnAw3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748609994; c=relaxed/simple;
	bh=vkpSk0Xo8AYyHai9qEcR/P8AwNZm38O0oK6E0QImryw=;
	h=To:Subject:From:Message-Id:Date; b=FveoW++2IE+yv/9TfeyTLiN6awjSgczeOxXijypDq7j8Du9lWFp9kWi6MVmCHTp5NXCJ33mOy8e7/wBqzkP9cwhF8O3hRtVDqCnPDMPdaK5qlpBckuddCU7tv24sgHXoBxbvIxvQ2thQ7DyZjmzpjjERJLVH7VBMIZA0AFl4I00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImUqMs3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImUqMs3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2965C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748609993;
	bh=vkpSk0Xo8AYyHai9qEcR/P8AwNZm38O0oK6E0QImryw=;
	h=To:Subject:From:Date:From;
	b=ImUqMs3pFcxPVWl/yH9BJOqKWNBDpD1p0sbRma95pfSwmlr9WXNtVphVFMFDwUrRO
	 Qd5+7hGN9Q+gOQzxlaZlD0bF+7NztC3p1ZsmPciUCDAmm4sOnmSb83mr5ZtMzycUjf
	 p/csFI2fmhnzaUby7RSXU+gnLknbF/4340OXLFDfw8BnkgpcIiSjpN0OK7JaD199ww
	 j7UUW9tDySw1r51DD2zAYmpU/Uzc6iid+4I94k+IZTjS2LpeUaoPIu1qwQ8OOExfr0
	 a+/ZCTPieIEgEJPZQPVSGErzhMZ605f7try+S9yui1QaJDza1c34q8QxQoMmyRfjCC
	 tNTPfMi4GV+Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D42C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860999357.32387.3514413227442713391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a467684d342b085a89a38106375974fb4effe03f1caeed730a427676a30234
Date: Fri, 30 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748609993
