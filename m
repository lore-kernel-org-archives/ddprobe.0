Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7AB277C81
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772049293; cv=none; b=qEvNH9nc+gxVn7xNRAzGxtIuHthq67TGOY1X36RkKsPORLzQM/Mp1fgT1ONfPr12o+GYt//1oKLXWseLuWwYdnC4NJlyNqpIQ/znmGvPXzme/58qSWHs4LojC8FJUcTzeruikMNwEOFdOdbouVe9X+pSKNIHNA2Bf9B3FsGccJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772049293; c=relaxed/simple;
	bh=YIMDkpad/uA0QiCbFvpHqxpAsD40gDLjI2QXcc02/Fc=;
	h=To:Subject:From:Message-Id:Date; b=cr9JP8+g+7ng+GUl/juybY59FRMGLBKn5ZiGV25WyQb/ImNVoK3CIdxi3MIyhB94RXEybJp9Mm8R3/Pi6rEmC6sqQqfqbMyUbF7VvS7aRx56RZdu6MVldwpXV3sNNqPuAkiFWjobH2suz2XpekJkDWlDTxfTxW+5rVtWFHSsKXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTo0lKfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTo0lKfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B097FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772049293;
	bh=YIMDkpad/uA0QiCbFvpHqxpAsD40gDLjI2QXcc02/Fc=;
	h=To:Subject:From:Date:From;
	b=TTo0lKfpOFLeILJ81jqYiN1SUbFZm7QSlUJjaPGvQh4+s4D0OHCF4f/zvqcY2S6UJ
	 f3LfPA1ALEQ+Ls3ddMRPnRIEAe+rypKGSnxy7OpSI5RhIGxTn4MILaEjvjQhpn2Ami
	 eZRMsQp9+Jgq4X1i5/V4U1JtIMcm29B8kMFLhtzuBNrPwOdWWb8RXGwRro/wwcKqZJ
	 pAJN+i25S1gkkrl4hs90P139XC5mirwvNWWg4yjVRcyBJJEJhllK3S46Ohzp/BPDf7
	 WfUbHkdj/0DvTIYMXe+bk9oIIyIDx1j/vBFZsaWHd/lJuK87869qyzYZY4ZJ4fTAd7
	 Wp7c5ru7XOIVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6ABFD45E5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204929362.31711.17543888852389243604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f9bc9043e6b8cd363c29f6280c75e153787d551bc590639ee69552e956b1e9
Date: Wed, 25 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772049293
