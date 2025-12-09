Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137F516DC28
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765273374; cv=none; b=nYj9oZaPyAefH3UL9dwOlPxewsNnPBE4pINNCvbWWWpnpmz78CUZy1Vxq1XghncVm3FN1t0jyttzof8LIRmbKIxLlNjGM1eyO02hS8z9W70xHD6QW+QwpyRRmYlGla3y5WpjgDXRMztcc9aLuVuWqb4S/CvriUtXqsDq6l1mkdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765273374; c=relaxed/simple;
	bh=O+9bnK44tgYg3EXjs00vc2N+4zLLNENUtHGeVcL2f6M=;
	h=To:Subject:From:Message-Id:Date; b=fErTejslnP2ko1qnc7ywflvvW3KKAtgY+KUVzMvb/sNuejE4xU/uzzjUZPkhOdCPpz7F8WQTq2rxvw9o4DDtRj5SeIp8R+DO59z7OkuD4CjkbcaCtSLGU3WPI2t6DPe0bluoBwzfTyFQzNPWWM3cj6irYsa4bn8t5QG61twrYPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOsTHS/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOsTHS/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E20C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765273373;
	bh=O+9bnK44tgYg3EXjs00vc2N+4zLLNENUtHGeVcL2f6M=;
	h=To:Subject:From:Date:From;
	b=SOsTHS/ZgGM5JzcE7s3uIt/L3/WJcbOwE/9dsxhSFHmyvWj5sWuGm4OYuWQ59DCKd
	 h/7ubtvylQMQduZI1kaGNKSZOCnoQw21H3i+LkB/DRrCJV0jNCCsPWXpo73HbxH1TY
	 YswGcxocAzVqbOg5NEFnIrUWdh0zjUtY1Du/PNGdMNU2TBjfcFTRDyqESoOu69P/ov
	 /GEbDLwHm1i+aVjKpBe8UFIRgOZymE9PmpeVBDnl543Rzqu3cQVSxVBrlqBbmO5wCO
	 0l6xt/ZxKH0G7r2+ttKKwTVjJ7r63hakEciYLCW6JcIIRUpHOItlC/BtZhGBH6iBH3
	 WO2EKTNgMCF3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F0D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527337359.8578.13792304200673030113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29574826c6c71cefdd50b61690faf9235732b8d62e6e3149b31818cbcd7f7671
Date: Tue, 09 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765273373
