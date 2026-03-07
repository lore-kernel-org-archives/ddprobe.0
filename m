Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5092526056A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772906694; cv=none; b=OSdOXjN0H988gx4GNH2RhB8zNnOUUTV3zqTniVWnpwpKAoalKN0n4CaGqsdN7HqODY9Qx4wNRtuCZOsT/M8kDLz9vhP6BjCw2+3B5hXr3Et9sNotUPDM1Sne7SXC8cmsvJugCMnrORk3h4ePlhLTZY1xZlCqAPOmSN9X82uGQeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772906694; c=relaxed/simple;
	bh=6iCiPYhq9Hrx+/YdxUcLPnISFQ+hOaetF9BrJuSvHXM=;
	h=To:Subject:From:Message-Id:Date; b=sP2VYT3hXtaalH+7j1YT+0yHzAybvqO5Jn5XbtruKFj/c+MKbiHLA0mKsTQ8k+hkl7y4K45UjWDXRm0fh9KSfHyF5kwaJb1izkQFIek3TCyvdG+GE7T3vNRZxXbJt4jCMaZ7G31rSV2OhG0ex/UsfhzEfhwhfbTx1/gXeJwWVzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drHwB7hP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drHwB7hP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA260C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772906693;
	bh=6iCiPYhq9Hrx+/YdxUcLPnISFQ+hOaetF9BrJuSvHXM=;
	h=To:Subject:From:Date:From;
	b=drHwB7hPi9eEbCefJL8zsPJmuwGvv3BvuJS2yfQy/VC4UrAYbGShax2h5dd75ilTe
	 PePutMQJ9F0w9nYPDDyH/Ckvw8fRBXnGm1XnheZ2FdBQXAdJf2qtcHm53+usYRcLni
	 M6K8j55WthzzTuFUAxIU6juJzaVbaDaUMva1+ffshxcCzVEM4tLedbEo4KrWQU/BoC
	 PJff5+kbgkjobL91l90eCKeXGNTGAF4qa7qUzhCmNGfM8Potb9NKowJewHLm5QcMr3
	 8FwBLDWllGClc0XC50KWSrvVbIr8WRBWOo16UdTD7O7ZztwEqhoGn8z82wEbq0zQk1
	 r0+kGEQ/CWMIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CE6F55106
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290669359.19630.8832146264062195566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107beeff9eda2f081d0ca53a1595a2393ef1537f2008363e4cc649655b8a6638
Date: Sat, 07 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772906693
