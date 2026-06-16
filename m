Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C7D3BB11B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781611594; cv=none; b=OqC06oL8eUVCnBm+bM8vNRqhgi81BPi9gnxZ7qcPmoO9WuCeYeTbUVoyjxlpX05YKbQHS6hyIPrU2JRDaflnA4pAOdtntz3vHV5WzpgmEUCvw77BEHgvQSdUiJtJJvqEFaTlSwVWjwh61eBSwcSq32TOPDybwfj2wa92X/PzXNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781611594; c=relaxed/simple;
	bh=i2NGLxSVLD3z0uYgqu14Y9If2JrZ6GcVQwVuk1m5m0M=;
	h=To:Subject:From:Message-Id:Date; b=A+P9Qdw9FrMyieT6AjjjJpEqUlz2D6ZnKjAlT2YNIqEp1EAsc3uo/ZtVHDxTZcwRUuZyDiD6XX9oac7gb5h3OiJq1rZc73CbRXZGN8BKJWQdahpkMKNpmj3Y/WYaBfdXUkioQ1tP3YFf+xvkk9BFbTj5K4C2Qh7UA6OpXuIz+xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9EexiHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9EexiHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F27C5C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781611594;
	bh=i2NGLxSVLD3z0uYgqu14Y9If2JrZ6GcVQwVuk1m5m0M=;
	h=To:Subject:From:Date:From;
	b=Q9EexiHOwuEl267E5pjeJ0wtl8evSNxX5AUWQzwi+8sXMj6bI0+tOWh2AEf9Ljo80
	 Gc/ybuyJXKpQamAPzSgJaDnM4C9Cs9W/VHPZzgS77NCThILOdoJ/050xermZK8Tf0h
	 6InwhameRwmTgXL/8zWGBlJZesVm9LwShqgHqc8ZNAXE3CFZk5nQKB6fBczaGlM+ei
	 78nFFkc8pgJhCxpAsfY1pSi2jVAzGRcaGPmK9ttN3GJoYtX8C20jTx8HdkqbJN9cwe
	 5wMqOa+B8Tt2H+FinXsh/+FPVoVjw6XGqYFNt+FMijX5H9nCj3oOOy2t6zZw/J/NdQ
	 kZZHjkaYIsJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB119CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161159372.18951.15996637985461658514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c1f6b0d5b35970017cf30e4b6d48b15270adb020025139f926e2d4ac555068
Date: Tue, 16 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781611593
