Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED4534CDD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759115394; cv=none; b=BwamdfpMsQDnKbxbEq8UV4PBQe3Ysr3jsn2Co7+GV+9pl98cPNPBHtBQVIsbb1X/kzHlUsRiE39JlijGlEBt57UQHULXwrvcOj39+EamPql+TpYKT/XeFB//+O+l7vEph50daZgJP+D2uPOzmWXnvLkLiA/DGp9OC/ppjZgjYEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759115394; c=relaxed/simple;
	bh=2OmRQh1AkuVcwv3fbeaJastFdeKhEKnO6TJ/8bDFi3s=;
	h=To:Subject:From:Message-Id:Date; b=KDaB/1ZYgz9njjrEulbx5MrRGpTXl8Y20YGDWoXW0eY7OOvlClYrsNxm42JHJztbmhtpThXUa4VQ82u/ExJMAlujImLvqgga8rK203wggSAxOpezQCQlnoMzovuO9CnrAx/PhU1/LaRyfS2yIVHONjtKrOiK2FgRXk+wPM0bcZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwsoVeLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwsoVeLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3029C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759115393;
	bh=2OmRQh1AkuVcwv3fbeaJastFdeKhEKnO6TJ/8bDFi3s=;
	h=To:Subject:From:Date:From;
	b=fwsoVeLRMAHUdLGDz3MvSPJaweyr/zfiVHr+BwJlm7yxWZJk5VmDdAToWIB//HQ54
	 ceHtohbySZoMh4yq4GM304m3llqLx9zLGyEj19u9iQh275wpY/f8U2S+gscYVV6NZl
	 R9tBZFND3OYseVA05XoRJOVp224/F9MgI8I0vlW0sG+aUKNPpbNu2gMZIgHSVVek8H
	 DZRPN0aYElFg9PagQsXUp4XbH3otcm+QAR3DaRPLO9Y+t1tgiQiqYq6HDXHfdF2TgU
	 9oXbuX1yuqb+2Fo96hcPMsNIZOnqCIkDXdiNjaKT24dUOKaMmlwrIU+gkJVb0xTLeI
	 sVjj8xIGm58fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91228CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911539358.21325.13809286303453107257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465b1775b18450486c843eb54fbb64f223525a6761f11c06bad7bdfd818f7437
Date: Mon, 29 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759115393
