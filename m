Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABFD26D4EA
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746524394; cv=none; b=rNOvAVunfx1UfM2P/BZwNcumNlhf4moLX/anP/0uPKXsqW/BikroN1PhGT4XwdQ9nXdSR7zqdKRh7io/RgjPZlR+tgEsghj88n7GLSF7F+OIx8gTaxGoAJYxzJ3EE3IvqOWm9OPZOfHD19FrdiTie4FEaga2wEmtYrF/hxn0Nv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746524394; c=relaxed/simple;
	bh=zG1lfYEafnEeQLX1fUL6OlnVOLDWXXtpJKuE5n1aICc=;
	h=To:Subject:From:Message-Id:Date; b=fAwxZpRYkWJ8jMwu6nsDFOjVmYFl2jRuH0MMRk3ZSC3qbPWZ9/girH5vka8hsWZT7wgkNKXM6n7XIGTeW6pgp8/iZhhKVuxPM5vt/TebBEaAsX5BzxEnknrfqzW9zQZGFCNHzMBCkU90bt4yHaPnHuRYl6uFTYI8Cc9hDnC4BnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVHBA5Qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVHBA5Qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C2C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746524393;
	bh=zG1lfYEafnEeQLX1fUL6OlnVOLDWXXtpJKuE5n1aICc=;
	h=To:Subject:From:Date:From;
	b=YVHBA5QqHOODJ5uYAPNlo3Wtftc6UtezHqQ8FC4PTuvPX7t7m0iQM68QBxDuJBSIP
	 5yVof7sV9KN4MC0sC4Pnt1CfMBNegsBvHWmUU6+YcmhakUk4XyoWW6cl0uThVK0C98
	 jF0XCm+tyCA9sUav3Wn3Sdy6XPYFRZBFIZZF876yzJyBHTUtjDdCTprtVV9c/rbe05
	 JrEXaOkIsmIP3gCvNU/Y9yw6CSR//31gESYYKuqBypB5bp/+hNMIiNDdhEyeUCTMVN
	 2xXeObUqZjabYz79U/WosUU9/fokT5WnnYuEIwn1GSI5Q/ae+GJfFfyfdVwTdrIavG
	 H2TToet1/4xOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F7C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652439357.27278.3739482558480782914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87dd1d3379c229abaf22db301a090bac3d0e223d2b2e1d72573f6e11b0ba87f
Date: Tue, 06 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746524393
