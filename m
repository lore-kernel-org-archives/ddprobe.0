Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E367722301
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706294297; cv=none; b=nSG8EFkZIENZzCOe2JDtx9K/VYEqrL/DHw56rRctzlTzKM8C1al00l7mItqFucUHZMTZ4P/SLMdTFJwhHTUjpqLIzWVVVkU9LtSVlQHz6mQ0y4F+eMEh5CEesd7mcaSATXOcPmJ+gauwEGY8IKq0kilMPyFygBtKV8Ivi27VS0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706294297; c=relaxed/simple;
	bh=jZidtPj0APTuGUWM1AJQVcZoS6X4lVMHxCNgqOqNTu4=;
	h=To:Subject:From:Message-Id:Date; b=BidzmRy3Bp/mrYjMTKofX9zB8gq+xvSPfEqV/4v9ewg2iQYXQvuu/V0gRcMxv07bsAi6spNVYDEx+ZlwTmwYCMfYjmFBnJyPYZBkFA1E6pgxMJX5YZhc4Y8tjfXWd5CMxvIW6XCN+0Go8AWU50LkRNLq7BzCZAoOfBU2IWylXak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an4VtQ6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an4VtQ6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C23EC433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706294296;
	bh=jZidtPj0APTuGUWM1AJQVcZoS6X4lVMHxCNgqOqNTu4=;
	h=To:Subject:From:Date:From;
	b=an4VtQ6HLIYzB7EwqkmQau0Eui4C3hLjiq/23RezXj/4HSZG+J+yK3s4pTlSCtPP1
	 3W0KSfkIgpHE81qoBz270grmwEBAGKab0cnqg59bkshLr+a5MTlam7Lgw4eBo0MLGI
	 ym4Gu+6ZCcvEUFFS1kwlirXasU9aFaLRPJIoYH6PLUa9QWvBmwJULfYZHRY8Rl7p+y
	 5jg1DA9e0GKGV+nnHqRvAH3oYVceTUYF8R+eaAj3vwfgAOGy0HoY9wSqDA+eUrmHz/
	 PbAlwzPzhVw7ZLFpCkh/u8WPj48Od6qrwikw2VJoU+qb6PoMYuC6LAm6l3t49YHbC+
	 Nd90UFwWZWR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C26C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629429636.8734.9275476858956006387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8de879c4aff921c603d46871b434772419da5da1e3e6939c905595d8652937
Date: Fri, 26 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706294296
