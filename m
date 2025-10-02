Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7242877F2
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759435793; cv=none; b=q5EeUwr5sz4SChupKkwE64xMlb1l16ao1nV7so4vU46qbU98kjgB+lnCtw+TPeNtV3GtSF/cLLSsjFsT0Q1eVc422MSK6zGTdLDAKs4rHj4nBCVtBi3GiqL6eaw+BoEzbDJgrzrhLljjiwE32a5/kgc+30d8FEgqnPHnGReTffg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759435793; c=relaxed/simple;
	bh=J/WUOXFMfmDK0fh7CR4swDbDHSB3UeoDnieWmQ9sonU=;
	h=To:Subject:From:Message-Id:Date; b=Ct5cZZ4PLTSObVAfIL5GVm3sIp9FnzNkWoFMvWB5ILLlOK/ip0pOtb6wdqV14vX7XxZMP99P7EewjoVJub2KA370Hw5PMMlc4T6UkZs+E6nykTsmZEZV7aKA1/912wpd/Ej0+aHPst5gIxn8whVsnfGPJRPcCyD33Qe0lO+DsLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1b/qNUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1b/qNUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D7EC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759435793;
	bh=J/WUOXFMfmDK0fh7CR4swDbDHSB3UeoDnieWmQ9sonU=;
	h=To:Subject:From:Date:From;
	b=l1b/qNUFrNosvrXWj6zZX1Gumm/9GzbgOx2wWVQ2ONBZSrxh5jeKxQWZZv1LJFfYv
	 tlnQ+nYHAoBsnd0cwjn5AWO3IpZCA3/o9j62Z+K8WitDmqFuqDoDcuBIVJ+iSoQF39
	 EeLWAhi/VSsp3E+BulIe1StNNDBu3Yl+htQtLxnkFgwNL8RQv9NIaf1Z4LIu4u7yV0
	 KPv+vkUBT+RBeolAQDTPZoOTkJNcYlQWzbU6sbNzkljhtKH+fKY5mp3LnoGxMK3gSO
	 JQu38SBgV08WqiqzhT7ouKSc/p5fUdJw5dYfvVra7Qzbmy0Te4r33xg3HD7O7b3xn9
	 cx5xrTP8br9Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE47CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943579358.17162.12189052411348962238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90eca2877f1fe8f4d8089435351094121eb7fb9a876a0d044e1965c5bf3a489b
Date: Thu, 02 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759435793
