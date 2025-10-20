Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403DEB652
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760920794; cv=none; b=UCDuRO43+9HGG2aFZrFk3srPrlx6+03SjnvPXNUt7yT8A6HOdJvP0NQcLaIDTcezVA7SOEhZ7r/kO8mixyYGkCprOnmfV4YlWZbDMUue+Eq9CXWU95P9Ya0YYfkpKlaC3KfLp8w4JMPtBcMIF2NEwM+RDn0pSM3fKeEoTLV1A4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760920794; c=relaxed/simple;
	bh=7fDxJB8x+TSD1BtUzMHiW85568zwspBeY/+Vxr66HnY=;
	h=To:Subject:From:Message-Id:Date; b=WX46uYqiMqZKVnRc9qIYlC4G1TdPDsdc2gkcaDNUo8MLCNwoOmEnI5KmOE5iPiN3Gb8i4bJdkb2gvj3bQU/B5ksx+OSazpJ6GzkIPQUZEQpAgu+PZs9pLG6assCCVxw9TOMkV/iZtHUXTlU6RggfBS0X+iecrW6cxniFhWRv7Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGdl6Xep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGdl6Xep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760920793;
	bh=7fDxJB8x+TSD1BtUzMHiW85568zwspBeY/+Vxr66HnY=;
	h=To:Subject:From:Date:From;
	b=DGdl6XepxM8V+CWdxcrCF2JmICDw9yA3B75F9m8GT/KcEHssTmZUBheW5QNm8jVsO
	 mKPQDFeoI67jfuP0MFqJAvDBaCZHD+CctuR6dWwQK7ZfMTuhTYtqqt2WqwfGQ5ymRb
	 WYcIKPG/+G920iR6+4LU5zHMXVm2dDcxJobaBArs8z4uPEXr52nYApjNd6KtlwrZ73
	 98MZB3OWnkeo/RBsE6m9CwFFOreDrfFefINWU6abrY9YUtGe16sRlSPGt806s+OkaP
	 gPXmc8R4+9XU69dQGxQnNFb4xz4eh7bOhVAsjGT811Ijs040boTjRrKbVx4FnFvloA
	 6rn9roWuAKt9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95423CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092079360.30186.5047186609475895503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98de7e2884ba4ea60a4e65e0bf03c44719d09f57aacdc42fdeaa3cfefc88cc7d
Date: Mon, 20 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760920793
