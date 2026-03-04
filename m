Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF2817A31C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772585094; cv=none; b=X3p4HxETCAPgpowpsXWr+t692NFNTy1oPStO8+WANrFxbiSekA6PZjMGsHs6QN3IBzNMZC7E3WT945hye4N0ZSEgQaJHgIG0VjGlWTCi8RNu38zuywhs5s90UsLVeYWeyH3rEkvjfzfA9PGgilZKddfs/QRSb9Ud7K4KLhsM1fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772585094; c=relaxed/simple;
	bh=yXELUsjMAb6ry61oXsJOmWKzYducrXBVA7DUEGhDYEo=;
	h=To:Subject:From:Message-Id:Date; b=YZSHnNFb8iTkX9wjAq+vLPt3NDMcpyyuZjo4KTPu7y/Si3rgvffL/3IHNe/bic2Xl5J2cbGzI2g2fIqUft70soSL9C8X97BMEsxWlOULBW6ZSrSAiYeH+OaMWsAVJtfb94uALWUPPVCyinqwkmRgW7zjwo+x3lbLgwfImStBOAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvcSAoNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvcSAoNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74B9C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772585093;
	bh=yXELUsjMAb6ry61oXsJOmWKzYducrXBVA7DUEGhDYEo=;
	h=To:Subject:From:Date:From;
	b=KvcSAoNctKqZpKq4eiKjQfEUqx4ZuYJYsPm4KQVPxJdUbqPYZ7vDMeSQtpLuY4NkF
	 KM3AIvRboh6grn7r7nEMKg/VptorfTrHMGdJ1N/vedb/7xVN2ti+h2VCq8GDLN3VIQ
	 wMEogc025VWXINLFwWULwSUpcTOAgnvrWTRYA5FX0WCpuxKXa2ACaZa9rys7Y6x+Yq
	 0Au1r+6VKck2xdUhOhsK9Rp7boU4BRyIERDto4wRTr0ki55ifbf0ICPjsCgUG0LQM+
	 YWV9Z24JEkAgvvSkonrOVX1ckWT0UA9G5n7oGjadk9F0QccAK+m3z6T7QIbxDPIgkX
	 y1OHxEOJH3Z1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C5EDEBF9
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258509359.18555.4418341675676589825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c257365e411fee88fd5623ac87d434c2eb0bcea41a268ba2ca3e60bf0db3931
Date: Wed, 04 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772585093
