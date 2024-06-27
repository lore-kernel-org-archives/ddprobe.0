Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471A11991BB
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719502463; cv=none; b=EuCMzo6zPM4SnuVIz8rc3BhlFlL3FUSsvIEsQKgGVLVj7zUP8ntA0ZG2xhQNE7sQPUio20P8b4sZjAyKUX+HkGlHWeOxygKdv5kxnBLdIopDLCAJB/4A7WQujTxrsuSCLn6aHxnhdMUPWFR9wc4iY+jgGcg37Y1EmCbOqTpsnXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719502463; c=relaxed/simple;
	bh=3RkfprhgSZwwhicCyKaXqNfiL2a3mlpszJgkR0skfH0=;
	h=To:Subject:From:Message-Id:Date; b=RE3qki6tuPbPfMjt6Z8O5qVO7YjaExdBwqOLYu5sul0ukJ22iQ6oiAl8lKVYswxSG9+0bVKrLPlodFhlvfKYcMjPzCvLqAt61HYXO/2rsFDzpNwhfNW3eJ8yh/knOOXvs5Ye1BT5QmgLoMieuVBuRPELnbFPH4FNlPT0B2DhLjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkE7D1m+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkE7D1m+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FE2C32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719502462;
	bh=3RkfprhgSZwwhicCyKaXqNfiL2a3mlpszJgkR0skfH0=;
	h=To:Subject:From:Date:From;
	b=WkE7D1m+y9FffywEpt+ARItrMXzEDCxnkSiQSXqOFvXW3zPNPpEcqnSJdpXe2SJUH
	 EcbBw2+InCbxEBxnf4qegAmMFIJ8YGXy4+U7VWWL0fWlrctWFYplywFyS8AjYbeixJ
	 uVKfNtj2LhK5jfcxmFkVD0DIVwfg+h+RLjVmaZeeNuWQbblNLj2Zhk5TbBwe/dmY0g
	 4UwR+zYxHRNDZ+YAjlEnuVJVExIS74N7qbnwRBzGrVm8fMLm/sJfNc7rKzsqSjaOWJ
	 HNrmqfu/VGuE97UPUFrD//436paLT0DszPbohoM1ZXtGkGreanFcXoEKM+ObKXHXv+
	 X4uY9GQDn8rWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14C5C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950246278.27300.14738012264002889194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6082f9c5409a3da00a3537d7b1521b5b365be6ad9f2635cced3384516ed0e4af
Date: Thu, 27 Jun 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719502462
