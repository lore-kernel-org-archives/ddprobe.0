Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA1013C816
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742623194; cv=none; b=Vc0ByGXfi/FLGgCJV76Fb8ThV2w/mP3+O6wG3pwePPX1yUbHfXACS4JodGYxkzcyxwP1wWtZiXxXMCUVh7j0wuH9Eh9WToX85gl7kG4VMhN65PDMisNQQON1n1jilxnlf9eB/2ikLBkcIr+y1m8gC8CkseqTmT522lAUgqO3zmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742623194; c=relaxed/simple;
	bh=qQvvRzTvienVi18kuDghmpvJpmYLY0hHAbKyozqAI+4=;
	h=To:Subject:From:Message-Id:Date; b=Zbf20ojPWHbYxIJ+venfJn7PqfKEeqXpCYI2G1uxA5aYB08Kf6KF72y6QOEvaA+CEMUn7Q4l2fxlKqhcUYrnXzECYuGfyvaL1ZJbn8gya7z4ytS8B35uwnbvEZpQbfFAjCIwKCNupbiFv0DxRH1Jg6VXfC+lKXbge4yXs1snRxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAH4mWD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAH4mWD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E02C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742623193;
	bh=qQvvRzTvienVi18kuDghmpvJpmYLY0hHAbKyozqAI+4=;
	h=To:Subject:From:Date:From;
	b=gAH4mWD6YkspOK5XGYJGgFQT314hZMlEe2izSm0W1SnpbnvCnIs8ifrgB81XAIqhV
	 Xdrq3Uq5f1X8qGi8GE/gRBNxkgdP61TgIIasAEMzUF28rYSAHkvKOCAr2jP2Igiwbl
	 N1stIhw6AXu5GQhQ/kaSIOJgXr2yNVScNIoPRxNVBM58SnJl9g4LnhzyOoG1tbloFg
	 TYXik+r/4ZolypEKIJ6aDms/IQ8wE8bn3W7CV0TQWWFuAtZ2KvdHRDKhXPSKoHNck5
	 q1gOwreM0PVLl0QYuCOo44VQPjlx4hS3bPvNI7AmzLczecPJp7RaaTqpPzhfvsZLrZ
	 QpN+u7BGFCSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC6EC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262319364.6919.17251302691387553102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98bd3295e6eae26cfabd66448d25e905f840f4e1140f3129eb86e75846195bb
Date: Sat, 22 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742623193
