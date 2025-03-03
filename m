Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C15A2144C3
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741015134; cv=none; b=feOarVcP0t841WkqVOOEfZwQVWlo+rz70Hoc4F/FPdRijibGMbYfflEMSouqDa3d9NKNxUmoiaGeOPbBYb0yV+v80maQnvG4m+DjjJMn4YZEjGpKD54aP0wRvaWO3A5kSrlhKVqrPsQ8PG5X83uK8BadYinnZV1n8LVSToswBlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741015134; c=relaxed/simple;
	bh=odHW+y8Pbvg+OWj5PKlhzSLaDnmql6xOGx9GWnPdCp8=;
	h=To:Subject:From:Message-Id:Date; b=Ni0GXW0yGTb1qM7TxCn6tHuR/In0gCOqVjcPRAzS1SADDJvWWjWF2umBQoXeh7BIQ9wYyfIbmpO4GbNg0k5JcreTw6W1rLFXDZC1BIegnkQ2RZdRp6cPb0exz2X150J0T1amER08/W3R8s2Lobv/ZKPfLpN4wwiR7D4JWPZnloM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiiKly1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiiKly1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DF2C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741015133;
	bh=odHW+y8Pbvg+OWj5PKlhzSLaDnmql6xOGx9GWnPdCp8=;
	h=To:Subject:From:Date:From;
	b=TiiKly1xk7nMUTgnrhWdZet0diR/CwiYQIWd4Hz7AL+yEr4o0xrxiT3vvDt89b7O1
	 sytviK1Edc5MKS1aI+u+WMdwFnbpdLnnO4rxhSQtgQ49MEi+8YdgE3Fj2AnK+UiQZF
	 rVgk9tNCj1YIcJIbAtfIpswUu44dh+V87U3Irj7fZA93NzvrWinA/Ws/P2XFb/DiVG
	 bvj4qo5HuPNNm+NWYiCJY229nn/D6TmpsM1z73A3727QOr/FfqXFr4Wmj1Dom19gp9
	 vVC9WtJ8zTT5CJDEE05W3P45j7R9vnT91OPQCT6POMOv1hapYntaUkBrSCEr6hajAS
	 2uHmPv9BEpucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B336C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101513362.4406.1171766187900492154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0caaf23e2bd259c966af1d781bef3e1954719793b71f15577d6e4cef17df24
Date: Mon, 03 Mar 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741015133
