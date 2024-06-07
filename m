Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AF33C0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717720643; cv=none; b=FpuBbMLWXDgtIZFe0Kqc/mzKC1NpiL/a9/h4xkgaDP9iEFuIceF8ie0gkBkq840dbfojBERGRnnldb3G1itdCL6qYKr7V0KihkEyuHqtU/ZtP4cArU1kM+NklOOUPDVjpsc0VsjPNbl8h34Q5FNtvrUi/8rvTqmQ6BbNs/TJGV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717720643; c=relaxed/simple;
	bh=YHxGF9lwZ6QxBSM9P8cZB2xpaT0rAkNZ+00+Y+Xf5yA=;
	h=To:Subject:From:Message-Id:Date; b=RNHNx225hOu0oFBhmc+AadyMaSgIowOVYcWomjx6CIRQbOsZrXAIzGA6Vv0UfSKBa2FL1vu1xOWyXWqoMq4sQw75g9sRzPMtS01Xs+yUmdA3V3URdeo7nPd7n8Lw3vBdbYyIT+QjTURxNnmZ6gxUCwZd3gW5NtJp+DlVAnzDRcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv8eCEjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv8eCEjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF804C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717720642;
	bh=YHxGF9lwZ6QxBSM9P8cZB2xpaT0rAkNZ+00+Y+Xf5yA=;
	h=To:Subject:From:Date:From;
	b=Lv8eCEjK6jFvLOaUOq/XBUMWDM/LAq84trv51RMc0jqdlP+eZeNw8ZO3AEwQxWyF4
	 k4u6AJaWE5jKBc32gsuKoK++S+vOSSzrGNB7pmh0uIZJCkeWDDvaZ8n2AcRc3yqtU1
	 OCeavoj13X9s/My0KFzIBtuV4k5rJA0H7rQMpe+kIyZ0qYI8iKuc92OCFXy+YhS70c
	 3Iywg6FjDDGjEUbpbBC1UObCD7NCP+ZQC/vEG+id1OtyWG3c6uKZkhb0QWSyN4xbJE
	 nQ1aA8jKXwcCXmq3UJI9eun62tOvWborMgJRucQexXF3eNfKm96UvsBLx+UFyQFFmB
	 KaZq62c91FMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D99C27C52
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772064281.32299.16097328566822349952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9387962b9612d3d87035c872470a8462f266a573ec7592bbee81a84c4daaa85c
Date: Fri, 07 Jun 2024 00:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717720642
