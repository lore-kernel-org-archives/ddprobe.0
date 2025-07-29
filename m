Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40724130AC8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753779594; cv=none; b=rLlw4LO0RLtOoHgOzNUsk5lx+D/aZ+VEaPqcrwqnSL+1qMMO5roaMqwd/CtoNW5U0ElaxRAu8NvO/8K/O833hR+nUMM66KSQDroqx8SvphvrZEKzx747BvWdKiUlmGjN73aJCn4jZA9hLTnIFH6V9cuTgIxLGXX51erZjwtlPyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753779594; c=relaxed/simple;
	bh=bG7DjXhBg26JdpNadk/SKPxPXjBD1PPVe/CUo2uJHCI=;
	h=To:Subject:From:Message-Id:Date; b=l3LGPHeY/VLwwR3mS/i3W+U75zJAGvp9pZJARa5K5finK4taybFqXUhVc6iQDuiMpQ9bsSXf3HK2wVNneeXLSrSBDsfBoq6bF+55B0JOcxl89wUEziBH1TFRGZ0WnT5XqSEbQ6yH6V0Bebq/lwJErLUnb96emjBAK8Zf5HMBlnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATIJqDuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATIJqDuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E25C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753779593;
	bh=bG7DjXhBg26JdpNadk/SKPxPXjBD1PPVe/CUo2uJHCI=;
	h=To:Subject:From:Date:From;
	b=ATIJqDufoqBujSaJiQ1QV4ihM/yrMzd6qk1/N3bULw0hx5tI+ulubT4N8clQU+Lxq
	 8ADybwSREZQKwMnL9Futi5+dpSIJmWho5QlqooU4I4lKTWcQFvQ6B1cBMgFk0XrzRt
	 9GT6fQoe11W8oGjnvDdgEWhYCFS2fxhHLBt+EglW+qQJeRxk9TXPD/pwYmSjXIcX/Y
	 Qt3PAalW1QITCcdyc+HjGeIR/cHsyhR7MGz0QChph4gg6gsLcx7Ri6m2w7kS0px78p
	 sOmPGbRZ3J5ekRFIvO6MIQm582jSIxsqpyWCIR8OoLd02RoceUkd8VVgBgit2Bez4q
	 4EqfSMH1z/quQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B7C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377959358.28167.8115345204963304262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e6e49d3aa7774ffe0322b7960c24ed60de05eac153413526cf8c5195108865
Date: Tue, 29 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753779593
