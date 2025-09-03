Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1072EB849
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756922395; cv=none; b=cppnJQil19mCtleautAZko7NcnYjgK224dBM38EZppQoEcZMbokheJiyxVC3yTfTANoXhCPV/B7JLVKZDN+zykD7w4PIavudPfsHfpnB+iTgV4Ul7sT5b8jErZCszM+LNTeKWUHRGQGQm/WaB6SuhybDP19nK+ZP9eiTHwEVKC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756922395; c=relaxed/simple;
	bh=8d7Iyy28lQIrI74oBejAJLd123BtR81DX/FAwYIHlUI=;
	h=To:Subject:From:Message-Id:Date; b=D6KtSOdkkUymdhXwrPowddyIU2s1th/U1B/lrAo/qr5aXLlgZM7LGPNiA5UxxwbWD0kdhXknkaM0ThoanVleGvZSfwRd/zKW+dCAtS1+e8Vgsyk3QIjbRqdrCp48EUOIk6uO/VwFn2tTLFLOHkS4j+vva9tJ1rQUMjMdNPySnuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ue6PWXxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ue6PWXxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756922393;
	bh=8d7Iyy28lQIrI74oBejAJLd123BtR81DX/FAwYIHlUI=;
	h=To:Subject:From:Date:From;
	b=Ue6PWXxKMOIBExQN7hqBOs8AgISzDIKjoNIS8gbWQ8yJfZ+oWrRytTEOF/YCJAWTo
	 M9VyDMCX/ST3ELZyfoY2JidnEpNUtuSAT/vQo0HRB16iRDxn1DCvFqccmnU8ZzrKSJ
	 BPNV8aHmRUkN5is4f/pT7ZVRJzJ8c+rrjD2Sg8gCyeLsiSWDQhLUk/C1wOo8dT/oWw
	 sZN/lSVyXpjhPJx5ZoglyTagPm+Fm55yhncYXfAMYR/qy6GHh1HKFb7FkXJw54lJNQ
	 fPW+j2Rv2CKd3Ke7b9FTxUWlpAnaC7yL9/GyqUJZHLB4/38OFWypUOqshpakrciCS/
	 8G3BVIMhcZ59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F291CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692239357.7788.2322278932159029386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2461c5df1ae66c40ebfd93a3aafaca92a6ff747d34052b3da9372a14669c788c
Date: Wed, 03 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756922393
