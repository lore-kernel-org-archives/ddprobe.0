Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDFA381BA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759525794; cv=none; b=uNcH2RPsRFcLWbmG4Cmn2DrR2w1hWml8JTRhldbye5cAIUYM9ejTvaDlLEMaSVjJhAEQj9a2zPLcXcMccXJJAJosyKHrWEpHgCofdWzU55ZmBiuMgDBF6I5DImhaBkgGHI7t3S/rosbs4SuWR/JRofFJK6qi6XPBMtwxv2dswT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759525794; c=relaxed/simple;
	bh=M1ie/DIGqwriCTje+UzPoIXevxz1lADF+bTaV8ijKSw=;
	h=To:Subject:From:Message-Id:Date; b=R9ThVNMAef/Jo7OG2aUd3FsLAWLr3HOpHwnyM16hPwnZwOB+7dpBnDue9vIOmHyE9vDkQzPK1IM7gjnKUDSWIJkyPzMpJpfV7sVvU6P2Nhiwk76mqhYdwbqWvA6X4FtYxVKdGLr0gQnNYte66wfyRf2VlaTxnq1eE6aO0bbsR8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FP2PDqYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FP2PDqYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70C5C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759525793;
	bh=M1ie/DIGqwriCTje+UzPoIXevxz1lADF+bTaV8ijKSw=;
	h=To:Subject:From:Date:From;
	b=FP2PDqYo1KgYDp/P2pEIKpPIsIfmfoSiFS721agYkjyn+GnhuffmL/whlGgsGvzmY
	 VAbzQ6Iv6iXHCgExWVesjqMIo8FskliqiKGi3UcAiBDJUxtUX2FHf8eyeJn+bJtdDr
	 FCLad9VNyr0tqzQ2aCrJ4zAUrmA75HrHvO1TWZVT0D6iKCRFyWYKi0s5Z1y06jdA/h
	 oStgup+qPtGWLjIWbjNn5idDcZHawqmw09brFCzKe/aG487N0ZKdgrdYMo7UnT/GwJ
	 /elXDlpzxK317uf4Q7ygxUCbw66OLlaGGz0XDte+q/rbGFGJ1upa6zBdbxmHRBMiBu
	 nzC8ZCzs5SzqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92572CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952579358.6615.12280290292266610871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725890f7ad6c33230ab711eccbbd9d46363193ac2f2830153dcd7266a866e723
Date: Fri, 03 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759525793
