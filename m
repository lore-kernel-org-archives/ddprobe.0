Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41431397E81
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790649034; cv=none; b=lYsnsbAEsmU1gUaau1/VgkuUI6xYvr5gtXBLSOIGe897EaTshJd5ALfv4gBS+gTjes/2V3d/zYmFHrHmPZGesSl6zPrFKa9QlPR+YEy/NPD1P/O0poD2VmSfSP3LNUm25qRce2ODHh4zMGF44g8YiQw1q+anepGjmJfPWFziDNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790649034; c=relaxed/simple;
	bh=5GhAQhJ/DtwFs9hAR4vZpvQKTC3jsrzHxOO/jBdqJAw=;
	h=To:Subject:From:Message-Id:Date; b=ZbRrVrAXrHFJ5CQk5bqCX9/hz4WM9hFQxbCE8Ou2GuYhu/MgUky9NeTd3UyTQmwXFVMvyfdSiq4MGYGHjEWS0esrJ1yxFECCq2RfkDT1jLu3d2oy9ywBGqAFdB3ENj6/ZpVLsL+aJ8mWLZBMshGrRZ8IJowbF83GRsuI+IAoPLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0YD7VKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0YD7VKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF6EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790649033;
	bh=5GhAQhJ/DtwFs9hAR4vZpvQKTC3jsrzHxOO/jBdqJAw=;
	h=To:Subject:From:Date:From;
	b=t0YD7VKnZxNuthj922qCWqxsRc9/E1NGnnqw0UUuUxao7SCOaMiUv3dzWHZ/RgUne
	 enNS3AR3vgBzMyyVLQzYheVjIpmYK4ofZ23vUOdK1JycIjgq8hFsFEAhlaIqGF4Ogh
	 4g+Z9Ua/GI8zVJIEz3/YrJUy8WjTiX1aRPuJ/um/ZVSbiK6krCxGFenpzUyr+CMdvP
	 DkJ4LLyGrrjnJhYNiexQyStptWUGuAebsvQaNEHLbxNcMhC3LsJ0CJX42baipsA2X6
	 uDKYEKeX4FIJrp5sB+5Ka3v8RUVgb5VDv8zQ5hSuubhBOGp3XDlr+TnuljsdzR2Op2
	 7RNGoCUp3HR4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3FBCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064903368.1324.15504064245843866910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772d599a722e6e19a0697bdec40d48a2c2a0c0b00358df07f2b27a879fbb589f
Date: Tue, 29 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790649033
