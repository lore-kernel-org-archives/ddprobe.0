Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B733B19D1
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775570134; cv=none; b=RIaXJj/J/R5J29mzT3wDO76ve3AHyg1c6l3QkYKPY6alr0QARjG7IWqHZ9nc1a9XBYCm+WBw1Sh9h0IukD8Mr4DN6+rjy23yNxkphLARSM3PX3fvk1zamE94QpwpEI2/O6kD3weQ5tR2+QpozbkgII4ACdqqCUcJHbh2bFjP+PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775570134; c=relaxed/simple;
	bh=NIB7kVEFtu50XX6gml9oY8UZLxz8OCuQKFuHVjbEeas=;
	h=To:Subject:From:Message-Id:Date; b=QnYydVh5FenlqKG6f3STM9rh4GTY3UtkmqDzjvyKAtc8SENHrxqAL1DwbRkWWqRfHUhQ/lXBOcwQI3jbm1IgoZLkDXPiNVyvR9A3HRyAwtcUbrFs0Ir6oWdPbPoXg3YCuqtHZWa/WEsZMmKtCqlo8mE0dINb5ZK43m07uLnoeNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWWK8hyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWWK8hyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4278C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775570133;
	bh=NIB7kVEFtu50XX6gml9oY8UZLxz8OCuQKFuHVjbEeas=;
	h=To:Subject:From:Date:From;
	b=DWWK8hyICgLmXs0pconIz5GUykLw++fwSX3nP9kKs1w5AfDYIiIuTDvSdsJ+feIt/
	 F2Z63Ygs+8rth0/dHN5BrXCEaDd90325lGqkQtgaOuAQjju3Pg5lhqeiEq5OBMhZYK
	 SrKK/biRvTuwPzH+7qFqyT7jo8/rY7rGn4AYl195VQF1vkfhEUWeO1N+vYnjSe+UZt
	 +zWmHDOeQUVUJYY7vi2+6o5SwgdnO/eK2dgwYVrBNSWo/vzCOYObOjLUruskAyk5WO
	 Q+f0iOKRkolXeRuISpxtK0WaFZoionPWxfZi1hO9eGdER6ElZPFGpiJabSiBWk4Y7x
	 W1NvUCrmFcUCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B290BFEEF49
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557013372.25610.2199420928382669743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a45c95c5eb86b38a90facc158d77f2d2ef5239267d201a5677428054f4e9a0
Date: Tue, 07 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775570133
