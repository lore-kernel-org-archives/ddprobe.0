Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C765279329
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552194; cv=none; b=HezJQe7IzPr2wIUkWycQXXEQIIlhyEXJLQz9W/QRhZp33LqEobFCSycqyIu9MKN5MRLb2+IdU9JaZ3AlNxxCpSnUGCzQykdKoT+8qmGtfhTSSs4rv6ryO6ppRSyxDsTNAQF+dtg3l+aLpaGnt+Qv5Tb7QYTCrZCPIy9lC450iJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552194; c=relaxed/simple;
	bh=LhanHTJDdJtu27OkBXON7tiGlYKbbwAOKo1UvveDlf0=;
	h=To:Subject:From:Message-Id:Date; b=oR2nbI3hzCvtVyA75xxIdAOT2VieflUEsE3QLnhaojeKam0FxplBWvwLYpanjMyVglaVqGsKMX5/uraIwR3Ck10Huw3A8ETDEvO3yO/Ykmy5PA+aAAMjVRp5z6iS4bTCzzsymRZbwg5/MGjSVn3sIqaGpdECHXzU1HCpMQXv5LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoHbSfky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoHbSfky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D64C4CEFA
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756552193;
	bh=LhanHTJDdJtu27OkBXON7tiGlYKbbwAOKo1UvveDlf0=;
	h=To:Subject:From:Date:From;
	b=DoHbSfkyIAv8ngK++O8t7Zb3q8LTknNyvMAfleOy++a5/uz6AbYjgdQm+8Ydama+e
	 MoGzHFp2vpuWZF+ZR5AHNEEPzfKSlcGyX+vLjycIyfT0CgDTAhCJSE791S1kfG5wur
	 4iLdBwOw+s8L4AR/8J8IZET/cvctaJbfnJK7iS/HeQw6E7P1cg8c44IM4uaJtCFGx/
	 CeORvFJ0b/Y3ETiWHoyccT4AngX41Ppps3bVgOpZJmA8spVjTbR1qWMie+K9xHldIJ
	 WmxcZ33eb2N/HXovAsFM9u8TaMMVw/0+FPWX2J/N5lFQoTryxTWr6cNtcra687JFnJ
	 MWn4d1I6wL5dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F467CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655219357.14894.3304003419900557263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0cc25f0b2521506e3bd6f41ef42c32c28c6548c49789e4abec50e87ad0cf8c
Date: Sat, 30 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756552193
