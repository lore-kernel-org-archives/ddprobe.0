Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0601D3E0C4F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779795154; cv=none; b=ay8dUiuLsoX4X/A17FQcIQysflbsBeYZWA/GrpJEFiWJhQFOl8zkOUxo/vO9rdkE5SoblTk0Swmjpbi1g04wmQ7ZflLBQQ8daPlJsD+c7/3w+6GnSaHgCjmrlT5oN6SMvpt4dCtjqJhXw8hKm8wAqIYVmLgUnqvaKQpjLju3Kj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779795154; c=relaxed/simple;
	bh=zThpnQs1MjDDJGLjaA8/EzpGMwhQ7QRr6OKdTTZojHs=;
	h=To:Subject:From:Message-Id:Date; b=EQK/SWR4RlwR3pf+oRZkMK8RuhEwvRVESSSMfW5Ci1M//7IBmeoQE8NBGoHuND3oEcGSJP6J8ZKriTf3CERcn5N9TebRtgxd0PA6mNd8hqygxup4I8H6z3KFZ48MP9vYlk23UXOiDnumiFjkU/z7erLWAgk7uUO5PRDeJzdQhmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+v3CPDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+v3CPDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB1DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779795153;
	bh=zThpnQs1MjDDJGLjaA8/EzpGMwhQ7QRr6OKdTTZojHs=;
	h=To:Subject:From:Date:From;
	b=i+v3CPDlIC5QPZPxVCaoHeJew7pMN3ggIgNXe0oKB8nDY4CBwwGMo0PfYLOD/qQQK
	 S0/vI4WsmYE3nxrfWhSg4vS58WKJrDsV9zOsQQbuTlFRbMUOJqKTfDA0La29zAq7Ap
	 PPYLwmKU4AJOL8z3zb5vddaFvWV3TV7XWZUlH9vPrYif0lqfFwahjiWVyNNCFceMD/
	 WC9Y87OqLqMEmNIoIHJi0HCZb+VNfRkr0iI6LqvZf9hAlAuWlI4hWRfm4m1aZoo9hl
	 eWvKBpDUrNzjZvxA50NzGaq3Lv+NCx0vA5rJnaR7Dxa7PQC9D7YJzKPCkh6wxQudo9
	 j0qUxDn3Avq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B109FCD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979515369.27998.14567602109099992422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f9dd90b6f06190e43d38d5ae040c56fc4c7e8a9f96e867e25dd8cace2d4d91
Date: Tue, 26 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779795153
