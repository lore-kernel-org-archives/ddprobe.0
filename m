Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CB7155733
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712744297; cv=none; b=EkcsetG34FjA7TBkQ/A+cmwp6yv2Ppv17WyDHQwHoocM1Z2N0CG/WepkFZ40xARuctbEnO5ptw+LKH3dT2XB3zBNvWpnWQA1+vcCz3MYXH2xlUTzX2QjCSWFpgWB12wqPf3LJ60a4e3+7O35HX/un3g2DdGh2NX8wsNRslD9a0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712744297; c=relaxed/simple;
	bh=5oGKpWtHuinQYqR7VQ+4ofRXqtaC6Poncs1uw6jsndk=;
	h=To:Subject:From:Message-Id:Date; b=O599GHcsuGSqz8Ltqugx7uz5qUlNGTtiPLsf4isodvttV2FF1BrTtyq/Tf7QOAexP0HYychA+fleGl+onnmndP8GQMgaDa047izYaqOKUbWhD8ALJzwF+ZHMxi/CKVtZyzG+zUokCRpfWiADefNV0ULgetQjCfeaN/qhEOIC41s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIrRpfs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIrRpfs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B51C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712744296;
	bh=5oGKpWtHuinQYqR7VQ+4ofRXqtaC6Poncs1uw6jsndk=;
	h=To:Subject:From:Date:From;
	b=WIrRpfs1uJL7wFZsOMYYe+nnZA6/xtnUZu7s+kRl5iwvX7WeYyhrkJuk/i5dKiHyn
	 ouX9clr5jCcNjva4Cx1aNcLQeD2qHgHlHa8GjI0qYevqHS8zYPyVk+sHbIuKU8X2Wn
	 c2tpXauA8tBMJet7wLVHid6m9vAVwDkJUTLHOjqEV5Uz0i3JRGCHH1EsdqEigCT+WR
	 jmwdzPaj5k0Z+pSF1nwDLDA+1Jo/AHolWbfNJozs58GZTwrP+QVdSL0eGLl6qRpsGa
	 WgZdj0Lbvt5wuz6RIA05yhw5Odr5C5vrdeytIekjI5ukdWVKH2xq3rSPedCM9DHa/P
	 3CaclClAeqLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4F0CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274429644.30091.6675692296130962471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3341c87341aba7fe106a1b26ef9261fae2809e0e18995164d7aea0fe2e3d6a78
Date: Wed, 10 Apr 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712744296
