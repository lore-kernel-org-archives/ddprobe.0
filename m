Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5088C1925AE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736142354; cv=none; b=PzIMyPVXRZ7Ykp1/OMGZWDME3Nbm94pBNt1yzBeomGjeWBnTDhjZOivJXe6eh31GBxmRuxxQZ+B8+ffwXNhs9Ww4dQSubgxmLVrXQrE+HS2U4oTCySsmt+guaepieEOoQRVjIrK3R+4FDYHhD9eT8XOpcv3ErgU1S90oWnFxv/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736142354; c=relaxed/simple;
	bh=8RfGPvm6UjTZjSaght2HwSNeRVkde/D1ffGs6N+1JlQ=;
	h=To:Subject:From:Message-Id:Date; b=lUFJhjqAfcNiNUgLig4PKmxYuMV9J/pKrFrnqVx+yDjdv0mAYt9Cnh4a6PVYW7TlLmKODuA5bJpxu8vuj1E1yFcyv4tCoCD9VWRWEpUQQtpA8NEkwQfgGqKOi0K+XFsizcm24HUHEQeOrTNMUu+FNseQkTaF/dNXEs5eETsbh7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDsD9AKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDsD9AKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4DB4C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736142353;
	bh=8RfGPvm6UjTZjSaght2HwSNeRVkde/D1ffGs6N+1JlQ=;
	h=To:Subject:From:Date:From;
	b=PDsD9AKTqW+j5DkGbMmXc8s8Pw3t5ox8R3HX8wYuR71krHQukzK8DKhE0hKfykAoK
	 ErI2n5+x9tgJXcYRWAbjD+9zJjwu5fyfmzHxXlU7OKZwIqMMZ0djwR0swPHCTBGuPW
	 wJlLIzJR00ZP32/vRLAAOgclFL58vI7+8IQHAefMT1kVJjeQwbM/Y67Vz8BXT0rEkg
	 ptZnVCzOkJms3rKmUiWIjb20DPIOQumFmPaBMDonMaiAeP/45bpb7nLHDdpwi/08+0
	 B4FZJixKRQMq9tvQ0PaeXL/7tawUJJTkTpLOk/uyaXKkrM3mefxAiw9LBvwb2R03Zd
	 /nb6Y3qStuABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67E4E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614235376.2380.3112386145777165818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b819a142e52b2acd6da0481f5f46ed8bdbd23f195eafb9f400569c93d2a0db44
Date: Mon, 06 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736142353
