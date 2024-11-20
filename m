Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341331BBBC5
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732142754; cv=none; b=TfStj1agaSlDW594S2A6WjRHFxLulaxTNPyJF6uesGK9XJSYALz20D5JQsQoX9KKyjUrXlym4NzcGFLMB75Yct7JGJ278imI9+EdhynWbbKTD1rKtAU0WHXHIAfLXnrHUApnJyvo5b42unjlmlOFEkSAd1gRx5w8WV/8pHuO7gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732142754; c=relaxed/simple;
	bh=vs7R8HvBMNv2mYxS2hNb6Wm2OCSSFJ3pM9ccEaMWeWg=;
	h=To:Subject:From:Message-Id:Date; b=Z6dLkiKpFX4Bqd08k6dx/GdYHuGxr9Cx/jPbCEMIKhmxl0DBt0NIZwf7xDDCKrlurgSWDkPRJfuHfKLOCuVrjulIB/Idl2YWBlJsKrG9VboJBF/q69telxY8dtkQ3Uy8M+YbY91TDE1/5MzRvDvixn7lpSvieJCzYeTj/OK2UIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GS3h83US; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS3h83US"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDBCC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732142753;
	bh=vs7R8HvBMNv2mYxS2hNb6Wm2OCSSFJ3pM9ccEaMWeWg=;
	h=To:Subject:From:Date:From;
	b=GS3h83USCSFlIuNwDhfLn9n5PHrp7piiSGI/5d528To+vq31D0Fqeb0kYrE0TSdAw
	 YXMl6aOFgdP3sCbmxDmENuRdqhQ2eKIatFJfScGktabbCg+ipiYXK+L2O12apZ+joa
	 mQAkxiU5IJCprz6JBStFDAHkTYY6b3C0J0OygOoNmUSMIUfZs/dhgbOd1iblIWUXOV
	 u7wRBOBl9sZajFw+IzpKioZWfio9LCZ5TqeSyH6p/0Zj8vHBMK4xkVdJ6LxEr8s5iA
	 /u7JZK3DLMHT5SF0jDnzByMrkT5E76DB3q0HaW2zmkruBkkOxoVZ3EKXJ7zdFBYgaO
	 v5/8wZKKMMglg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12ECD743EA
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214275363.15756.7086779244390489292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a4e268710d039371420b47402a840e7dced2b8c8db8b8fb56cb465d003a937
Date: Wed, 20 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732142753
