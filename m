Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD4B3939D2
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790229634; cv=none; b=EnaFJ6YI9/upH+5k9UAUOXgj8uhm5raJEt/2L0rSch+YhLL5F1kKSkqFLE42UMYSZrKfUc+T4RbKLuOMwA9TAkRtm6EPEKREn042NF+qIg4joNwkw45dCYIp2jgdlEtei275KT0frdGKI9u3FtJXtrYuO6wfW83wd1F6UmB9vec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790229634; c=relaxed/simple;
	bh=RVXbnfoRtX92/3eaOH/e//TuiDATUx+kYrRfsScGzUM=;
	h=To:Subject:From:Message-Id:Date; b=o9uymOeUAOtFDrdnXYQZS9/Ogp2k7tfTjym7zeOgCRy8G6tGZKYX1wf++jMfNpiAuvPPs1dY6oF6/BNPw+68yr8Yh864v50hbWpYrEavqM7aHcEs7NqRHpI6tNnwdnLxJsgU5H7SzkjAaNuDs4khcP+NPP6/4qEgCJ8kgVLy+hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLFcgwQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLFcgwQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0190C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790229633;
	bh=RVXbnfoRtX92/3eaOH/e//TuiDATUx+kYrRfsScGzUM=;
	h=To:Subject:From:Date:From;
	b=DLFcgwQdqQ8L8VoyjuOQKM6ZQBeTiALzlLLThXrJJ0+cOt/ulKva4c8zkVrlQiCrh
	 CnLW561MebbtRRCX65P6MCFA6F2TPGFQghog2bO/UldN9tL0CGJqGGMd0Nsb3vapKb
	 TBho0FSxBZb8TU9+b6Hbb+7O/v0Xd0HB+0xyFFZJmjcLWfCc7zkIFLs96a0zztH25C
	 SbtqpoJQoHkwrTJjFzu+oMPpCjUaL1F8QiWO5ps5u+LOwD9ds9PMtzMGnEOyoBVzCR
	 0rZn7aJza1lMhRgFgStOzkv+aXrIdcskf/PmVDeEe/WyHBwa8jrtLAF/s/1+pKmbSb
	 2Me6fO/MIKyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF9CC98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022963370.3296.16837938213980296488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b57d474264f01f6997f894955cd9ea1616edc11df0f3d08463c3c16c8e1a51
Date: Thu, 24 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790229633
