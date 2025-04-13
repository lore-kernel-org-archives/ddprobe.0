Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5129D1AF0C9
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744556395; cv=none; b=qhlT+RLuyQNmMDxEEIKEc1QglNiQNZ6vI33mhWpRJ5eOyCYpb6zcyFdJJTfb7RxvobwohOmdPXviJSDgn0ulW9Z42ejUC8rdvu0ir7p3l2ebI/WfxEn1cYSYo95opRa36+ugc/+X4LntHch2XvSpgD28ywVAJUGhLGanAIfK0VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744556395; c=relaxed/simple;
	bh=OJLf+s6v3xpp8jqLn/p9qm0E25YYXUOscrhGQM1odLw=;
	h=To:Subject:From:Message-Id:Date; b=KL8amENiziRYWB8E8XEhHGh7uK05M6KkG+bfxE+1dsoMFfHDIP4vGTs/xwvdfn59z1xxX8Tc57AXCESh5iRGKmzWZtm7f6kb848bvSbUsBnhH1L44OkFLt4Xfk26OU+CfASVi0zB+HX07w0m400b4IfxvexTz+2JoXZBPBJ+QB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooFiszpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooFiszpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8494C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744556393;
	bh=OJLf+s6v3xpp8jqLn/p9qm0E25YYXUOscrhGQM1odLw=;
	h=To:Subject:From:Date:From;
	b=ooFiszpRk56Wz+l/NjNUe/wxaRTt9I0jRQe9VbpGuOiIxVvB0+nrI9lRiANbQAdRI
	 Vn95gmYneOP4GXfKlQv/YlWhYdoHa0qs5TemF1+jT3TQJEsCU/6tp1HKf5xQQ30D9I
	 y4e0EvpozvJnJEbekc7Zy6izEalsyiBIevNOCQkWluuJwnPYVmg7j7PI0QUSCe+3K4
	 gdT7ndggK6Rms5DOIxB29H/r0YbPVTABKGMGdUlYbimzqehdjTupekHyD+3QhvpTN+
	 IuKKAHNsIoP+HnhpS4CbSpi6QvZk1FXBUnm4mHlG/p+uSynxQZM8FWawn9h0vTgfx1
	 DzOrDph3SSPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA3C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455639358.15638.10524780020013923078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfec1bf31244330ab648ad94314e487110e37e72133bf9fa9abdbf06eae8e18b
Date: Sun, 13 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744556393
