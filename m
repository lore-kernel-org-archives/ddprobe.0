Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BC48BEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734960954; cv=none; b=e7vsIUT/MgAOu5ZbrS8W25iCmUZq1x3LM5b96zP17H+hzMzIprAEafsuCkAdtFDa8lhUDtSv919KNo4cvWUeUB2R+M/siqWwifu1yYlg/MJWHV7I9Qu88Bb0vMtiAHcWQAw3pO3/HenWfMz/HhLpVkNsA6C/asOe9h7AbOC9WJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734960954; c=relaxed/simple;
	bh=ozRnI2xJUylvd7mulsQ1C95U0oQ291uJyqswiSceMpM=;
	h=To:Subject:From:Message-Id:Date; b=jQ8P1CwcikPkN69OhDnJC01qCUzHE3MHFe4UYWNqgzyvMHerAD7uiKoJA2DlYs+mMRXD+YfXpXjHIVSXTrxxfduwQNZf53avt8a1WsKX9mI/+rM45fFrGwxpwVDfAPpCv5Pa2iAQi0R5OG792XZJ6nhB/Elaojmwk624FHYIqvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qffVuNW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qffVuNW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBEC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734960953;
	bh=ozRnI2xJUylvd7mulsQ1C95U0oQ291uJyqswiSceMpM=;
	h=To:Subject:From:Date:From;
	b=qffVuNW8iXCJzvi+ROXeISLKrWrrKLRN2LhjU001fjoFychB4LJxvQd1hGQ1QI/k7
	 g2vLKfGLmDHJ7HEVee+uYfI5HF3obU5iMxupKPh3vobTLpte8CVtCI2Lw2ljqjXA8O
	 dPLVBbraNfiNbNTU+mzDn1x5Oo0bIKwr8TVf+qB47rXTSdmjsgEqlGqp45l1k1Mn0f
	 CPDRTdelOwQqA+/q7jbJxxFDwOXmmz0YLtZdyTSAgdEWMaphkT2rPt9Ku2k8QoaszM
	 xXPm9EzCyUOXOzYsFXpcsOt80L3j8kA67WhlxRNzq4xLgNw/K+epx11UK0InlEm/NC
	 iSK0rnrsIEbQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962FFE7718E
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496095360.30793.10843871777872311413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38df5897da859043f7a42bbf90c756a130e83b931825e7e72c07ebe97de020dd
Date: Mon, 23 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734960953
