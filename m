Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C540363098
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773402894; cv=none; b=ua5aP4yhSi41Di3Wj4/vrCVSc2XaMyau4dILdSrJTCvAdmwf/QYCC65h9fXcbzNI/jU04QAmGKY2P6sSUY0HmMmaZQm+oFonuSw1fTR8yF5fk4kZExiHqCF7I22Pa52i+0gsmyAMwQ1LH8N73hSPGieJ5qSesaQ5bzscsZyhcuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773402894; c=relaxed/simple;
	bh=RCG5210iD4rnZm5rg1mPlNwCWGX3PCIme11ofJO6A9Y=;
	h=To:Subject:From:Message-Id:Date; b=HTqHxYdxCGGK42Ygst8TW6l40MzsQnjPordzsAWYZVAzvgV2pPsKYl8u0gpg+eebQAZI4O6VAvqaoCX16kj2LD/dvlvSwYQcp0PuyrDKtUaVWCYatbANzO/w8TCa0TvcIvsa4DDJUpn4RPbDMgSNYCaBOHcg/4sdCMe9DITGNoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqDwl/xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqDwl/xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A722DC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773402893;
	bh=RCG5210iD4rnZm5rg1mPlNwCWGX3PCIme11ofJO6A9Y=;
	h=To:Subject:From:Date:From;
	b=XqDwl/xc97vTBeaxab/jGiBBDIHlgBV0YjtPpU2zxXFhu7SgHcZ5acLUZr2wOvrzr
	 g1rgk1mvx8pdCHkoJOWijbEy+GSV9LeiQ6Nm0mWUbxyFtdPCdvEppQyOmnvpdpksub
	 Qwi+DmheZZ7X+9fcdwjtCWJVOGMuPZboYonn/QMo6AGZNLQjpIOi7aEDeK8RSmeXhA
	 pPZtSFL7dCQiJ0fd4OhQCby4cq5NupLTEHrHaGap6z/bPRdt7KG0OlqH5L31bIFFrH
	 qdbb3ajSZQWxwXi1kkAqCHrwxXxcuujwlPIeVo2XwP8njNN+mI/syYiZjdliiuzj0z
	 jrMYv6WO12smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C4105F78C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340289357.7652.8395160703765602836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacddc450155dd6c95c6dbf063252acfc856bf60789ae092e476412ad86fd5b9
Date: Fri, 13 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773402893
