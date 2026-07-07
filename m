Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426131A08AF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783390714; cv=none; b=o1fhBTD6NQcM2mjMIje4eQCs30qnDFfR7BgAp/x5Qru46BjfRP4VuhuL3qofZS6oepoRY8nv1CZGmc1XYE7QczaDU0pNnqIHXl675IGKugOgFjfUOGJKBkVkHqh6ieK7eVhpCP2xrs50Z4QCf1/zowgXGNi+JkGfUCO6ki5QL0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783390714; c=relaxed/simple;
	bh=qB01LwHgMDeRupo0Crg34/PLrCsJ2QuMkp3krF3ncMY=;
	h=To:Subject:From:Message-Id:Date; b=iiG90Qb3G4z8XjwzkKY3Lu1VyUYNQehRBIwWekMRWqLxQlCuMSH5cZT87u7Kr3fyHpo6M9+JejrtnwiuQkRxiPnZ9EeF114hqvPtfm625mTJUzSQz313tcnTqbORjjwBoLZPFn9Rnj4NQgj//kdM6eq+0xDN3+3B9XuWChDpC+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxKzVuR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxKzVuR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783390713;
	bh=qB01LwHgMDeRupo0Crg34/PLrCsJ2QuMkp3krF3ncMY=;
	h=To:Subject:From:Date:From;
	b=cxKzVuR5NgKzlN2DZ4xOc2LGnEQljM++rtkjLtX3E6X+kKwoD8C4s3QMqGOnlU/3E
	 XeY1F1BgrKhAIU0N2tEqfLWWr6SQEgC1VSqz+w7Ad4hfWcfAg0QFXvOWs4+ST8LRDS
	 4i27Lty0ecJ9/RxnrDzqfZa4wbnst58io+eTglZqoL2gwhr/gIiFyr9RjMWlWzoape
	 3GPoW0cJ3/6Re/nlJnwoNprYKyf1/CwptCJegcfg5wmZzoXGdwVLQe4Nc6Q+ctdY+r
	 eGgGbawEK/ZtueJiOZBbnfDWloar1/BFfg89Nmdq+0RqnYbeGG3IomJAPD/LgdXL6d
	 i/bf0tBbHQoaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8FFC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339071370.30285.16920043405583927384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f074f3065ad54c3127dac1dca3fd6c392157093b9180ff892cde3032b380e9
Date: Tue, 07 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783390713
