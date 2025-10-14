Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E3E23B62B
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760426394; cv=none; b=BK6t93xYNmk859HbmD7PzAjPAqXZPGg3gFBCEJ3GsLNjdR0VrE22RZk7Z9n4lEVtErzDhZvDdzAF2MIjYYlWyyuGYq2H398n8WA7IhgB2CdUelBnnpDh2f01FD4vx6/XsUb2VYSrCPBOIP2+zC21xjSnL+A47yLE3Ck8LWLEE/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760426394; c=relaxed/simple;
	bh=vB+/gSxAgzAdPd0kEits9rFYj/yoEeQQeheFHNCSr3A=;
	h=To:Subject:From:Message-Id:Date; b=r0h1Nm32Y+y5vnZTEub/hKMGrbzFSa5PcsPBnJv1F+uQJ2GP3DzW4456gm6pJIz/ud3DtXd9ENtXprXotwKfkWM03Av9UuFE07holWzmVqzwoVMWgIcm7dxJ2+I9+7e6M2XCs0h+K3Zw7v1ery99rJR3zxeRHTWzujLulkv/8YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuYGWm/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuYGWm/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A910EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760426393;
	bh=vB+/gSxAgzAdPd0kEits9rFYj/yoEeQQeheFHNCSr3A=;
	h=To:Subject:From:Date:From;
	b=fuYGWm/h5ZM7xMUTcQFFnr2G1cRihZ63eWBQ4GGzEUUqubAYsqYeYTe5tgexEhnqQ
	 p9/jURjL72dPpSPKFwBIaO/DZtvOqxvU/kDmuE/G6n1N/ucOD/cq4MkTWHgXwCbt7B
	 aGZn9A7uknufqs6GH5dmijBQdiW7yc9zxEs1tbIPz9OT591fdlyFlmr9ZvFNhtrGWS
	 ClEg8lgGoXXuxiPqHsabpbIoA/3UTGr4hYJ4LI/ekqdrOnYdt2n+58yLDwoKh1GyJ3
	 g9qRj9Pb2T4rQWzNXVogzZvYf/WNVjmrvBixj+Wvi36GjdaOh5H/0kOmekGLsylWvQ
	 PlrHUVe2Ac0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9520ECCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042639358.8167.11696350854721727463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855ef81b21cca11bdb1a3d328f4da49607b0122ca7af42f0ac7f308baf995e4e
Date: Tue, 14 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760426393
