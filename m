Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD41222560
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759207194; cv=none; b=sbRW9xQG3qJKovmLz8iG7EdnTMgeN9NJXN5LPlf0e/d30mezeX16xajERQsszxo1nv+WsujIlsa+BU1y+KKLIzp3kxhRb1Le+qhpDGAGz67iuHaqXHecNsH69RP4bdObVbmsQbq6u3QwN5tgsTm67N2KgRTeJgm7Xh+FrUF7Z2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759207194; c=relaxed/simple;
	bh=XGhsms+i7Csj/+9BHh/vgfuAnMcfKJXV0I/Twok2pHE=;
	h=To:Subject:From:Message-Id:Date; b=slLkVFD2qdu9Cx75JzEIemhtbW+TBRuIeRzfit9M0pcMQQ39e/1FSfv+Z+UM7jbq9X9EKeWuz4JOX7E76x8U3Qvc7wa8Cl5GXREsmrT0M9OKFdsH2rQapyFZzLnYsf8X3l1moGNyG2CRoAaJcTnNkuW/OfqzB7GOOBlXUsdxiGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhShPHoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhShPHoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A988AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759207193;
	bh=XGhsms+i7Csj/+9BHh/vgfuAnMcfKJXV0I/Twok2pHE=;
	h=To:Subject:From:Date:From;
	b=rhShPHoThTPtDASEfwPOuMs5Kexiq/7ecqOZdYLfIZDimVgCRD+OyoXhWD0z8x5YK
	 VfiSZwYcmkbpELSAN5ItTlsdQh7ivP0GTY1yzPnJ+7M/f4fgZyQ+1SBArfxptHdVNh
	 ie/qqwKgAvRuSTl7YfdiAq83gFvaJYw2j7BLiu+iAx6Pn+C28Pt9J+XEYNSXTNn85B
	 FRe0gqTGGz5UfxBY1ijIheZku1hoNMrJ+Y1nGh6eUJObD/i1r8RbHz8FY7r2mD72J+
	 b/zDohfBpK15+pbjGPtRtNdZT8Fcv/28Td7IbYpEBPOjwTbUkv/XU2fXfaYBMaJtDk
	 Vdr4NzVvZn0dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A4CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920719360.5076.5184677461238677802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026708e97e20777248af86574d8a2f52a9bc6c9d5e488aec5aaece0877b41ee6
Date: Tue, 30 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759207193
