Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2624A1AF0BC
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743245394; cv=none; b=kP8MQLgSD+fMpr+YB1rojbLy8R8EBzZbX04g0IWLKlkFcZe7wLASVZADVkhAq7HkEWevdyStcBd39e9V97nkkXbpBv+IuwoJTL+2yE4gg45UPniWn9ARjLmPVHuHEm4wxwUfqlvZFvuFiUSry14GVeaq7Nx5s89HpdHWocA/Jn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743245394; c=relaxed/simple;
	bh=mMNxs3LLukNI7t8ViimtDVI2IjWg4WiNQ3qQSrmT2s0=;
	h=To:Subject:From:Message-Id:Date; b=DTtDvaedOHxODSXe29nFpmDPfYzm8t5iNICJnM+bOaUPHRM7kn2eKxbeQf4Be5qXMphoSO/ivWAJTU/czYa0YRyZ1TRdH9V+meCwIXr6Nscddacd3u+XjrFJ9Vo9lSDBmaqhJ8+T/3XnVi0W5lwC+tC+Vo4DLoj7JeI+cFm/RS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQAPZdQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQAPZdQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743245393;
	bh=mMNxs3LLukNI7t8ViimtDVI2IjWg4WiNQ3qQSrmT2s0=;
	h=To:Subject:From:Date:From;
	b=BQAPZdQfj7LiAz9vEk3PsszYQrNv7w6QrhSArfkSsYmUWEofZp+bMr8y0q1MXFgeL
	 wazzlm9U1xbG4fNZOqpzi3/oL27ua7TokF4H6fKCoTv3C7FiA/S9Uxv0nrkAWEPWXU
	 7NfTSVvMUtyHXueVIzNNmamwirB0zajMP/TXE0Pgrq6HHFj99lblYLpfZbGOiv3KKG
	 xGmDSP+7YVcqefRGzFRbRwPLKYeGONyPTTIeF4mx3Etpzj8OCP5baadtuFbE9aEwgH
	 1ma//SeRORVpf39InTj82U2zyoRTMLosrfsS8UasM57IzmL57vC5BJY1MPZkrbPXzs
	 n7TWQM7BOMsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E2C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324539358.9276.12899959829554830916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf2c3e82a3af32433c8eed721a833e2930d78175a9dfd57e80a214554619d27
Date: Sat, 29 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743245393
