Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1D1A23AC
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759757994; cv=none; b=Givx9ADnIRXebDdpS+Pa/RuzuAxdVSxKMyGvhuojx5QEvfPYFzmuttP4+9SAfIm5iGkvLJisxJEq8LuiyJbhzYdJJvQuyUMAHx71oi6pAaWr43zuZiaQAQMYzBcV27Wt2adYzaXd3XDJXQoc0HMi1bZrRJtDVd6urGcAYTCiGMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759757994; c=relaxed/simple;
	bh=YyG1cmUJww8w7qRA2qADzxG7yKP0hFOcWyp3j5ddZDk=;
	h=To:Subject:From:Message-Id:Date; b=dG8DHXjyNiMRDIoSyquPLeJiZ+h6mVVTWJt5YJaVTSG3K4kSqOurnH7eKRa0Liq2YqPxCiJP7umLRZDWbfhROo77hi5Zdo3SoLYS8OA99Lm0iyDKY0C54Oy02GMCujyu4OHJUSnUPHGbbjcIMON134JaKeTuRgummIK5EDMGy1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHCefXj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHCefXj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D902C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759757993;
	bh=YyG1cmUJww8w7qRA2qADzxG7yKP0hFOcWyp3j5ddZDk=;
	h=To:Subject:From:Date:From;
	b=nHCefXj1swu+jkO0CKhXRcUnT35DRW1E6ae66uBrOpaui5EYXkp4W/vqPAs/9OR9I
	 iULKFqvXn3P0P3iaKJ14C7O4529Jxg5GteHlcohh/F8FYgtbujSGCxaTF2H8ua8X5y
	 U95TqspddY2N7f+Lk8e+9+qYsK77wvH1dhCOjBgzPUnyj91Mfn8pkecgcEMfoDmAkw
	 5bhNzRpU6M3/WMfyOIgJ9E41zMmAVOZG+FEGe4ui5ahiw5/DoAEfbooBuw2rdfnjif
	 VDU1KBjg65TRmQ+rnxVf0neHgewC7j4qwd4FmKyU1n1ogcfQsjTl/zTu9y6NrB3tfU
	 wUWnwZK2h1zEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75ACAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975799357.28689.6284558701743333631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e97b466499ae21a3a9c641d97e529a2bc75e9ba46092b6ac371de4a2d4da459
Date: Mon, 06 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759757993
