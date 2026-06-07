Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357662E0914
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780866874; cv=none; b=SR+qioLAtLQe0BtMhtQ0nTK/XPxlk7d7vFJ/nET/BoL5tkS/EDR7U+txa4GiTniM1cVxAD359zKweoG8Fab9yRGsGNTBKQSxRVw52LB6Yl8p/YpL+q/TMuusuPfe/5rktx9+8fUoxWj8qjVovselqG6ZJbe5q1XtDKCg0ZMqReg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780866874; c=relaxed/simple;
	bh=9NNwDXDER2clLVwkvJbi5wPhAySN32+cD2Q0cKtHDhg=;
	h=To:Subject:From:Message-Id:Date; b=DOv0VkD+ewYyUot+cJ3QydFq4Py8N6BQfiuGXuYiST9+xSoblezJLUkrqvI2o/Yi7b0IxM5sxAyAHbz3oCuhmBSy09tmK9tF3azvNdWo+ZAGeba0SciKsdODRccpc1OEIHHLt7HvpidW8Zx6f7gfwHqWJJ7BoTMLVFZ2F9cTk3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nhwred35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nhwred35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84D8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780866873;
	bh=9NNwDXDER2clLVwkvJbi5wPhAySN32+cD2Q0cKtHDhg=;
	h=To:Subject:From:Date:From;
	b=Nhwred35ZCUgEjLyFlPcTUC3wy2btmHKWnCM5OvrehU+F6oW7niVbVqeThKb7AI51
	 AHfPsl9KwqVHkBzE+ap1Yu8ZK55NPSvb33uSq+WGrI8Va2aYjHxGNpUj10wZ9P0hzq
	 uU1TVeOI90BTPV5jhwGCn9AJGbg91JWbjyQnT+xtxBBXdA9fGuyKnRmMHLuDseQyHo
	 YiitzmnPtX4YXuKimUfCaWgFDFIqMNsrqTfIvJcm/yN+vIgtMu8hLRdbVjOrq/C28p
	 tFO2/jJx4iay0GLVPh7VxkyzkxKWoQecb7jQHqXowtsWIUQOkZfgMXzrDvJowUrT4K
	 b324SOY6HLV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE154CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086687370.8930.13031773830136173429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee694fada503dfc0a45f796faec67d26a23d0762db84a06ef8af6ab289e9011
Date: Sun, 07 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780866873
