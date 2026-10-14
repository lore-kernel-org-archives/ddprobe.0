Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681F64EBAC8
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791972034; cv=none; b=R83CrPhyedytiIiVsVKven5Ylhcnn3ySwAa8mLJggmGyLrTJTdbkbOtf9vJETOeVmB6N5f8QAJxZM14yjzwApvgNKE7FQywjIe+zqwT3WLrpZ5hLwKTSUjewQ08UXoAVjl0JXU+fFtCoiFqflKKXy0O/1w5sLDkP5uT14dBqPV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791972034; c=relaxed/simple;
	bh=HYaZ1Sv3DjaaOgHrwW/kv+jdua22pj+OiD3fPRzoVtw=;
	h=To:Subject:From:Message-Id:Date; b=G7M+UgBgzLrbFONYgwxwgfuE3CieD8GsV5l1uq1WSuhPS8fy9Ro92U13e0P8dxUuhjZVFuloRX/s6vt8VpYS2DfxvYYaXBSOtEICk9k+FpKJhAZCusHp74UwjmhlKOAgeHgH5dXSDYcPD5jkNf4+boyrosyYx+7JnUb36kRgvjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX7BYrf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX7BYrf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AB3C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791972033;
	bh=HYaZ1Sv3DjaaOgHrwW/kv+jdua22pj+OiD3fPRzoVtw=;
	h=To:Subject:From:Date:From;
	b=QX7BYrf6AnOsjXYX5IPT1V1R856V6bfJORyg1GB6JRPqHWNdJakNtTJcr6oIOUj92
	 g3XLq3Ji6gY76jCR3hejU5kSBoaiA/wuO7tQVpxbY50wgZCaoSpY0CY9LPYZCw9y8g
	 c2nClqPf01tNJtOd6gS/xYupsj7rWG/qqDbPLffxDOBQdOcW0jusIVZj7tbX0mxICj
	 713cyeTbllvY/qnFT8Xp2wl4tbJxQqs0Ma6YQloMiCU8+JjvQWevQeOq1iW49gVaD7
	 2HfYbApYTKK3Z82vq+WswSN/qMdhBRlS7/oCS/jfckDOSSn9zvDCFTZUakcyX3FN4Y
	 /ONLuTJqpQN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB58CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197203369.27761.7919800423670434594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c09db7d78d76f45a0ff3b99af6c77e50bc919f2e68a48efead87cec3a7d2c6
Date: Wed, 14 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791972033
