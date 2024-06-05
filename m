Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE85200CD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717579583; cv=none; b=Nv5+LgsRpwVhIlwz4l2/zxprJeLPTnXAgAYzoW606fNfcIWuM8ReElDR3w8sRnVoVDgTMzgn6dmY+jiopgtjpBt8t+LxSo/8lz6z9YcJVCN5FqVTW673+0+op371URG9zMAHIlpThKMQLclLciycVypx+1AD/3V8LeBjkaSOW84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717579583; c=relaxed/simple;
	bh=EH4JE2l0YMFihDdLmbJ4isuEHS57r8Q3cHXPkMi8UVo=;
	h=To:Subject:From:Message-Id:Date; b=qKSEeOo+AbzKsTgTCNyEhkWqP0fE8BB6uJeS0BngtA93OZ26fUbAnZGRgqyjrpQj8B198JRN/4ZQaILlBRuMrxpNnYxj3vduYK2pU8ROzMSFVUh3LYzCrojZgKEu7qrVWtHX58ir6SYLncp4ik3mVJXOh+/A1QDNyXddyaYj5xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTE4GxDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTE4GxDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC63C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717579582;
	bh=EH4JE2l0YMFihDdLmbJ4isuEHS57r8Q3cHXPkMi8UVo=;
	h=To:Subject:From:Date:From;
	b=lTE4GxDlh3e5YVIEruc2Db97+y4y59DRUX/wDpDd5+0aLLjdCpkXJb/WPLzpeuY9C
	 r/u/wD0BDoeN+aCc6DygU37k2SfnQAiWJZ3e6dxKy48BHQwY8whTzFQ87s1ybHKe8R
	 qBjsPJ6Q2RSUCsCAiiiT/QuTrx9HbkeXGAydTHqAoaeDxXdm5e2WnxdRFGVv7hiSW3
	 UXbc5I6WGNAZkIEd5gyiszuwuRBRPSEY63UXVfRfjMyfHKO1Yp7zt2fVLiLtqrDV8o
	 ezG6rZtEw+F70MY6lj7kDWOaWd0RgbxKTEPRwvDpGDTdef4QYfh1Fu+4iZfsVUxUzE
	 JtyMhyWY+VOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1199C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757958278.13619.1123589886462369498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f74de6af29a859743e349f56fe11b22ece09f3f8f171639f9d7b9fa1f870fbd
Date: Wed, 05 Jun 2024 09:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717579582
