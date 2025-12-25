Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABE4202F71
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766681634; cv=none; b=uTNzBnNdpDCWjkolSqbhBc2XsQyWGuXvx5qF/QyLi7qcxsj4A+jIOo2HxLcAtWnL3CPWbaDTjqxeUnjNAZMDzNrz7y3MLvrFj9oquV+/HePC2ejSBegRja/EW+kgY5k5/t8ORx+P4Q9vAhfwyE/WBkOmCE9nsgusPuFGx3AHTvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766681634; c=relaxed/simple;
	bh=St36h36Op1VnAiFZ6yC9W5oCbMve63I6yg7Sbr1/t+A=;
	h=To:Subject:From:Message-Id:Date; b=qH1UeD903XRnAh8u/f0w/OqwHxvuO4XcvSrK04O9GrHLOLG1zNkK6jXhYt7emZBhQjgf+hnJnVxF9t/87kahSEjJSpJiC8l0JZ/50babExQwSJZkPoJoy+c5kASreXZIv0vQv9fqCPouyw6Naj2xSdRA4WbRoNGbWdKe4tFEAl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQjtDNmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQjtDNmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3F7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766681633;
	bh=St36h36Op1VnAiFZ6yC9W5oCbMve63I6yg7Sbr1/t+A=;
	h=To:Subject:From:Date:From;
	b=dQjtDNmyM2QKd8cdZ18ZfW123PHmLFrBSoDFv++kpJzKDasL2lQCYYPJSrnsr1TLP
	 bxc3tWTJNQxC3NfL6lvw/pnsd6lFWRZYlImk4FQKfcmxk1YKqbPJKhTuvEsZjwzO53
	 PhjposaHXMdo0jvKB0HsW/g99M3vp9QjgXH2N+iGGn9hX3UZKovIeFoLuIgK7zgawa
	 LFe4DZSGap+PLEWE7ww1ecZv+P2aD5jNK5IVXUzvePVEHgycNxUzuNZDA9bFewpt48
	 KwA9RFVnqEo5685eUIzr2KApT4l+QHWWjIw9TGw3F11XYRYWF/PuGTTQT22jqMj2Dk
	 3C4FDqF8ze2bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99875E7AD66
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668163360.20447.3398739040341696294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d503a5ed0c7141888f6c9418243f3ec9ea965afb9f1a34ea68a4c6b1d72a9b0
Date: Thu, 25 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766681633
