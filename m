Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CE9274B5C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775286334; cv=none; b=BR2FLiCUcyqZhoHam7IcE3hvoZA2pX6gCaUkTDOpe/a2bMWRXErNKY/xzW5KuJPrZQEi5IMbOz+4Dbi1zxZYithaH5GZ0iaOjQ0nFsSxo1VgYFgAy3czXtqMeNcThf5s9W02UTfinEz7OQhwsRzU9yQqNcQMPtDYNLcz4l1RanA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775286334; c=relaxed/simple;
	bh=RWp1laMVu5AIEXj02O8ZIdf8gmPy1bw9d9P6JrYw2yE=;
	h=To:Subject:From:Message-Id:Date; b=r9ygxrNjk78OfhVB4IxzL6J3MXBAeU8zeAEXfDRz5JNsWvwCHL79pR8P70ZYazcXy4Mxc6qZOIuUh4d51EClIPf2+UI4kaOIR9d+nCrgu0gGHlUbnL0Y/6r/y9zFBiSMVf4UfxlBXKWMs8lG5qRkxew2BzzxVVlhgfK8RJBa+yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMn/xnNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMn/xnNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C184BC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775286333;
	bh=RWp1laMVu5AIEXj02O8ZIdf8gmPy1bw9d9P6JrYw2yE=;
	h=To:Subject:From:Date:From;
	b=TMn/xnNnUTZP3S4nhQEJr3B51/fBfFYow6Kw0cDkOidSkvr5VpSsBb4SObeQLxU3L
	 LIEphA4sBbaqklnmDHYBPc//cbS3vuiwv+ha2zVfEY0D532zagLZH7TAnjMdNqNT9+
	 Zz4g1jF4KytZ+aY43xq9skLLgmzWmgHNO9QYJ6FZsjTOnxkqMh+x5Xfqt6piCRB0/B
	 54vS1o0TagDJdG2RHA49LUATtcBatOTKtJF9Qy+RynnVcIs274mZmHVx2DwkmtFaWt
	 EosKPUZbqb83GSDiciVw4hOEuFiq9j4/jovcnQEUE8r+Ln3BXBglbsfRJdesvGbcC6
	 A41fDGj4ZVD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1625E88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528633369.8416.1038247335093833189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3166a4f9b38552d1180135f639a3a2f7b528f11abb049f78b89900ad6cef7c4f
Date: Sat, 04 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775286333
