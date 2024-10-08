Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA5C1494CD
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728367553; cv=none; b=HHOpIhf7XHn3fkWPSjWShVf+9M6MaoymFaHyoTja13JNsw0wWLgJeaXeqkUrGnQLxIUNNqEkp+6wPPj6XxrJtOPEu27+YaNnwCIkPliPBR+JaNrO/abf+Az6/7lI6JXAUVTXyPI39CsfGjLNRPBSgNeF2ijQ/ePHrXi5aL3N3HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728367553; c=relaxed/simple;
	bh=U7Yygp54FpLGKmrlJpWBYmKAhUK++u4d0+2wQNTsI2o=;
	h=To:Subject:From:Message-Id:Date; b=dTVptNzVcNIgsAgJIkCpy25FIwxkE0ZgQ+XZT9L1WHymSJGLQdXM3tw98dNZy1c00No5dB/pdcjbC7C6klZeAkXgrksIsEM5sbwV5m4UwLtcn8QkQqLrvo3RfNqNST7xuY82vh2ZjLj5uQ2kBBpXDnN5sPYGSoYZA6Zuo72Ryx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCRSeHem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCRSeHem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1188C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728367553;
	bh=U7Yygp54FpLGKmrlJpWBYmKAhUK++u4d0+2wQNTsI2o=;
	h=To:Subject:From:Date:From;
	b=lCRSeHemOpKULIq/S2lv3gaT/QJSosUl0uyIEer1rgXd684Gh9YMCE5pKvvQZRWDa
	 b+fjHYMT2a2zfAzPyRzNVHWYPcHcVts/dsBmHpT6oJX2dTfNYncb/9g2OSCGVkx82F
	 /MHGg65z52I+5hBX1RL1JURL6dfP739hZySEzP8EkfLDU4bCeEnxKUaAwjCcni+6GI
	 gakUYol9LkiJdk8qMZsmNbi3WYkQk2LZSH2wJOhzADbDlWOAVgRNdSj6mitlZeNP0O
	 44ugRznbFxDZpcsv4IbcX3ruxfl0wTvs/npbEczJ3JIqVTymC6nQuNFfyG69QrTUQ6
	 EoTOQHimMoxnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CACED26C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836755358.12934.11554141919742516575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e393bca678fb03b0e3523093ae3fc791ef4c853f1b04f24c6c11b069f387ca
Date: Tue, 08 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728367553
