Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5891F4626
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749885595; cv=none; b=urV3zzzZNfgkxILfQ2MGkg2V4gGFDT+MANACQN+p3mXf7uRqWU986PFmxzC8oUWFuPb1cIBKYAU+qG1ICO+zCAt4eNct2i1fC8KlP1k1BL+VUjDRDnEot4U7l/iTwWaNTZhdADL/UBC7srliDMA5zgPKYQ2PyjxnuaH1R8PFSZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749885595; c=relaxed/simple;
	bh=20Wy82lPrlGeWTIHT+2jjmbt6R7NAPgTrWWqaF0y4Mg=;
	h=To:Subject:From:Message-Id:Date; b=qe0fuRUWMbrtDZYj1JxggW9z1lJZ71zYdkmnGshJGAfPOqk/4rQAmz0/XP76PIYrJhQGgcVqiIZBKhOmajk4illwEK1aonADQaFFNoTxU7yjnCGFtIBbKA2bhMz5qo835QzptW16uvOXYxeBzzuLRtvmUfPbmjv9WwVQc7fHj7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUxU5lWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUxU5lWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5959C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749885593;
	bh=20Wy82lPrlGeWTIHT+2jjmbt6R7NAPgTrWWqaF0y4Mg=;
	h=To:Subject:From:Date:From;
	b=qUxU5lWmoRS8G8NKJjWWGyXyitKOTETv0byVWp24BqUoNjP96QrJPcDC9FNfXx9A5
	 0J7fFj/ik5UWTha2qiUY07xLUaCQomPQBA6RdPNVAQELG/U3gpuuIFp3VS3cgLt71V
	 DO7mQWfSbs1XQQjXXeKgodppD3mprxRSOyf7ItvaaDIc+3vyMfiC0Xr2iXONbpa5PM
	 rOQsybMKtY04KjHDC20SnoZ5NfviiJtSGMIrpTNmzCGgEUXRBRavCiDIRi9h31obf7
	 38wGYDoVChrU8/J79oowoGO5gOXWssI/TF5e2+VSaIFXYOlNCbmgeEoLL90z/93G57
	 q5T9p54sfSH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CCC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988559357.4760.13869160492248267480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6920e20407995a3bf39928457ac668da4438a912c901413b5c660eac900f2ba8
Date: Sat, 14 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749885593
