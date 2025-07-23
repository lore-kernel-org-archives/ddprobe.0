Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14872156CA
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753230594; cv=none; b=uy8bDySxnmqjzLEZX/auRzIFZoLiivEVfJiHI+azxZgBoSCSR3T3a5sGycaulrdtDbVW67o2CUZGFORqF/fYNzeU6NmMnv1kNSBArLmrzDgVEc7wYjxnTkueDF+NDXZ88gYp8zsDSHAWROSnPB+Y74f4EZD74Ev2S/okYF4KMXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753230594; c=relaxed/simple;
	bh=4/syQbjRoTbgmKX7gIYOXn2idnHxvvJPoQYROPxEBhA=;
	h=To:Subject:From:Message-Id:Date; b=YtKhCCeVT8OroHzMbjc7l531AmslsvIRhqiv3STxzx3YxvSfnWoy6UCedq4T4T8gjN64wPz2Ejo6LcL6EjPGqIkhFP7fS2379LNuKVAJEZchYAKavPZCoZJxtcQlbwdVCIId/vXuwUrb3PwzodxzPAZ8T46ZSVgM+z0fC2G8tx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmaHnwrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmaHnwrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E11CC4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753230593;
	bh=4/syQbjRoTbgmKX7gIYOXn2idnHxvvJPoQYROPxEBhA=;
	h=To:Subject:From:Date:From;
	b=EmaHnwrCBg+ZWSvfHxcUDy+WNuhjqPKldDz9t9Zvu4U/4GO6CsUe9GoXTpSVn8GXE
	 ZL5uWSKcQOmVv6OpixZ6kIMYhNiKUty+fQB+E/GfvoWXLEacMo6opt8RRMbxQqorxZ
	 qQRURBkSImde6eW43DCttMTstscslYzSWRsNWO9+pSFh4kwAYwQyZqo30JFKRCBal2
	 uEX+FvzMfLHp5gXSd0UUcIj6lKhCSi7IOruz0q5Sol+5ss2Ju0EYlBdAC8tpIln7u4
	 1IWusMrysHQAZ4QQTvIiTHI6SmGDYL8xvlsdHFEMYAPIrDIv2RPEBUtz6bNbZeiWjr
	 gxZqUAu7mevxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7EC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323059358.11416.5544803059903044649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0e7d93f83cb0a453f198fac4f4472287d7de347033cf307dce82a6e0d2fb47
Date: Wed, 23 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753230593
