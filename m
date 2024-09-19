Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35292144D1A
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726779954; cv=none; b=R/rAoP45fS2nfDMacHjO8pfaRYQhWEiOwn8vTQyvhOFA9Z0mGQnxWedwXZZ991Hve39Rb2xtPu70wyT9lBn9AK1NTvcLV0fUyiCS6Eix6x3D5VFjTz2Ix3yO8JxUJMvQoe6O4MVu5AXI5FRqlT9cmh7hvRnaZwb/0Rw5awqjfAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726779954; c=relaxed/simple;
	bh=6pK/ttX7KYlRLOTvl6vbNvoqlncUJ3L746CBj8SiSjc=;
	h=To:Subject:From:Message-Id:Date; b=ZmJIKefJVVNfHIDFFPG4H9xeyEalZy2lcaVuTN2Tt1XaNW336gef9GiUO9CMQUvr7kMlfCPg9KBkQbUnpO5mQPUfOjcJnxTculgKrIa4XcXe0J4be9vBhW+yu16msfmmI2pkzGAlmaAilVm2w99QJ7TalMlXd2Kxrsf5hJFnA6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnUiTKzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnUiTKzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED0C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726779953;
	bh=6pK/ttX7KYlRLOTvl6vbNvoqlncUJ3L746CBj8SiSjc=;
	h=To:Subject:From:Date:From;
	b=FnUiTKzzuuY8PoJkY/P/WhUlR99VsApWoxeiM141ndJr0eyARV3FaXovolGKV7oxD
	 M45gKQVIO0h+IPvSNIn2++aR4sMxxYq/dNAOinkaOHcX+hszQGiP0xG+vIG0jH5V1I
	 xur/ETVL+1XDYdyBr81chpKGMmzaPI6rk2tR+TBch2PtAdVpp8PcWqkGlcaIkPsLM4
	 T2uIgnm1072pxdng/uTMYMNiyLRay5bUBYgKWDRk+BWJVjvSuW9vgXiOpYzYR02Ty2
	 p1MLbOoDBoQ3PXBg4udJm6K+SdoeMDLHSdwtwd3VKOhqi/h01dUAwbzPhtlaIkZT9f
	 7ogaP82dAVV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99558CF3971
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677995361.7905.9641731911578312533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed6105d09aa61bcf12d3e2a7544ca4f5fa39ade9c683c9a8432b648070d2219
Date: Thu, 19 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726779953
