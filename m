Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17982299AB5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762507194; cv=none; b=LKjETZHESfb9CkO7v3jP7iqAR0KfZCLhybHStpryaYeov9totVbf627FeqIqIlpS5WYVHzpI0YCCHZsiZlwvAkD+a0j321cH9nBxMmh2DxtDXDqIFAkCD/iCZDfq0vpnGaLKNEfKLVV0Iwp4+fk0G+TDi9mjCIRqrp9ojVNsQwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762507194; c=relaxed/simple;
	bh=135N0hgENq88Po51goFMot0+ewsUT81FRTLGXagDWjs=;
	h=To:Subject:From:Message-Id:Date; b=AiQPTYkC7P483PbzLuqie970XkiFDy5q2txojs8Nkh3yxAgiERxeTFWKmTOkdFcqN7S9+br9u3/fcHG2WwGKC/x6l2o8Kl1LJlDmnqvwaTaChEhWOwCeyCcjb5QN+VGZ1QH4+yFeEVzUxQhZSNJ5Er8XAn1GYd+Zv4bpLG800Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8uPHw/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8uPHw/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C874C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762507193;
	bh=135N0hgENq88Po51goFMot0+ewsUT81FRTLGXagDWjs=;
	h=To:Subject:From:Date:From;
	b=t8uPHw/upOAAyvwnsRzt7kOoGTRfQzLsObXaM4HEpKlBM8vsJb7zNT7za37Nvblhh
	 a7OPO0Ccv/BHVR2E+2u0UYcGs3KFFbtd6bg9RrCFCuAchPI6819S/6I+dpO1HAnsxO
	 5mrTA1KNmw+vTsjFD8F8JjNrDMsr8zHZNjyZZKgFFll8WJTzu2NxD3cV1YDDMaA6f6
	 aKT5cjv8+GgSCY9aB/WjDVJ0EEgmT8by/yKtO2nArLM+df5Bg5qrDxZxRP5wDgIWP3
	 dqzwKXRJE95nzvr5xAvYEM76fYYq/v+wTdg0LNsbOBsLf7NrocjLcGeevIvQYcozmK
	 l3uCrIxvh7d5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034FCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250719358.32345.14222890156168784914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f158c6f92d2b1365a763ea9e982d0fe454090ba02e01cb25a12d342c31557e
Date: Fri, 07 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762507193
