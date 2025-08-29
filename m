Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DB9318144
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756474794; cv=none; b=EHttgxFCJm/m4xvrvaffCpxoTO4izSmvuFT+wNyeR8D6tmD64QusDpfsYLylyTOMmZjj+odbht+aAsJ/VCIBXrN3cDvBwmC28PbSlhbOgSQgHnBAIfhdmW1DQ/BuKk1CbjCr6VrN6W2CDzyHPz/9OtPDzq9WysDR9U5YWQFLgkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756474794; c=relaxed/simple;
	bh=zQKr/FxF4GSaFLmAE3QFnPo47DeXeRW1acCJ08Agh/A=;
	h=To:Subject:From:Message-Id:Date; b=qeRf2n5rO53LRb3lnhAhwAonxDNxao3zoWqG4agvctmbP0/VXtipQOuxCOobv7rfDuEvBWvXwjggO9wWIM1YpDS3Aw2Q6w9QSAA4swg8ymkx+zpURCZT6EB/GZ7EpCj4RpsrpeDRbWAhfmF0wr1ADdZWhAFarH6mFqGCl9MZXuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfbs7g6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfbs7g6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC6C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756474793;
	bh=zQKr/FxF4GSaFLmAE3QFnPo47DeXeRW1acCJ08Agh/A=;
	h=To:Subject:From:Date:From;
	b=bfbs7g6gDxVHrXDcyTscdUFR/FpOPwL4tvl0rxMyhDnnQ6M8DJK3orWUu3ZF4Au+k
	 UIYy+5F6sdOVN5H6LbVj54/rizxHqjDpIPofqXbnhr7Q6epxgS1nijLkaNmOivzOTz
	 m48Uy8FjI4HP5/mXHyFm4CvtBdkuZmQ8NEElkENfw/sTY0nEQgcWyJjem/l3fOkg7J
	 aV4oZWryR677ekldY+cf/T/qPGUNRmL0fACTmk8OW/5s58aQLZ2jWoUhaUYxQRtFo9
	 C2rWIb2zQC/Ugr2ztl/DR0GiG9SOdCJ9CICnkMwuUQayUPMHVwkdXIAG2m97yrlcYw
	 ym1MTtpLMqKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3ACA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647479358.15784.3474222215688408534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251ae8348ab295e733b33eda3e0395a7c8ab525a0754678be3ee28d0467d7c88
Date: Fri, 29 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756474793
