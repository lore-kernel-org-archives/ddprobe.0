Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440E01428F3
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732166754; cv=none; b=TixnaCjXTUWOvkYGBFSbdafMlTM46JbAEAhrUzzmVwkJQxOIrEu3qBPTHttS6fKPmQDGhfLKVjNJwSEWSde4Fc1Zp49GXEh9PPkR2bdXKv3Rj17cDZqep/BHisUUwthcKBFhDeicyH0jp8uZNUQYwJz/xW8yG2+LmTQGvXngAiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732166754; c=relaxed/simple;
	bh=hSvdVBYRkl8UlxcvJXOdI9yQcOsRnT0Iou6SioOqN9Y=;
	h=To:Subject:From:Message-Id:Date; b=Sbz7M8nF1Ds0sy4gkeVBiZ2hvfmvp1VxjTBFtQeyb9eymhS2I9igskQ/DxAYhiZedb3b7OrtXFPdgY8ROJl8A/d6v9X0LJm9w4w4CXy3blgvzjIIZzefvWst2BrbVzyvvGc6kdG73gYGbbGBKO03GokSML8TPUkFQGSNDQi9GE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+EZ6Zj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+EZ6Zj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC021C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732166753;
	bh=hSvdVBYRkl8UlxcvJXOdI9yQcOsRnT0Iou6SioOqN9Y=;
	h=To:Subject:From:Date:From;
	b=h+EZ6Zj6cyXi4pxJcA/ztSYom9WAzmdH1Ra0fkvuET/VvrXPfzYkXiKX7AePKntJK
	 loKeo5Rsdfe/OzdR+Ljs47b3w22Lm3UrCHmtHB1y1EY8U2H5ZdJvQC9nHk/tfviD1m
	 VD3dzIS+1bqvd11oev9MirLxR1UYBjhIaLBTYmcpf533uh8wB8qoUtpWJvYww5SUrf
	 KWJzzgv+nEO8PwkMWDOuuwRatWmcF7YyWbiFqesRggRpq8Y4wZTr00P5X9lW+/oYHz
	 PZ6J5tHUTDir1J3iM7FE493nDDMXguXCZN6ifP8FP6SuIqyn8N2PA8Uwck6qwg8f+a
	 tnQe5LWcUZeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B91D75BBB
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216675358.22142.362151177293975004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5067dc5c5be23d688aae41f9716f1bb3581e60cfac9a963bf2e038e00e5a7a
Date: Thu, 21 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732166753
