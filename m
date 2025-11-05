Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEFD314A83
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762352994; cv=none; b=DDR0/uk0Z0Qp8U0LmQtdK1GREQKFPKHFaxGmMfTMg6T7xuI5occXQCWXItWdhPUOPTiqf+Zcwzbz/bsO3RM4CQJ8XD0ySNcgu/i1seug5Ao0F4nEd9U0tLvgKBYoIviIJCJqF44sS51Z34m1O3qwLq6XatUF8od+uNX9hGcw0Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762352994; c=relaxed/simple;
	bh=ERU5nSCQtZtgQt8NRqpxLf4LUGRgBlCxtE8IyxKSnAw=;
	h=To:Subject:From:Message-Id:Date; b=PyWHjwwPDIEVEZ8b+M1ElLqC5RkyC5d+LYOsQEwEU4o9Sy4N/cij7WOpeTR+DxJueD0qkp0JV/AIkoeHM9JpIqw+LI9jXP6ds6sdJdrZRVsR4e86fl90GwMq88JlG7lndHhEDb3sJduZP+W3+w+EBkqXsj/Id/0LKg73V7BpEDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPwQzxcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPwQzxcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F2EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762352993;
	bh=ERU5nSCQtZtgQt8NRqpxLf4LUGRgBlCxtE8IyxKSnAw=;
	h=To:Subject:From:Date:From;
	b=tPwQzxcvoYRLsAaQrzm0ZXJjvviI1P6uJwgavbu5tpRlh0NpHmT+k2H2MG8d/T3bD
	 02hzAKNUckl/y68w2n/4xrjroZbtuJUS7jIn3iiyY4oWQGI/azbyvmb8UBRXYuoADA
	 FpcBjNZZ3cUTFKMton1gB/b3dFVeFTCj+nM9Q/28eTC87BWSWe2qsBGBH8591KYRhN
	 meArXVv7ml9P3hfeDlre1qxzh0x9nafKF4NkCXmzuTTtmpQ1ni7fFAiekMCGN2+Q6M
	 ng0XTw3SAx5muXxpcVjQ3zEXL74+pEednnkHMChUul1lLhCeDaVS+eUI52crv0jhep
	 5MtCf+rC0rWnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95422CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235299358.2499.1346253643688757389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f612a210989ac09325658e94fe5a5b04eda526b97c6b4d4cd05a0c846f399660
Date: Wed, 05 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762352993
