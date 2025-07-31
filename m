Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E92424DCF8
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753952994; cv=none; b=Ue8XPY+kmz517+oHuys/UcRpEDuxMhVqOWWD0M+OExZPlwn83sFek+3f1BL3d804ITpK4yzc/jJIF9i8nNXTVhZVfXuMnN5oQSxB59O4rj6gr6QWpsXk0NJS8Gt66HGttuVQJ8haeXziajw4PplbJacsPPbfjiU3j0Xk2f6vNDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753952994; c=relaxed/simple;
	bh=3GVGtvsKkKSeMD+XK8mazT8UTlK4N2vIAJ7fpIZd+1w=;
	h=To:Subject:From:Message-Id:Date; b=mAQ95RbwrftW6gz4jmBdxTt84gzCya072+gRGYYLmoHDBKXsyN5uTDINwF0z2MEOFeWKyZM2aq8tsz7DxaKQKZF7c7HeysNpFzbGvCVcIGLNUQDwbw34tc0NcIjhAF471/Dh0wjIfddD1B/Qa4IbTFHEmN72BP4SvXuRqBvPj14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejzPnx7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejzPnx7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6CDC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753952993;
	bh=3GVGtvsKkKSeMD+XK8mazT8UTlK4N2vIAJ7fpIZd+1w=;
	h=To:Subject:From:Date:From;
	b=ejzPnx7lM4Ww6lpAeTvC9omcFjwjv5J/2pF2eCqW8fb4pSVSGxbiE/udcfnVEChez
	 dabfN9xPkFg6iHcvlV9kgoXwO0wyIbF28wvMxyG0X9vL/2d7jSMP0jhseGDe+2dmSc
	 iOw4+zuGdC3KrKX/VfltBMH809BE1RLHfkUXjoNMpbgTpdnzx5y0X48sXBnVbTdiL9
	 1VQL/psZFsHlWmwmTQntZ3Tker77G0xpEF4zRAx4/tz9/GTqhKZEyCIsPqz8LSU+wJ
	 ZH5rv9GZ1lCFmovnI62he70nX1qBTPzXBx6UfSq2Ss9KcQdPZrenBVH/cvea+vMFf5
	 a/xFViYGa42vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D723C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395299357.4895.5516643065420406379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c45f4ffd0e5043fbce87779385633fef14b97af8d209aa793f3beb6c909625a
Date: Thu, 31 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753952993
