Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9A91E834B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771875294; cv=none; b=rhSlI7JwaqXq2qKSoyF25yoU3kZ220EGyrjq6gdoAbRsfaDvMdAsdy9vMcFjW8CihNwMWhSmtIThmZ+sq3ILSUQkizAjfbydxYuUsvl3j9c52zSDR0kVUuQi45ne5KqFd8jySunMqlTxD9PvmNM3o6NmwW5wkagfXMzXyVm9TrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771875294; c=relaxed/simple;
	bh=rgU3ssyfh7hQfdou7TERGu3GcipKTqlTyOsT3oSDTmY=;
	h=To:Subject:From:Message-Id:Date; b=N6XiJYXNcBQmGOmMfrn4tx2RyDT7DCPxdoz3wJY88xCeK8wBYqoTmvWXHSzGL0I9+ixaonANdtwVy1CtbQUfrIKC+vJxK5oKs048cQ17rS3ueDUkr4oKXKY4L8B3PDRBeDIftpKm+sk/E5mb1FaQ4rAZgLnn76Q/PHbNmgFvdNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=My8qkadu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="My8qkadu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA36CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771875293;
	bh=rgU3ssyfh7hQfdou7TERGu3GcipKTqlTyOsT3oSDTmY=;
	h=To:Subject:From:Date:From;
	b=My8qkaduH3OoiCJTQzm+Obn5ca6rIrFzhMNjYvZWHXnbx1rwKlqsljNfjACKC7OMt
	 uczHJOZ19sgUeChm7sQwhUGy/tWbjDO+OfBezEZj2P4wWoMubasjGhmutFbv3Swy30
	 23QCtgZtlCuphce+B/dVXBmwNgB9Qft89lkrR/X+d8nms0oPnplA7rdu8hpWQ7vZVD
	 xsyNyL0rWyrm0ZjUcJZIVT/SZs/0klItd+I5lwW5+XmldTSuLtNtxR0CHVU2NcJERV
	 bG62DUkMnaa7MjKXCXFtHa9Ksf212mEZdWcOndtOGzam2EEqFfihMtcpGP1aIdEPFb
	 ourOc0kba/4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503CEC1120
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187529359.7347.3895046746498663776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c958106522c6f2bd3eaf2da1608e3684d35862a6e32da2605712b59536a8eb5
Date: Mon, 23 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771875293
