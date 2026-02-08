Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C7581732
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770515034; cv=none; b=g6fvNq/KnnDLeK6dCxSDf1JRwRFyQWMdc1S7IMCIRCJQva4poZ7pbgQKe4ARxg3332Ka6nEJt+2BmZTz0iozzrL4OMjjMI41KxQNOFYEhrFEWCje5HdOlisGl76ThggwHnMZQHcIrVbWGCbt7AD6TAjWQ/51LBFs2fs1oS9Bu2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770515034; c=relaxed/simple;
	bh=cJETWcM03/2OtcVefDoi8Mv1pIGS7IWDGz0UA2SImCs=;
	h=To:Subject:From:Message-Id:Date; b=gpPo6DlGdN+EXy4SVtym0/vuRTugsOXo+YI7Ft6WOoVwINVDJ9GFCYMdzy0JzUqr1pDefBPWxxYegUXHhUvp8rKuC/BMsqMG2HvECFTYaLcLSchRWxVADx7kMjzjBaxrul/oBfAtzFj+cLtFYSMd+9JPk+CAD9+Xn4Y1cm2lCvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xx5arrIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xx5arrIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACC9C116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770515033;
	bh=cJETWcM03/2OtcVefDoi8Mv1pIGS7IWDGz0UA2SImCs=;
	h=To:Subject:From:Date:From;
	b=Xx5arrIeBqJI+Z+MxPZtw+xrRJiMvw1sPJzUXFa43X8jPffWmlhLhbOSsTQG6GnsA
	 mijkWMK6T3l9lZ48kJQfxSlYOBUyB9HKXQ/ILwjlE75Zz7RMHm6Rt+9GgE77WRsrNe
	 bVWFsIrdVZSu1Nxah0hTZ3tsnd8d6Mw23JXzGY9aw8XK9WgBnujwNgOJYSWD2vV3NA
	 HufmpY+lbK3Wp/QIrmcEumbfekd6lx8VQgKKZMMj0f5j0l/G7N2EMieiLdq9HaIjfa
	 MjQ/WgQblskb/hfEd/0agMzWTKcfVGv7dKPa/O+QP01B6D+iuM0wSGKn9qRuK9n5Rk
	 Vuf3av5i5eoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C30EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051503358.20296.15394795112393272687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371bbebb1434bd4f169644de46f50daaef1d9ee632e4d70c845bb382eb69c000
Date: Sun, 08 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770515033
