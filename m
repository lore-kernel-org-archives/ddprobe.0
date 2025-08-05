Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122E1175A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754372394; cv=none; b=Jz1G99HwQ3JDmLCIZYdMYx9TllVF6yzHpalnBZMC3Vd5A4RsX4u9ZUX/N7/1uK8gyeeX4t8GWcEN35f1+4nrrYSTNNT589gEXgHKFI1e8LxM5eYgTKHIn2XUgcs3aGz5HEebJHq5EvIHMlBGxKrvH7WIvLT9bCRS9OuckGnlVlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754372394; c=relaxed/simple;
	bh=TxIvi5NKWvPX9IKrAWYZMugwLUo0+tYsWYg+E8iNIHI=;
	h=To:Subject:From:Message-Id:Date; b=VbrIDT4iDNd4SBANwuywAMz1/P/VF1iv5kiM9oG541VXuWASNFcalW3t5deIuhYhjvFXtxhCMbcqrwI3Ww3k/e+xK4KrE/RTQNqZcyhh3BFY2mWdbdXaUOY9JrjrUCHjrok1vQ55SHw2vGEXTLiBRrpzpmrfi7JZhIcepcm5tiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgIttLss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgIttLss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A82C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754372393;
	bh=TxIvi5NKWvPX9IKrAWYZMugwLUo0+tYsWYg+E8iNIHI=;
	h=To:Subject:From:Date:From;
	b=JgIttLsszuyDSX0+0sxlaluKmMsVboANFdKJlqjzO4inA/TkmPFzQTr3AUgKjPRdl
	 3dGggfxUKOxZjCD/5yaHkfYF7cGxlfD2eiKi35by26rw0EjtuHHF3NMlFcWsRHp4xO
	 ardEJVlUY1eCLtDT3V9jrEzP1iHM/pZze7xhs8ZqLsOiWOC56jFweTh84sHQm6/MUS
	 YA3raPmw9BA0rntszZpTJ309O+IGEKtPnuUHGmZCqJq2DdM+wCe1JLfAY1NilSazIN
	 pnoMMTvbdl6LO4K5napAg9+h0ppjF6tJ9I9iyD2vBR35wwdl6YeVfZYrrRMZ9fJgPe
	 +zx8aWtOZ+W8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE92C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437239357.17467.12702891517765765244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10377c91d6e1591e472bbda6f76c32ea2ed2dbe0f62571722dbae4f60fedac6a
Date: Tue, 05 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754372393
