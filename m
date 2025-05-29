Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5AC2550BB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748501994; cv=none; b=mAy5n9MZdDZO/H7lS6NJPTibFcS85b6QxJ6iu8edvat6mv/k/yNM1XrO+u6p7CPANmoULoG98HVv5ER7O4vZH8L4Xb8YXE/qdoTMfGoydI4DF2VXO3gosTaDDHZijp5OSCF6CLNVrQRqAdM8+YfNdGeib9sRPzRF7sjoIjA6+D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748501994; c=relaxed/simple;
	bh=AKKHvdrbi9PFLaAyb2t5yr28i0vj1KAxaraLiWW/5l0=;
	h=To:Subject:From:Message-Id:Date; b=coYvutZtJMRPTcVdn4zLG9Nz2q3TzGA9Zs7O3/K2Ep7xiL4i2aWu3R0lxW7178/SVCLAHCMLB+PKYnUVnPJDCFk8BYpfd/AOBhq3gArjx8ryEYjkCJlCN5OnS8VWw4XH2Db4ff8veEnJNRxuhQ3Dw49/mV9dTUk1y5rTsk6ijt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a69OnCiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a69OnCiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2184C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748501993;
	bh=AKKHvdrbi9PFLaAyb2t5yr28i0vj1KAxaraLiWW/5l0=;
	h=To:Subject:From:Date:From;
	b=a69OnCiS0QRDsTkSOwWd7P6m68FgACJH485RW+7m+LdKl0JF6k7EOF6GOJOQwG4RR
	 Wgcq40SS/a1hhTPzWT1U2VDLgS2pWII1bryPIpSLk7YsJaH5Z8QcO01tIID/87P6pm
	 bfQ668S/wE5luLzbk22RENKD6doiEZo1v8joIrTZWkHFVcle/2xWUJNBSnj/zeIAoD
	 j3Abo8iOYPe4aJOkAATGrvoZTaMvCQa1bAYCmWHW2jObhuqxFqX8Zf6xhSz/e3j7zX
	 LGD3cuFK0igS9MqPtUU6T1YkrYO5Ms7MAWjEoiKjA6FB8Ly35eXjyad3no9C0cP+DM
	 7TK8E6iFkZVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90208C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850199358.27497.11779317287212955351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd019811df9d569cb479633381f46466c38c57365abdd8fcaa8468b7599016d
Date: Thu, 29 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748501993
