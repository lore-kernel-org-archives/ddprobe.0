Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE530224CC
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729956953; cv=none; b=g6qwXwKYpzisyKobmpY0F72OkAXSQl5V51n9ZMtNsKJ3ZohNWJYee5r9TlycTDtCNh1oG+SBFiZZYjxDFHvXpfQ5lVNDlvqBDcBHQ7I8S1UHrWzFt9tQZl6U8UUYp4ivVQP+cpDuM7kuvDi2SLrzQljlUbE6+O4Z4bHNQm8rzvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729956953; c=relaxed/simple;
	bh=/EoajLICyrtv21E7L8NhlGB+IPhwjBsKJvuEM9VKApg=;
	h=To:Subject:From:Message-Id:Date; b=DwzZb3e9E7CmbR7bvLJLGFcDW1VjugWChGdtbTBZDSTjND3Z61nFLOl+hxMcxQTgxZdEk/Or8GgHkd6LC+VdCJlSCUr29E4J4eIXkTlmBOeI1rMGiYRHH41Jno0+4CaTS9FTVkG6pFgM3PXes7aqWib+z+bLnmM+XB5C7mXNd9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjeYFjz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjeYFjz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66EDC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729956953;
	bh=/EoajLICyrtv21E7L8NhlGB+IPhwjBsKJvuEM9VKApg=;
	h=To:Subject:From:Date:From;
	b=AjeYFjz9cvDIQBKaqry6tOach/KzBpw7C6LBOkcROP29ChKG978RKcIVkEmedRmr7
	 7mCyiwDEN6bfiHJtK4rYXs0GYkFxRgxuEGL7tuy8leDpcdmhwoYSBhEGYqYfn/7qCp
	 +6EJxZJRCT3yzjxWBiWlHRTtRBJGuepb2Ess4TOEAKGuyGFXhEUnQlSPY8QKmVT5rK
	 TaY4u16Y1aRcFOkoxzq/3EuyDdNgdKLwdEeoOW+x8/qcqtK6lkikV8rNa3AE+I16lZ
	 j1eAo+bXxbpFxSYfyXLJ/cTDuoIuhNo60VNOM+cBK0ZXiTc8T85n0U7xse7XQ6p3TS
	 VCIJ5ej9YEkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589FD10BFC
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172995695360.27655.3769526403853967203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e558fddec3f4e9a47e1c6eed87083ff332c52f47a7f3916a56c90bb7f1aab5f3
Date: Sat, 26 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729956953
