Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD374A3E
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734399954; cv=none; b=oi+TyR29pQ0IVO/E+c+KOcfHRHGK4ioGdUK6av7Nc43kK0Xv7DfQZoVtOacA2FsfVCZ1S9jwGs7NcixAWCIYzEmn2jDnDAG4s0Ey2QnP+6wfU0H/3T+I5BiKRTBhOYSmjB73buBzigVQv5ht5U8+6Qnh9y6ltOCqgUcOZbxhdjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734399954; c=relaxed/simple;
	bh=1dW2ZFsKjKpRhFO6Tj+lLqRbzn4HK00zGs40RyiMiuc=;
	h=To:Subject:From:Message-Id:Date; b=hs0fQc/g4e26TX0XmGFijwT0FXkamY2wKirQtMmo7uGUssLLUUNhKMvPmoPLEUAeBY7/rCqkgL9rV2OYKlxgyMTTCRemKKL7pmPOaqphYzKkqr7s4R6IKxJbgnf4ck4idlfSQR16812MAiw8I6WgRLXlZkUsYqW/y/rRjmCSmE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsNZdQi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsNZdQi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6D4C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734399953;
	bh=1dW2ZFsKjKpRhFO6Tj+lLqRbzn4HK00zGs40RyiMiuc=;
	h=To:Subject:From:Date:From;
	b=QsNZdQi78bLdRbHN3X0IypRkr50hUI5f5p0+FhYfIAhpT+565fSjBn3GpCEIx0572
	 n4Td9xFSrwSs+RjSg2/wc/K9w8J8OZPhL+XKJX5Ayv4XKNJUtgO8sTHWOPCWSd2iuF
	 EPEP5ldCS5WnSRLxMWm1MexdxPKF5FklmK/7PYNlBkJSElowsyC/7+WzKhCX0sxXDt
	 sVl6N04g5dRuGmni5mF+JhHBBoVHlbGz63BvgREc4MOcxg0b9LHXGCNiJiclnwLeFa
	 4Luk3J8wyEkSJDvYdrqgf3yTH8E982MqmazPndPxeC8Bv+kFafZ09xlFPLktIpqbTK
	 DPz4Yo5RKRsqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9683BE7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439995359.25387.9817637540000097912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ce6a6e03a3f9cf7d5c00dcee9a23be8e7b9a2d43289c70cc0ddcb3453c1bcb
Date: Tue, 17 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734399953
