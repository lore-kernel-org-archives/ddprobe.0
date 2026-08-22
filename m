Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355A230E82B
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787415634; cv=none; b=YifwggenBxVkiDGsQuTbJzEExnnLGHTRnx4M3xOZ8BPPdHwCK4e0N4+zaYdxiv6QzUDGIF3KfWqpND2MZf3pEMY2i9zal0IgukeBtZKYHd1CiOORBxzGoKC2AgSZe5I7a1j+bYWxov6FDKFYJEqdFeh0CLmVlNq/Zbpu/bcoPSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787415634; c=relaxed/simple;
	bh=XzjUb+5ULwYdVG0Y/H9n/mcQWPknP9+bSiLRJ1mTv/M=;
	h=To:Subject:From:Message-Id:Date; b=KGAyl750HHbPHWD8Ot6QPi8qogZQ39P06/9EmspiQtaZ74auFwPH7cRUZmiUIstwFwS/IEZd0+uoPQe7W7h02SC8EUZF0NS90REodDiCNYXYGOJIM94ONLggrCFhH1l1yUv8TbDt9XVVvOCXhCNW9CiGQVuycRTNsnb5Lb9Nb7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE9kIFZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE9kIFZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9750C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787415633;
	bh=XzjUb+5ULwYdVG0Y/H9n/mcQWPknP9+bSiLRJ1mTv/M=;
	h=To:Subject:From:Date:From;
	b=EE9kIFZLYLLrjovpLC/KxpZUm97qR0GPM8TIFSogwv0oj1p/+wRqFkQ3ClWGqPDWG
	 b/mpLQpUQlbOu9Y9s5toteOo/LNey57rO7iIETT/ZPU7MuoOnoMVC3w12GRUkxyJsX
	 oja8zMwb0HdVi7xybaSY64QyOAmH/HuDuiEvwsqat5XETKgUglA1gIJERRWBtxkUhK
	 A8d7+Yu4mz8KEEaX9Zacdobsqydy6zUi7lZYRaP4ltwh7XsPMsDUZVexC/WE+9IRDF
	 KEgmQsTieZDqQx4GJYcLITqswSm5VXFh2Itr/co+gArTE912aRFxlY8R+Y9vITRvGx
	 E4WU8uNissItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE07FC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741563369.16072.6602433237629680305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f94a12c9389f8cf4c6b7d7abaf057c08a39b0071140ec494c346105b487d51
Date: Sat, 22 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787415633
