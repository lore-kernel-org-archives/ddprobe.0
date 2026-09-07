Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F35E448393
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788772234; cv=none; b=KklK+dMwYawOqVCo57akYthRhdOC9tZ1+vQZx6CK0A5SwgoyaR2d/roPH/BW9ooa8ToUGpdz3fP+NqPsyNMDRDW6/9UoHLCEOD6JIODmNkrHufzuxpdRipXahNmgSlg4E2dnLF/quvF0XMmIAlvW5W3EhkXq8qbBO0QGBo5LTsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788772234; c=relaxed/simple;
	bh=uN4cbE0xJmcnfjIrvDPUFT9DcdMwNxGXsChiC/2jl0c=;
	h=To:Subject:From:Message-Id:Date; b=d9ERKuaILPZfp8dvld5CzD9sNaN5qMxeG9KT9GqaNfWPyNTJ4caLf7JocyT9fGDMxWva7sh+XJLJzev81EyZtE4Ey01TRDvTH3bykwkKIBINj8Ei2UXSgikq9F5HPLNA+yiRkGoIqNo+sg/duB9ENv45EkjM/6uDFtR9v4/FVOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjN6jLVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjN6jLVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31EBC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788772233;
	bh=uN4cbE0xJmcnfjIrvDPUFT9DcdMwNxGXsChiC/2jl0c=;
	h=To:Subject:From:Date:From;
	b=HjN6jLVBuKtWwX4ZlJpZ6DfswrKzrsSvcPzDmHV3QZUrU6Q4Pmm1l9xrZAL1IM99x
	 Z8HFFox1ctMLFDUPA3Phmt3XY0mbK/vkI34KkyDjWSv8KtHzVD06qmX4yZF4zscqUI
	 KmRryLPtPNdCWRs2NaK/Nho5fyzJQnUNJUTCjvkFzKoNxX+FGKkQcokqCcdt1XYmvf
	 e16n6C+mIWmbmfnSy3I7zKGnp4Vv4KitlK/cspLYqAdfZN9MX+cL+uWwYJrathLauO
	 7ghcVCj0OS0AzaV3oCrLwnLoVSbum4iRj98cuMCmCBaDMdM9uNnTIgtSavjUKbbud1
	 UmU0s/rya2CeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB33C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877223370.22467.730380235432405222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c24dea18084fda6f3d31dd858d353c8d8dd817f3aa37da04fe963a9e511592a
Date: Mon, 07 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788772233
