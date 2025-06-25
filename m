Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D952D8786
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750873794; cv=none; b=UoA+pWtPAasZvWZG4ADVi8qNVY2sYyipC+ggqTEgZNUP/rd5BrYTYpw0jgnBYwa5ssKwXu1UlCK/mY2IitiOVwQFAQ/z3LlDhVXkngxM3a/ZLqs6zw8eUenLpuwSAPhhcRjnvmSB1/AxU7XPohtUQ9qK9h7mduWu1jHxHnr3gHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750873794; c=relaxed/simple;
	bh=9mrw2cLPX3v8zqWpy3cC0CQ3JsRujW+4mjIj9KG8N30=;
	h=To:Subject:From:Message-Id:Date; b=B3UFwywD8mI190pbkqV6OTN3Tv+fGDJef2vxXuyUc8I1YUlQVqPs4Q1lHt3d/5bnI4+D+LjhHu3qJFCG9zJkvJGJAP1lSwnTEc5304K1kxptaF7PaFKwNdqWlVhVgJC149iGt0VaDBH23WJmTYGYnm9oD2+U8fD5L3PMOClGUAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVMsRWkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVMsRWkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A1EDC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750873793;
	bh=9mrw2cLPX3v8zqWpy3cC0CQ3JsRujW+4mjIj9KG8N30=;
	h=To:Subject:From:Date:From;
	b=XVMsRWkA87Ful2Y7VmO0/2IbnYyLLcTHbC+VB57VdMpzPuLxGKi3IazsUPLGt8M2R
	 pIAeVXff8KXBYXst+cbnGM2rHQTSURAiyZRPwSwVwNpQukbJV6E32sBCu22f4tvM4l
	 pbYZG+LZNkvrzxvQPuKcwLPW3iVRO5Beh/wZM+DrFW3SX2lcwgDTVCxiHeyXCndQSq
	 UYy6qrLPRymn1LWXiVdAebI5fkBFN3PI5beyQXbr2wG67qhRxb5MjfhAn7b6nrsPKJ
	 iPVIZko/cZ/TQKTkCwtaGkDG+x75V4deb8KhNIelEY8Zyo2aAd1QCyq+2zeL5mI+yG
	 rUqcra49VBB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE60C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087379357.12207.17514741679780611514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63344b8cee673c98bc7376498500fa361d5e10a12c820686e243abc4b790c79
Date: Wed, 25 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750873793
