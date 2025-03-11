Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD8417991
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741652935; cv=none; b=tfOXZun/jg7Py7DRPVXuy+MXcEfzdcVIAZOtQ0rNjp+/CRv6z+6WnqJBqVQYTDYsMZZs7plUPMFzXROzPu9Tw4dyyGnhSHUapkejHu8anIynAw5i0M0Bqtiz4YLwcWp6U2g/QhvooBQbiT8ZlSJv7uy/Rge6ppMppvwYOhBVDmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741652935; c=relaxed/simple;
	bh=eMNKtta2t3K/hMyPXW7/w4CqTMtYA4zStY6ViLL1RoY=;
	h=To:Subject:From:Message-Id:Date; b=dpTm0OFkAjEiupmJHnxumOfhQ9t9Y6mt2vhX31CQXj5NSQMBGgdiU2B/u6uUj5rXQoiuSmgRr85kMdCZK5J4CCPbkhOPeBIwdrOE0rGU+pyVisr5+TrLLZ2qfqXkO8HJfmTdicPc/xQ7IdYXC92H6RBtnFcF4r34krFxKYeTh8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/iWQ0cP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/iWQ0cP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF264C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741652933;
	bh=eMNKtta2t3K/hMyPXW7/w4CqTMtYA4zStY6ViLL1RoY=;
	h=To:Subject:From:Date:From;
	b=q/iWQ0cP0bc0IFwN3OR95M7NZWV1sxyWTeXRhiydPCqjRpecqsmOzJ35tc6YU+lWo
	 b0gmvtTBxm7hf9zIVdc+LBe64Fwb23gJAIK3BmYWtXbIvVCZFHf/IshZCbFWc0bSBc
	 hyC7KJISEcVhLKSpJLLli/T4qJvb0q4VeHRGY27R+Y7FsqDO+eeWEhoYvFXMRTIYZh
	 jF0AynKTVpq12/ZUNrqxtpZx3yzzaPz0THPzRVJbBMmrs03sYH2wDwR9w/BwkduM/x
	 gP2tRvSTI4bp7ZX9EuaRwihoc+TXIivO5UG5UqHnQaRz623DSkSMdBYUlekWLoznzb
	 CeQPJoGLKO6LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB7C282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165293358.25048.1504146861656621752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafc38a75fd5202b05afb463fbfa3e7e0ee1a294451a632149025da631ca1776
Date: Tue, 11 Mar 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741652933
