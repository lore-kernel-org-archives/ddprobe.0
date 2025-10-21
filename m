Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA6A33F3
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761020394; cv=none; b=gQqH+9QUTefCQNxQzq6wGzuJ0u7OZcpJl5gy39pzOwnOqCl04o7CBPojFl9v6/BgxJ1JrRd2E58qW3x0oL11lmc5g4iZKVonefbVOWg4ROrZ9lhhxbRDbYmjQcwKDw3F2rK+aI2Lzt4/cizhIvDUdroUViU9bvYOPRDoU2DFX5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761020394; c=relaxed/simple;
	bh=uhtJzQ3dIO+LrLra7LJlnQD3ZBOdwvZpwZ39cbpwKWs=;
	h=To:Subject:From:Message-Id:Date; b=HiDgYEO+9mbSysHwKut/xA/c4rgQ7ipp9+9kgTfO/GiUPbj93ZHMFb+ew0DBkAO5j34Ao2nl6zjB7JVMxr5CLbC5ioz1i4PKoRhEDX69cM7gTyhilP1euxIUO1ly2V0A7s0tTkbP4ROQy5HXf5HA7Oa/V50sBlZEoUyvvdzPzcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3TU/dHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3TU/dHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7038C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761020393;
	bh=uhtJzQ3dIO+LrLra7LJlnQD3ZBOdwvZpwZ39cbpwKWs=;
	h=To:Subject:From:Date:From;
	b=J3TU/dHaC7qcMZSNWoaFgno2Gw4hKRsTfsAY+NrhRrLJr0wfoqkY5h5rIl5ciBqvG
	 gjQCKSmRUfm3VSid/v5PjS3vu4bsuxqjaxXGQKJHC3NWdE4n9h5WhfCZ9JtKrOe7Wi
	 qGH1ZVukBvR0FnxHALHNWjcMs+FIc5bQhoGth+wEEzsJOWSkIlqGMggF+/u4R55Q+i
	 hIubEYAjY4vR1nAQSZPSDO2mVGH9fFiz07R+2d1yEsi2nO8DEaGYOFHB6rX4slOHG9
	 h1DhH5sAcf1fPDNGj0U0iyUsTQyaKxyiL4fRvagJzoHeeoVppnabmaDjw+OXoWCMR4
	 yydtvtq9sIAcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A9DCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102039362.25589.16373709531908693636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1871e452baef3d7f1b03aea012ced0cb7985ff23547f55b677c1ed665402b9d5
Date: Tue, 21 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761020393
