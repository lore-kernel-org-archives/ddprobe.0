Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048A2459F1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752013194; cv=none; b=sthA9x6bl1icYNYy2kz/viqOZhYb3lQ0nSq/ZniGXB9qi9sv6LrURD46kIRzGEVc2nc9PQdUO8N1R6Fi0WiQiEaa2ja40R0xxN0RuPcvd5ZmIqcUAWHezE2FQJ9vzgVb7wME4b60dQ5z0LnKII0tIezXFZ7BuHoK+qHpBPGzx7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752013194; c=relaxed/simple;
	bh=A+EU2AoJk+WXc+HrDfjdI88+vrcKgfx2Ag+kJ2Xnhh8=;
	h=To:Subject:From:Message-Id:Date; b=E8AcAYhxhnHDvMm1NrIqo8M0E1AC4k9CCuEiUknTa34lpbyqZiVawV8z/yb4aeCg3ZfsWR6j2Bvc3FSz2y6fxcTfLKnGe2LxAIVT5pCP7Xsy+JOp+bVDUE3F3KVSbZDjKYMoDByRZRuIniJoplYHHh3G5ZVwKPDShlN+fod7rdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sW/1XHIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sW/1XHIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3CEC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752013193;
	bh=A+EU2AoJk+WXc+HrDfjdI88+vrcKgfx2Ag+kJ2Xnhh8=;
	h=To:Subject:From:Date:From;
	b=sW/1XHIoc1zp3HUUxdUZLxkzeQrAbg9T53lI0gIhe3M8VVF8d8fi5u5SE2ZGkwYB+
	 /bjNbaIz0nQkHkfYMwnFydB2kikP5OgvifApP955+4H8yVuI4tUtwdydI5eU5i0OiE
	 5qdB5OU06QIg6AYimwvw9WAcwO7xAgBK9cTDdAU2XtwL1vAqe9M02sYdqTTOg3MqHE
	 zkqUPS99V1doVcdYlOJpD9Yoq+CAwlBRLhIbIYLqbVFwQ/IXEiiwv2+aNt30SW4vq2
	 x36iJE3HEj5xy7o+/4QrSuDcOdMpAW3xLeg+UVE4Cbp7zPOWjZEfJjuMBJvailJEEX
	 a1y47ytFP+iNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B672C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201319362.13017.10142618711255022427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f822ea435ba27e5f746d57f046d2e0a0b0e507b0e1ce9557ba91d5b2c1cd1c8
Date: Tue, 08 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752013193
