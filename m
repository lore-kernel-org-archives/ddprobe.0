Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA6A274B39
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784122114; cv=none; b=NjhqzhAgWM9it4uzM+T/rxLzfrTSCe29Dlv52U6BielIHxvjlzWYinp2CKkJOYso3+oJa5TSxBXSobAahrGLHhR3YkKxGtHjQsutdO7fWKhvY/i0Kk9rbcXD9XKweMUW5uhntDBJNMsRq1Z4U0YQw7fwXI/UTiyhwMCBRjpTTRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784122114; c=relaxed/simple;
	bh=JJwo5PAaCf6nfAhlYy2DwovywYFF1p3RhQO/VNh8zkw=;
	h=To:Subject:From:Message-Id:Date; b=SwjbjHEHlGIA14PnjfSL1zNnRdJnbR4EUZS6qEzbc/eix5/Olv6Wi3Fpd6nK2YyXu3wJFNAgmhvffaxT75TeKVRligFDcNEVzdDuwCrljsOF9y4vm3vfU8mM2DG/dMGA2xRAczfr9KHNmlS7kVBpENs8wyMykQzKtVaR26O5t/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAGrrvpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAGrrvpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD563C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784122113;
	bh=JJwo5PAaCf6nfAhlYy2DwovywYFF1p3RhQO/VNh8zkw=;
	h=To:Subject:From:Date:From;
	b=pAGrrvpGqBNCqFXsZ/tdPXF/gWqdi8RCWYgTzE7gLCUBOg0jj4qMlctZY2JcI4tlt
	 wkajdWV1kQciRygDtPORTIVfAkZodCu/tDeGVI/A2q06MzEw9/LaDhMEfcoRYfgW/o
	 vWAi+6hF+8XwqlvTcCEub+M886BfOJzhsfm2pHdpKF6Nfzt9yN6XsjNoRIJ7UG/dAs
	 /gQ6QM0/+VKVBg5ho4yiAaGn1i69A6eI+stiGg2fmiJCn0By2Az9FHYd7XbSc99f+N
	 SuPxPEFyslPR7AhD2JgvmnlUtOVNof42Xv2iLSOaRnzCo6oSspm3vcUoFL3THW2sAh
	 Mv4L8OC5L0STw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BE5C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412211368.13809.4543165646538361982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9062a15eee8a95ca7b34164f9823ce35bba670b79889f375ec8bb0a94e027f80
Date: Wed, 15 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784122113
