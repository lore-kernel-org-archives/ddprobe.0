Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A511BEF77
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745326795; cv=none; b=BZ+uwih0Mluj4Adftw2Y8viFkTVhhV/zWd8XHZyh/pkl7h9gcbTsHw+qpRo0zgntpL3pJivo0z6GDpWIITWBmhkXxeedbcp/NHSnaXvtWoIJsSPoYCITMesG1v1riTGs8TZgSX+NyyfStZG47mAhSBE1NQPVbQBR3AqxkegMxf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745326795; c=relaxed/simple;
	bh=zD47Jk3B4SktWuGj6BOuHgW96nZt4O/AlmmFwF29YJ4=;
	h=To:Subject:From:Message-Id:Date; b=YlpCbE5HilSfVS9TVkPsfhQLjGegmyDq5Tnv0kmhxuCdUyCVyz3WIGjRlBoQuOhVu3rnMsxwrzTLKFBNl8MAGqrhgfkSdHPvTbrgCzHeA+IDfBBTJRwawaicbcepaaaHgScAkF6qBYmhMp1eQBu6Uibqz0Pox1Aw5+ffks3/EJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVtm2KUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVtm2KUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEF4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745326793;
	bh=zD47Jk3B4SktWuGj6BOuHgW96nZt4O/AlmmFwF29YJ4=;
	h=To:Subject:From:Date:From;
	b=TVtm2KUThxAwcXXkD17VrivAskDIMBx945Jpku3VFEIc9jS0VeAU0NSU9bKwGYJyS
	 mUDbp/kS7/9oj/0/b2DHPlMhAaWhB2YxyLdD4VNFIptuXIKfAijWc+mGOepX2Mo/Hr
	 gTjRy9L8TO9EKM+OkIt7xanLNus8bJ93wS7NrUbsowJJjUVOxKJzdmqem+VrnrCOx5
	 UYFipIIIc7Ibz6ZwNp5Dj6tAALImIllCtay7kMODCx1XngYlPcwC3Z3+S2kphMAzZ8
	 43LpTzUUkychpYxIZQFjgpWpLKdEC11KtfrNQix9ymTypA8BvqBy5jiAfRcNaNNvrD
	 nFyRS2Af72AcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95078C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532679360.5555.8810649770014344083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27c0fc4d094ba3f6cfcac8157302de2f0932f43053ae4e90f5aeb61a2a80e64
Date: Tue, 22 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745326793
