Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FA719CD19
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773208494; cv=none; b=UFsvwvNmeiGj7TKiNujkftYsUIZgiK8aCTkSm/RVcBMCKaEvbRW/mLZbll/41t4gWyj5wucFK8OxoYz1+oaspFOxa6z8HN4a4Nv7/nG4cNVYr/r2mTVawABXlL/dnI3x+USy3i5XpHqcdMfCxwXWUhL/FsdlBEBZXD6MNnCotE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773208494; c=relaxed/simple;
	bh=G7rhVU4Oniv8al9UTZCqwY+VTkzQzsmk9J+vLFWLQRU=;
	h=To:Subject:From:Message-Id:Date; b=WYv+Ft18VWqV0lJxoCYg8s6D1+yGhnlQduSHR5NrGMJx4ORH8+m7YgVzMScPh0RkBVddtpLRyXCz+sSdbgYt2NvagLFM2XIaSfQXIttD6xKhmpZT6IHBGyfd/D9wp2fCKgA5BQGWM69WkHwFC/ptvExSnzVBggvi6t44aEHHmpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpyWljJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpyWljJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5084C19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773208493;
	bh=G7rhVU4Oniv8al9UTZCqwY+VTkzQzsmk9J+vLFWLQRU=;
	h=To:Subject:From:Date:From;
	b=DpyWljJQ0VwrFXNRuxEpfyIrgZ2nfiLaHDQ7z4AOau9SYnQ05zIx30A2Dmx4NMRsA
	 Uo3WWKJp4y5kNIFeu86dgUFaNGNC6h7o3sU87Z+zSJaNiP3TuokiqqSQY2zYmvNsj2
	 a0eIY57cYGZNx6CehFi5o1AD0zb8sNsu2rkNam1Nb2C/yWMX/zBfZTehTHbgb+MqTG
	 sHDca0vRaL60IsQY58Z9Fqyx2k82VRlzoyHcZ6LT/DgDPml8bIhdM3H3NxkyHtxARx
	 difvhDIMJpXnrMX9ziVLGNTmpPtNu93xUfpOxtDRt//t/3S4Dbz8hWzVSiLgSjqroS
	 gSE8WnwHQisAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4AFD88FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320849358.7363.796493401534349478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca71584bd4164ab9edb01a871bc8d515e19577107d50c97ebf7069d46117832
Date: Wed, 11 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773208493
