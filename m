Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C41EA91
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726932954; cv=none; b=YVw9x7eel1ZzLtSamufncyh0enrux3Zxf4K8p4oW7Xf1b6nst4StcVcQgI8PHdEOMAh/dPcjMJEBsNDTPFxdgQ/5JYBC6pW+gG7JF1Q04RBQAxrHiKHH/0ziZsv1/DGcvm37970Mdfg6IhlPMfD9Rp9VHoHBZ0QAYDFfPuzQflY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726932954; c=relaxed/simple;
	bh=kjjPBnK1WB66w0nIA8ZY7lj0RXMImbZaQAT1t1R4a+c=;
	h=To:Subject:From:Message-Id:Date; b=NRVvuTqM3I9K/xLsDUJLCNoQlWvKS0c/u+l9YJ+PCs9HHu64zZRtkWsAuRJbt3r3IHAaGwAhVzcx13Qc9kKhOgHh0bGSy9cKbBd0Ok/y481bu3iUjAw72dAZxBpeuI3OwKM+GSLD8lA0VxVYc11vWuuzGZnnafU+gV0GkerWbUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFI6SKsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFI6SKsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A898DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726932953;
	bh=kjjPBnK1WB66w0nIA8ZY7lj0RXMImbZaQAT1t1R4a+c=;
	h=To:Subject:From:Date:From;
	b=BFI6SKsjWZHY8XxOcB10/xbtkIsAG9FtWDzXCahKOR4KY2Yz2lxqGHVRq7NDONrJX
	 JrAzrYGMsMAeYvayJvoJmg/KCVUPlboAmI5RrCBpJkgt+ymFEM3EphJLlosmG67YRX
	 F9UPa+evKgDzuiti+paGLtA7O6oFAV6JEYwtIyR8JpLq0oCMSPAWTAkXY8ZhxmBn8O
	 ettgoNsI7akpE3iuQK2wFv4LFRbwin6VvxgZgZOdEj8fpoGNyO7msDbEMKXFHOa3TF
	 cBKw/3A6uFrEJsycXQ9n/yEBXmHSG1l8MeH8NVXN4lYXIlJjApt9mnGdsZMG/7pEto
	 yA/aAI8TfKUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A29CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693295360.20624.8995966277050705386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ce7d67f124eaba2560860e6b755b0952df7b04cd2b80d17b565da2c6556f6
Date: Sat, 21 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726932953
