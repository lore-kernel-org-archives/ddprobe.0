Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E1B35CBCF
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762942794; cv=none; b=cOjaTlvLDAW692FLqqAHw+jDPYRTOmIHk1VD3a0N/U2ueHzgxzmR8RefZsAuKExg07TC7gfbByZX9HUzXCav326OAldZP2FzqOER8XfvzFsXQ+OTCLV+OrGA4vguy6s/IKDYpmkv1PwwhFazrT3QSd4uOXGKg0tbeZ72UhAvBv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762942794; c=relaxed/simple;
	bh=6vUBGkv8vP0EF3ZSCNuScsH6iR6CWUYp9+MGwwWeICs=;
	h=To:Subject:From:Message-Id:Date; b=oUcq36pWKAifdXn4mInTEtVRCbLuefXPpUe0xSWs6YfMHWislk9NXQwh073wWz2xswwaK5JPI6+vZt/KAIiKyTOkzqppUC8Q+2cuvxyazgrfXYMSbqwE29HRXtDdjZf9qLE7xUMQsBKly+ToEA8thUSmLOv5ycxa2kVNnK1zd2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xem/R/S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xem/R/S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B284C19424
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762942793;
	bh=6vUBGkv8vP0EF3ZSCNuScsH6iR6CWUYp9+MGwwWeICs=;
	h=To:Subject:From:Date:From;
	b=Xem/R/S/u6MaiK8xtWc3ZPlrHBe9jBbQ96o1p0/ia4IzcVx5ihIXuS+o9o5Pl76SZ
	 biQX+yKK73ZRjWcD6ZRMlgkPcn9pXXX9lr3C8Dtk71FqVpJS6i+4RkQi3VZUORZl6B
	 LFdQPHphwlpeaxrLxuQovvEEVdNgHEAi8UO3Mz43x1cqshC7MhMz2TcequeVP+iUkO
	 ptxx4xJnEKgkXRGFbQ+A73JagdZ/hvX1qvoQZI+e4/A4bNN8DziOioTpP+0Z6UVcSu
	 SUZN22VNf5Ud4hDQwI8A7nf4De0b9v627Jz6v+qoyYiqM32DBv0DNd8ws1ndeRUh9g
	 wWML0ooydOelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF88CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294279358.28262.10338635797299093041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4cdea3bca48245abc5d911285fd639e58ba9e77ca660666313a36182310b38
Date: Wed, 12 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762942793
