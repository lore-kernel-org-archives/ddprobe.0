Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293AF195
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725338154; cv=none; b=PKwkKFGDbVW5MepodRoy1c5bclEnkFJvI6FRI/AYGlZSI26PcfWe9rBztO2BypotL5zvC2fZCcZm1pCWSnJHDmZ1/8MDzWqmK6UsDKHTneN7ruwPCsYM9ZamZtOAgb9kVRXpjshO99rOVBWvJ3WQzKr4NDfvUBLrVed2qaMlIWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725338154; c=relaxed/simple;
	bh=TYYLfYDvtg0PzHrp9jPyyKIkuizz+SQTUj3rQD9Stac=;
	h=To:Subject:From:Message-Id:Date; b=nQHFvVWZhgrppVUX2UEakxvAZmPtFAgH9gQvn5dgz/gePvUQd/1U3UCDFKVpoAL48hByJVP1YPcDd2WlTetPeuA4eoXwxR4hgPQ6vx58zI1BXFGonIqNGZ+gAZKMisPODAZXRVMHbiXfE//erWeG47Kf1bj0EkFAJ1eRaX2e4Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQON0ERB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQON0ERB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7258C4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725338153;
	bh=TYYLfYDvtg0PzHrp9jPyyKIkuizz+SQTUj3rQD9Stac=;
	h=To:Subject:From:Date:From;
	b=dQON0ERBMhLjZua9xTTE3gTMoHHrhBqvujrAD3pLnIMUs0fbfcLnmq8vFypT2fBPz
	 P23yW4awRdzDzy3K1fGEy/8tXUJNYfZVT3BUb/FHqvLaqEeSGu3Bwe6+pRo9DhjE0Y
	 xHThAquhMgENyCcKvDKraos9MiRnvwLntP5Wz8oQiERHBDqHyDvrZOZSCNaj/PKzR3
	 i2Zb/3LUjMQBylUCUhozo7lj28pcb96YbZHO6HduooHSDAxmy8V2QKfk8oR8bAyUaE
	 DCezVZILiV1vd8LcruuH3ItUyH3GcDHzPyDNMDlECZUWcHJ4ksR1yZAoJJGt2jJUtG
	 zRMgxX2L2QKNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C8ACD342F
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172533815361.17060.12344584835739673404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7decb680cb3572ad3847419b536b6f3b12a26b46f74fdb198f7db60617734fa
Date: Tue, 03 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725338153
