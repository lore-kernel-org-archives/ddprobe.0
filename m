Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B0B17557
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736862954; cv=none; b=TMK+eWfVww0pXZo59oygEHi2Qr4bUl21y5k8ShcK9K5hwkv4pZz2PyxfJUwvle1YlMQWpAw2HYPBFw3bzlWz7D1s4ChQvi7kP9oXDASskoeF/1p8rPmSN+rZVsrB/iPc3WrMbTYmDM6+2hF/zu6mCFArC0Uz7De8B5a0ChZohr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736862954; c=relaxed/simple;
	bh=IPi6qH9js0dYno2OyR1G2/m6e8kdKOnvjji1wxZN4xI=;
	h=To:Subject:From:Message-Id:Date; b=juUwvp710IaLR6oAxDXH2Eehn2aMjCTR8NzEO3TPuO58G0HGuliZ5XowFp7i8tjv5labMb/sHdhkvLV7jfQlYvn0jm5fIcKzvy62mJYxzMT2LjfSfmL/99Wnf6yRMKCXRFv+EM7qzbYKJ8Bom8Euq1fI7qjwvvTY6MEUMog6GK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/SO5I4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/SO5I4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F9EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736862953;
	bh=IPi6qH9js0dYno2OyR1G2/m6e8kdKOnvjji1wxZN4xI=;
	h=To:Subject:From:Date:From;
	b=W/SO5I4qkvAlu9VJs6bYNli7apM/UODsinEXzK0//A5UXX5Bem9kRJcswdhChLaPs
	 hpUiiJT2NUaP52ETKQA6tlEukFbeA3q6sVUTKzCLB8Ejea2pROkZN2ZVwDJTZ4unA7
	 kFnspSdCRLj9pKz6XUyoldu1bdCilcIGJrLWSGF4Cggn+BeHttgB2qEP9S15HFnEZb
	 jKbkQTrs45vjXiYPpk5hk8cwZsGNbLnzIKYb0Ynchf3hJoDtVm55FXj9zDDxvyAT/7
	 OvKFWTHqJ2/U15suA+T0l/itThzQfhoqiXqE0JyZ1cLeblXNa/PcUwuFtvcaXbHRSL
	 dl2c2J6U8cMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942D1E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686295358.26594.16056515326269386948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24cdd5efaa49fb794057c104e07e7c1e4aacdf877dab9278f2dbcc247782a3d
Date: Tue, 14 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736862953
