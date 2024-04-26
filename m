Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5463B78B50
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714103543; cv=none; b=YxZyNXTph3ymsGUF/QcmID+CXAzNv8XFA6VsTNzkFvQdi/itHiH8MX3FoI5/wd1n7BhVAWeTO5O5uDWhPNt6WfyR+p/AU2zR7EQGUu+E/EMV4uByckqaOya0WPGqIfi2NmDwILXO4SuH/sSf/riONRiOiSU0OkUkpN3qywXaF5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714103543; c=relaxed/simple;
	bh=O6rHJ9hEPcabxKY/+3EVS2LS6bSg+U+soCxDVfWAiCA=;
	h=To:Subject:From:Message-Id:Date; b=MPFvg5noUX5Opj0jXBTi68aGzIO0q6J3Zw/Jwuee9ShPiSnL3J9U2f3YFsexqN1ltIKEarS6AtENYmSe6w5nPK0mWaxGDObCufFO6gFa3vnRY6BxhGYmGvg2Z4ovJ8gdAf54HFikHDL8w9+JKlG1NbM16O5mT97b3MM0fvjxaaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVqM6fWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVqM6fWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85AFC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714103542;
	bh=O6rHJ9hEPcabxKY/+3EVS2LS6bSg+U+soCxDVfWAiCA=;
	h=To:Subject:From:Date:From;
	b=KVqM6fWsivvfyXF3ZsLTFMGs3oC69Z4c5nlJ2+MMDPKFoDLfBuqhHW0na8EC4WUh5
	 oLD0kFa4l55kp+wGWANMB61I9iRizjpoPllV2HPgxvNVisG7ZkJpZyBpiDdkV68YsY
	 tx+DnnMH0KiROWP7m2KmdslJuFwX5goV75UFWgOsJFD7XLtse+Ng9lW8SYJtr+HLj+
	 SPmtg+mqCzA+1A2AeDC8q7Rw8dylofbbV9z9y0xoiYBF9KSgwUGm+Y0Wzg5X/xeYMs
	 uouwxxj8DO3yU9ChzfvHuXwQocY+ttdmffPKczYRGsY+S2y695Snrp9ZFy0MAQ+Vn3
	 Vib0iiFILgXdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4407C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410354277.13243.5704533237551442492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab60d534e24c647bedc8c51dd63e2cece00ed1580306499a8868ed8f12e28e6
Date: Fri, 26 Apr 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714103542
