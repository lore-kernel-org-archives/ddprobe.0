Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3167D2DB7B5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767879834; cv=none; b=i5VC88Ydv7m30qRLFOXybjp/xqa8DNGfIkzQBRk00VjcbKmhxPGJfIyUAD/xTx0EemKFTBpBJfH2cO1nLdFGISeblipVHOCWDa2Yr263XQkZhxlQHe9DJo0X1tCJf4MPqIFXkzzOjVGN6CDqzVXJYUeL/kyrKzcozqdKtuWDOdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767879834; c=relaxed/simple;
	bh=hx51ZzxvMNpSozyuAKKmi6QE/QxwDq2C6p+P8QN7L4A=;
	h=To:Subject:From:Message-Id:Date; b=RVu9gjpy0a4r1ZA5jTr/HttIYrd78r3i3Nak8A37t6MFqO9qIrjXDBp/rpwSPS8suhI/d5zsR8yj6qUsblvQKr+PItrkgvJydykfYwyAUW0tKDSZmfLM4me48AStZAi6QwkJ3VnrAGcLv2zw9FvTVJdWpXvlazA8efebyLr6sU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5i/rKir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5i/rKir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA35C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767879833;
	bh=hx51ZzxvMNpSozyuAKKmi6QE/QxwDq2C6p+P8QN7L4A=;
	h=To:Subject:From:Date:From;
	b=V5i/rKirECHmfB/7/4XI6sKkBlU3Psq9MT9u129SKeMpwQLf+1fxwSJBNRutDb3sS
	 b+LhncMvPliAQKvc6Vh06WQyobEDcn1X/6jX2xuVJhWPg7JZM58+E/Hf4CA+BOSc92
	 GV6xs81zFIL7PQoExC341QEeDvJ1aLKOcrOdlGYfecFolLjGQkbK+FpfE6dY9kr2Qa
	 9YdxLSB1HPemggvs7jb1MlKq/qiI7iaRcrSkc0ZDSCYQhYMt+9JuEWrY6UhSoYXEig
	 3GDYmEbU5N9nKFYY81Q7GuTTD9A22v0go0rh6K10syhSnN3IMLgzEv9QRpctvkBwpK
	 LPNRqBWjqtVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEBD185F8
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787983358.8864.8675289287292235249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ea2062fbeeb3008ce81dff447f84c5870c0980ea75443b5c4241b36a2ccdfb
Date: Thu, 08 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767879833
