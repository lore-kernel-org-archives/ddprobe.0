Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119C129E11E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762518594; cv=none; b=umVzbm78Uz7ovlCTexR0lItDQQDwGKGYs0+hxQWP7b0GcXADpQxgT1g9LTikePd83ao3VoW1CUzn0o2oMayz5fv1A4aRW7lro0bWIgKHwjIZzNOvPvDo+GoBnaa6lIXAcHBFfOJ13NM2ADTcgSVMkCaIC/x5/XT2KdHBks+6WqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762518594; c=relaxed/simple;
	bh=RUWtdaekhhO9jHVXnOy1MJatWX8JvWQeqEI0H+Hx9Kc=;
	h=To:Subject:From:Message-Id:Date; b=I6YetCUVCvEY5p2uJRo8bgCQ5zJE9UzaaHxfodjYFkMUVlryVjTlbCu/qWYdVOpsxpHUB9tYxlsR35C8OhPwIDMH0JFXvyxhtfRBsHCIrWUwFruXNQXa2xUpXPKldq93AueHK/ckpQo1XMR4RYS23aAo86Ki4yCM+Hnn8s8OV0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k69SjeaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k69SjeaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B181C19422
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762518593;
	bh=RUWtdaekhhO9jHVXnOy1MJatWX8JvWQeqEI0H+Hx9Kc=;
	h=To:Subject:From:Date:From;
	b=k69SjeaXGTqmyeN34OHgQZCiOGDBcaH/7D4tcUKj69EG2vGOm2/ePM9EMOZXpfgec
	 QJC5O5rxMNirtkr8QW6U2e9yBLfadHnpEg3Kk1Ajwu/JtaBMXi/RxiECXbfuv99q7K
	 UA+DmyG50SH/kHZArDYPMEFUz8fJQfo4i0w1eMlY5VialjcXtF1VQmOZm/nxfHLZNZ
	 vInBQTVOT0fwVc4J1XGIgKWhc/A3j017JU1GvsgAvIXhpeEahATeF3Xl5ld4T0pJhs
	 8TXB9Nv5tdIt6PRZP8Qurzi9CsqUfUIOvQZc5Ywrshw9CN8Y78Md7piUauDmfCtdw/
	 HqXbS4qWEeKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065BCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251859358.7478.6515098440234916266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0d1a23534fe9533e3d34ca968def47a1bd348d1ca2de72e8f299a83142bf1f
Date: Fri, 07 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762518593
