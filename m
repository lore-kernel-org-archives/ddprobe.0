Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066523A27B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720482983; cv=none; b=g9lgib48Cp8M4BDpIH+Ps8ItFA4WF2HS0DbulEZkUFr5De7SU9I1AIiFh9pFtYz09nZhU7BcYIyuSku1B3rgDeKjV3g5rZdk3bMLnQJnJFv2KrhqXUAAFhly3v96JGHcEOdUs34p3a2U2uVo9VzmVwRCMwtdFuWYpNj40BYaioc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720482983; c=relaxed/simple;
	bh=YmfWJAQQv7KKQF3jHOn1jUyx5D4+QgKk+AM9pPyMBxg=;
	h=To:Subject:From:Message-Id:Date; b=YfRILK4B/nKlI+OUaqAE/6myXqeTE8vLv/WAfIwSK7e4IeS9kmwT8M7FOTtytMfhWRxexK994MIlsh9cMMoEboX5xrpUknjuDi16fTIyvGzdprBGQbAhvh29VQGDq3vBWM2h19NoikhIHsR5M4ud6nNZePiiNfjAxxWussKr5nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XisAL9I5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XisAL9I5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D176AC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720482982;
	bh=YmfWJAQQv7KKQF3jHOn1jUyx5D4+QgKk+AM9pPyMBxg=;
	h=To:Subject:From:Date:From;
	b=XisAL9I5SvVTAJM3yA5vhYIobJ4xxlO5McOhvDXF87H9GSb68jV6eEfH9fwtZjtq1
	 m2deEoXvQeq8p+MkbbpLLcw+fE/cbXNC5My/yvkiwPUBZm7SHM9gj3PwGDRdT6IhX4
	 Ra8F0Q3LdiWlO798zmhOEVBdE47tISVktw0jxFCqKP760R8OavZc+iiuwILuacrCvw
	 M1b8NyUyu3AcyyYFtgyUVvueBM6zshlEJHfzWK2ZiinbXRoUyVBhNNHo+4OuOx+rgS
	 13ZqWtJryyakIt6oMwNmAYHcjhzGTP+K8NwaZAc+y2zXUbU1Y4WR8/yOHolENk6zpJ
	 S+8esp1aopG5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C540FC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048298277.13773.4154004777888409630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc188a7b3fa22594d7ae586674c098332567b357e4f05b383d2c780999718d8
Date: Mon, 08 Jul 2024 23:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720482982
