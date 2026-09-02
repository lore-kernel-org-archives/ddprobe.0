Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C3614A4CC
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788313835; cv=none; b=WsAgZkwAKqCRvh8lpO/ZiCEtqTaw84m4bh45UbnrSllyXEB1IFEZa6jra1rX+AEY+DWG4GTKs5/M9WvJ/2wwReDR5i/U6qU7piOXwmPCKX5ZKqYxYNU92a0k1eW/TVmFvpyahIFF8OSRls3/aXlSn1gMY+HTMU/SEPc30TDDQvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788313835; c=relaxed/simple;
	bh=rNi0IdeWxleCXR+3TuDzs2tKsidKqhdVgdQlHcztKX0=;
	h=To:Subject:From:Message-Id:Date; b=WEkoQvpjEhg3aXdOZoHvzmmZ7ooHyLTUSjmOdy1Tg0CI/Vo0ifEd2jj6Y+u3ae8nmojnoutGK7ZK3nisR2fK4Rkb224HXW7vgU9r3cF1pakhoN8dOae3nahaEmFYy21AOZ7jy4uzhq3F0eR6AvzXm0UQZj9KC3gV+4/iv+W88PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpLVCgAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpLVCgAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB3EC2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788313833;
	bh=rNi0IdeWxleCXR+3TuDzs2tKsidKqhdVgdQlHcztKX0=;
	h=To:Subject:From:Date:From;
	b=SpLVCgAsP5PFHcl/DvzyB7DLdxRiggXgtpxlfSH6xJYI+WIZFEUa/f96sA9cj4Bw6
	 ljRiKD++ZFHMIc0t9XDTkCh+Ul8N2xnfuFY2SJ4d8Bn6Fsz6SdK2YfmVnxCIn7G5VR
	 Hme3WA1Yd+aQm5BE6PT8w43b2wSY4ErYwsmotW9MleRoMkHRKjCDWaoh+u53UzJaDC
	 xV+coQ4edtmVrt2C3qnGMrIQxri6BmU76XqrfcrqdOFJS5KelFnNgzkwSc8QsHTtLe
	 y9eQdj78c7UB24TEACxbp7T54spm5b5ZDtgzTLSeaY69YcYHqaAvRAMYfX8VRuRlHv
	 MbcYUpsbnz15w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB608C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831383369.21455.10909891384259285196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467fe6be5a4c1146d9056d58290187ab1edbcde1cf84346fe456e426f90ad596
Date: Wed, 02 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788313833
