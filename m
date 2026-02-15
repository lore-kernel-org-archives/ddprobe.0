Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F4D15A86D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771139694; cv=none; b=lJJS5LowX3zLrXm5VbrF7tVjIEMLXJjBg18x0BYMtB76GiaxFUCB3b+6YfMu6LNiLWwHwXUQDhLJuRi8dqqS8g2U27gl/RCVUoL5Qgd7/nWV0Rr9m4eYgcgmZI19zopkb/+AsLlF0oH8o0BexCMl2YI4RX5dpRlt1PbdZjHs3Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771139694; c=relaxed/simple;
	bh=v6vNHQR4emB8n8BPrWuIIGEKvu33IpZejGZ7uGctLwA=;
	h=To:Subject:From:Message-Id:Date; b=abjdd8v+PGg3glu50B77+D0qBYx0GcftP5cy1wA3kS+U1MqvSkB+VzOucGuXhVKsPqBFWx+vjBFTZNluWC9FMAz1rx8Hgj0Hl2ybq+d8m0WEB3apL7KjVhSazgTfWLwuxGB0WycQ88LF6XQMRFrYVef0Z9Evgm9Mp2PSWt7NCRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbSJEXFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbSJEXFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771139693;
	bh=v6vNHQR4emB8n8BPrWuIIGEKvu33IpZejGZ7uGctLwA=;
	h=To:Subject:From:Date:From;
	b=QbSJEXFf3314X05utOnYJdlrkylKs5oMcFjx0EQZlNR4dLwO5xvDQwQXNZtLu0FdF
	 /G0dAd5ClFX9/FtSkckdDS+6RB8LWF+Z0hObGzqLQcKrq0ztQAKiJtwjrD2JNLjLZY
	 bIcySY0SAQbik3/rbVKV6G0jED3i9P4TTw0XwsyffKF/RWSwW8+BLz9dV4mIglgnbO
	 zd0ba77sS5uewOrq0m1h9hweHVSLAGvLhFxmLWpm+L1WFRpgDHWIiW9FrzRGnd7onW
	 fumoWqn3IN19TpCPPFiIKy4HGbk+oKzHiGCY1irYARBCXfXtmLmLMCp3W7z9MdnW1y
	 33oPazDjvYKqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2EEF586C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113969358.6187.11017162507454545224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc29b04311406c05e7e3aee9024b63afb0f3a8e8f5160603d5c05faf6d94143a
Date: Sun, 15 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771139693
