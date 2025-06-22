Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFEF1E5729
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750621794; cv=none; b=BAtS9Ltsz3Z+oU8HNaevpyf/a1VcLZNnF82NXphrRAhZ0ndM4DSfhwEVcIfMHgDWcPsJhuoTy6UCEVBZi6f0Gd9NNprscoc7JrRvclhMbL0OLwCMzogF7cJUhdtgXNTczzzqlWBYhfotn4dmKbrbWoiN8zNG7ncydeR+UQhCwX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750621794; c=relaxed/simple;
	bh=6WFIkrxrBULqgX+tWh7q2pvOf2l1cGk/+O8WRfvciQ0=;
	h=To:Subject:From:Message-Id:Date; b=cCCkwEuGqCxZRdZzFm3EojiwtNryXPiKQY+kLgYmVnZo9L6UoZsR+9zc+bLxHLC6weDWVv4pTyQFyY5z5yPi+YbSKmtQwVigyCFDDf3vDOC+xG30qFPUXmNGAkTBIq6AlEeEVfjkd946Tuv53flanRx1CQqb6ai7JdAZwUJpbfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbKEJHN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbKEJHN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750621793;
	bh=6WFIkrxrBULqgX+tWh7q2pvOf2l1cGk/+O8WRfvciQ0=;
	h=To:Subject:From:Date:From;
	b=PbKEJHN1byKgJeGt3ea9IHnlG+1crQY0r8i6n/O3sEm0Q7vOhNj1xpQFYKbQw7pQy
	 uL8W6NlTO2F02oPM07FYNQ7nEhBo26XeajAc2WI/WvXdQW8RTHgcxubT4WwFtAnPX4
	 p1IDiBDZ+R+gfslwafA8kewoBBcXE4USN3/SlCUTnCPeMVWh7gY+8ZYVASl1oPt6yg
	 QefkrS7k5mzCkQZ2JeZHvf/ISSiT92x9IFoN3DO1FNb5JYQDiBtvy6Z8K6JhesbKb2
	 5F2dxKc6vPVSjckWiajvEPbaFaioqAlj5K8F7rCwekDVmx0y+Bw/fVblZT8uO31kVM
	 dafP6bXrikLyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92458C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062179357.5501.7398275130567916361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832e65035ce679e3e0b58781c3d3fb61a836deaeb65897b74e8ee063bb5e5652
Date: Sun, 22 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750621793
