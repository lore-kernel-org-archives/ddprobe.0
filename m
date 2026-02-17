Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1944737416F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353894; cv=none; b=Rsui0PZiIRGbWVv7sYJ3CeuUrE+sDFUczvawSe2qLevYCJw4Lx7uJJ0kl0WCFNcEm7w1hrqYjY9NnVwjpmYg37xqWwuQ2Dv67Xb/LVbF7MkGfvhcjP6gHnFEGqVfy4FXuA79y4CXfco3rq4jXN8sBkvioMuMUlUHJbkSuS/sU6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353894; c=relaxed/simple;
	bh=QUbM8W80tZ8gQ7mkk7Rkqb2tOCrn/2AySZxPXSMkU9U=;
	h=To:Subject:From:Message-Id:Date; b=gurZ+BJwTvVWppG1EFEqZCkHNwCZqzAwA8oP16WLT/K/gYL5h9Ke2YK7AkaUDdrWAcxwEL2+bN42+AAeL9kliJiKQxsGDP6qSmZHzg0QjEHO+4UMQExUQKM1iIX1baLrOIUEELYOA4YdFikQbA3jQOBnaAMfSSev1V+ghhpDa0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMssCfts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMssCfts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC88AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771353893;
	bh=QUbM8W80tZ8gQ7mkk7Rkqb2tOCrn/2AySZxPXSMkU9U=;
	h=To:Subject:From:Date:From;
	b=qMssCftsgIrkgJkpslAYFFfv3+yjW4c7+V3AiTaNj6chcyV4mBnQmFElENgtZtAsE
	 42KXMOO2XHoY0L0mRzpHMBp4v1c2IY6HYiXXnSKpxRVzOoTSIiSlosHrY7GMJVQl4z
	 am8lnw1sTPcmUBgd+UPgy36Lj3k+xI4EdPC/7icqNZMu9ja9KWrNwp3PE/g2NV8JzN
	 sbNgj/6HbdABkG9xKyFZZxmRH4dwte9nOv8Ec4pHexauFQgSWZhJQZ+AKf5fRgVOmh
	 V+1iW2BkT+NknfZoIjJIqNsoiUllidj0ttI5aiMsUE8eY0Wm2o32j7ClEHnTgIoGYX
	 3wtIqSUm8DfXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9829EE9A036
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135389361.14593.10103831730599584272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa40c82c6f8700e09ad7ad1c259962f2e5ac557a6bb50a9cf8893cfb9da812c
Date: Tue, 17 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771353893
