Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E10824A1
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172954; cv=none; b=ckU2FC9W8NHBDgKacPCI4Tyj3I704aGHy4GvL5b2ZWX6GbWdUTkgNe2zkiVgFMKdesohRzOTKg0X+Qf32Ifi99n+CXvfrDUH5R3OlETP6UzSzZaZIimETNnGQ4IVCj9/9C0CfLa1cePI6Iq1dkO7T5PhPm/mHrw4yQtzgnZig9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172954; c=relaxed/simple;
	bh=HNuyA3REF5nTUwvjVy9f2ItET+uchKpuJyFVlEJFmrs=;
	h=To:Subject:From:Message-Id:Date; b=pn8lqwwwhlsQjFonesXo+nzaH5euAWkdPrvzAyuYO/DpbxzDk9BbLC9opdFktkEiJt6qABcpXsq4u3L3z206e0xCaPUSkuBOisw7U5IRWegO8M6EkmFDFv/n9j/fVqXczsPWdejvXZBV5HeenR+bEYH/Z0e7ehAx8cFnqi3CYss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsI/stkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsI/stkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6537C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727172953;
	bh=HNuyA3REF5nTUwvjVy9f2ItET+uchKpuJyFVlEJFmrs=;
	h=To:Subject:From:Date:From;
	b=OsI/stkv+HfiuZ8SDaH37p5wdk3rXGZtIORAte72LODBh7WA9RZZ7obhYs9HbjSSu
	 zFJ0MsG6Qo2Qn6WY14LWOJY29ehIYwJkF8aUEmOJVmP/h7J0fLVo+xAnOQZNOCyViu
	 awOt/t6TWjss8uIxUEZ48XTtOtAj0MPzmvsgRNh2ZgDzKBSTN4h8S2jp1A9J9O3ljk
	 arSEsVtEBzLJwKlwnzNF8Si2tKiZZFGh+fAOIvuwFWtejYbBRo4o8BDAq7LNHunqHY
	 OjBxSTVkezIY2zaDV3yNbvGM/n/BK80BkQ/syv0zZNVifq/a7qjthNT7wwd/2HeBiU
	 rgypdRbwecZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2ACF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717295360.1825.13278384267927523775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4d48206dac7184b644893738a8220cdce154f47fd9a00a112acaf874154b80
Date: Tue, 24 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727172953
