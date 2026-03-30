Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB662E4247
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774895094; cv=none; b=RPPzZQja+yFL3uU0nKzasobLJBRvV3ED9wmC4y7PHmPhR2T9BsJ2A5vPytukKct4K5ZM14HW8nw6jn95yD5NS9seRn2EdNYikePvjU3S/3ufm+o2tpO6/iw5ebx6IUy9yJpnu2RqnvWWG93VitfpWEN0W6+U8ynu1FBicwSg1kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774895094; c=relaxed/simple;
	bh=3FntmQqRhxmWlWIP2ZSH2xym7FqmV16tCzH8rbqr2ds=;
	h=To:Subject:From:Message-Id:Date; b=AJtLS5v6DS5aGiXtmCgF4vfuoZ0vAadqQpb2+kFOxBsrz8UV6RrGXwpukCx+LJFprdn5tUAMAn0Rjxu5UKGR2AJyq9XtuY++MxZuxOItpxNK9dQot5RO9myv/ghsZUSAfISdEVuovUAQN6i8u9R8B3FUTeRbKWFI+d4p700n9cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVxuUjYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVxuUjYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774895093;
	bh=3FntmQqRhxmWlWIP2ZSH2xym7FqmV16tCzH8rbqr2ds=;
	h=To:Subject:From:Date:From;
	b=qVxuUjYkTumiCvt/mYUIQFSFSHrgwJSEf2ih/pp1eKhHJpgMQCmEawx74ROoL6oSy
	 a6Nbl3l141RfQIRiZUDCc4hWtXArL1XWt+QjXblg4RZDp1r68Q5S0t6ikBOQ5VSi7b
	 42jzK+jy9DwO12DD/38kpAf/L1VIo9nBBjprVGC3Djh7KaxaYhKc2EVzRgVqgBlecr
	 1umctKEwdn8+eXyWk78uLJShVGIIWkH56m9amtANXUP+Yr8CGGjaWQxAkjK3zElJpD
	 WUDveR14RKYZhch5CrqD4QwFc2fDRu9AVRsJ1Ge5CP/9i1ewOD2POVKqXUEBmCiThM
	 PfCLna9NmsyfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936521061B15
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489509359.30405.10490782983210890884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb143c4f0c43d4988f2c6abe893895c8d230fde0f02d6ecc9a35c3940c979018
Date: Mon, 30 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774895093
