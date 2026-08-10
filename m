Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF2E39A05C
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786344634; cv=none; b=Zs8g8LxYnzJ5BVlurVIBCbYSYoR24vIlWp6AY5CVo895jEUUoE6UAsp/EnhPlYT2z+7QU042k4t6U5HdpfaKxjK8qp+/IVRZH8iOi2u3wV42lEL+iwn3i16SKIsS6YUeeJdARfRM2TaYxcwP25beRYJDRzcRg4xkTQnDRyvHI/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786344634; c=relaxed/simple;
	bh=TarMAiuYDmd8e+2ArQdw6Q+vcdv5ZvUWr2LDXutuAuw=;
	h=To:Subject:From:Message-Id:Date; b=lAW2tsn6aLEK5AqdQQ8doCCHfhgEdCMpVEXXtFIAoWMY/RwZfGi7Xbv5PJx1YjdnFYlpXYtGPZcoyS0glRoOewmx1voN983tkfI5ZGqRSibrROPyrGPwnbR5jb2Bno6u0u6Ku120hi6Ujr1IFyp+4sXEa9YLjMqV8Wz0vVBOzM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOI4SwPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOI4SwPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B5DC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786344633;
	bh=TarMAiuYDmd8e+2ArQdw6Q+vcdv5ZvUWr2LDXutuAuw=;
	h=To:Subject:From:Date:From;
	b=XOI4SwPd8ZJx9BAceJosUTK9bv+krPosjNhHCGML0biz1JqIn2ki2jNPZD7EuC9UA
	 rW+OQn1hJUd+gmweCmHHjtETsLL7y/NLKZVt9uxPgLAuXdGbGGWcJ1gcVax92ZGGlB
	 /iIhD9ltF0GCfLZFL5YthBSav4D1929DzIIMLWSz1+1VCPwVUAnuNkqy2pObJHjmpi
	 xICgVtCeHrdvDz/rDjlsPUe4nmfidxhgFwvLjEGlYaRXKf72AimrAFYKYOdIuLfUZu
	 RcRJGJ2gMGK0cFqGf+vP3mWYAZeXNPu1UnkncM1bUCBlYJwlJPMrpUIhr15LD6BkQt
	 +dvaSOiCEnnGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF22DC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634463370.12096.9356816191066439038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128e50bbc7316837773fc54cb68a1e940ec9bfc3e96d23a28f68113d6a0c05d3
Date: Mon, 10 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786344633
