Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8F634B669
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775537734; cv=none; b=nEAm/Fnopn9sWRAfnoEHoBxqXO5Z9GbdSiIM76GAatOMU4TyR04wgUlYB5FcJSNrIpxBh/VA5MpSJXgQ7HMP2MzZdolJs4POjBVwF5JBgzIMIn+UN1WA+GK1HLH+UB9FqizlK0KIULF4m4Tb57BXcKcvMKuZQ2iLUJncNyANOCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775537734; c=relaxed/simple;
	bh=mI1PPGJnXa0CQi0Bz544WPWLg5SJWC6CD0fmNTntpUQ=;
	h=To:Subject:From:Message-Id:Date; b=PhvadIB2c3C1x4ULAkEhTwOENHe+rHMU5X4qcbqqHJOCeC6kdw1K6EqHi/2rxSHCphdcal2MlpH/yGnSwausUFjr8Z1IdoggRWhbMPV9lV2dYhNAJzrCepYmYY5CeLNLSTnadcXTGWAV1T8I3G8eus6yNMg39blakd605wbiJSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUMtDWh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUMtDWh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95BAC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775537733;
	bh=mI1PPGJnXa0CQi0Bz544WPWLg5SJWC6CD0fmNTntpUQ=;
	h=To:Subject:From:Date:From;
	b=rUMtDWh8smvSkBeUKEekCXxSpKXUNGL8EpWywQSSIxiRkKyALs6e1TVIAsoaPGjz9
	 LTEN+rHaDSwjVduZNpHoU+Fx510jMiRwHucOygB9TYEmjv76xDSGRdv1JaFwxJI5do
	 3PetQ2wXy7qjR2bwxTgf17CGZ6rgkQ/dG0LoeOljLYqLqKvrwZbboEOQQ3HrS3pJ72
	 KD+DMNNxZpiPUdI5MCm+MHFbUkBuZYkMuGjuJGM0ZuVQECv2DBtCOq3fz/r7unEWc0
	 vTr3M4F35go7KiLWqEMAi07TwHr+hw72H5HhHTk8kO4tW7msZzlPbIduygMQx0HQ2a
	 4Ht5IQNseb/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA616FB5192
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553773368.5591.14486425350254865017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ef09f2fd648a8b58fe6391e6054be8b4c19be5b1e99dd763db91504b04318d
Date: Tue, 07 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775537733
