Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4F7185E4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768566234; cv=none; b=W0RHUw+YCpCLbvxFek0doFHbJE23myfkid7ERtyj1pbu6Ov51HXY+OIy8w5Z8RiVEhOyCqO9Jy5pcfVKVd49rog9mF2xjAMcdIvZ63TCUgzLOfdK+nWaMNr6SVjkR8sQ/1YhJMAeL10iehmkMYSeF3hs7sowQawxr9C+/+Emltk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768566234; c=relaxed/simple;
	bh=fTE9LGZ0gFJvcuAArXz5hMDx2irrjQEIGkeksb/u+Eo=;
	h=To:Subject:From:Message-Id:Date; b=eAjXjq823NU+XgDrJr9wUKnZHzhVqvPwkbYqVcB+OfY9mYzQ5nWy00BfVPx/+dyiwSADw3gfX9XCIDn8oJDUGOwhF4EWs4CqQDxIe/PI2JKn5DBi4Br/swWyB0NIbtteNelyV3PwBSAJNhYKMlDzxUUluzG3zNpahJarYkhrhis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+7N+77r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+7N+77r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD5CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768566233;
	bh=fTE9LGZ0gFJvcuAArXz5hMDx2irrjQEIGkeksb/u+Eo=;
	h=To:Subject:From:Date:From;
	b=I+7N+77rJBh6JhgH1DzWr7tE7z0DBXJo5Z3ITiU4l7NojOmZkf2PLZItht+jHdaiC
	 y6xfL9FhhyBwKZNNT4Pdtcx13XgVaQiWfjNUUI5DNS3r5niehvkeSAiD2bPp/268el
	 arXecLf5/Dhg1w+g5FLYi52LyrUggEYAxh2LjChEeHIqr7IeMRdna7LzXjO7yyjaT0
	 /6N03twLPlyEpl1S0pDxDPzcYahx9LNIqpYxeqV/9xiwFiKNcSYRL/HqUpeVaOsdvl
	 XYgSUGNG6zZtpwZvfrMu9HZNtt7fSUKcphwDM++uszmSFJBLl1NHUtF32phyTlH5Zo
	 TETvuIU+twHtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7BD48994
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856623358.24538.10317605144505994853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e980dbc2f12aed62e9fd63a4eb2ede0172a1645fddba9392790671cb4807b2ca
Date: Fri, 16 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768566233
