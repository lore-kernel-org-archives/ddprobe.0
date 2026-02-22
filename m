Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB17CA6F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771774494; cv=none; b=oPINZDY5nxJoWvmkSuvTAPEEV6k+Y8umMoVyyTh1qrHzQL4QB1ft29MQhDJunAoEkVdA67oJ1XHzX8k4AvIUmy6WRh3CGLwlUAoMa2a7uR0MfPpym/hmCTaNr2EMgF0kzUmLEBBoyc6bMmH/2C4ThLipQRZhQVbH5ms3+O39Ziw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771774494; c=relaxed/simple;
	bh=l+Td5BQcH0Q3kxZA7Tu/+YKctqvzAwKcaSLnZyR3MOc=;
	h=To:Subject:From:Message-Id:Date; b=DNcETZ3UQ3nHTAnEQmuBZT+gAjz3KeexDgzAvqschXARnT1CWVwLuG+HrdfcwYEZH/PG+m6mpVnA0CjwgaT8AeXd6pPnrMipc27m9r85wEEBjdHyEc6vwJEdgDcrgdaJrhtdV6R8YFIV0ZOlpoCMc4B6bbCwWEjGb5B61OdGewc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jb+KVJI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jb+KVJI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A36C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771774493;
	bh=l+Td5BQcH0Q3kxZA7Tu/+YKctqvzAwKcaSLnZyR3MOc=;
	h=To:Subject:From:Date:From;
	b=Jb+KVJI64oMlDZepJ8STXlhi6Ll/u8BFnop0F/09gGa2fveyetXMR5IONBo4bs+0J
	 rJDr76bJ2CErV6f7aDoTPbVd4QPkrO4eA7A3QO65np8ejxp5s8AHMNM9kbgqljFUIr
	 OrgGeyrCa/BVKQDZARp9SQsEml6ZP6r2dO40o3PjrlfAU9/SE38SOPBK8NyqXLXVXb
	 0QfbDW4kvTFJBB/DWbOdZ+TrPpfDrX//n2i/PTDkZsBEdfOQp8TdwpBzyph4N/YQ/K
	 g8gh69S511ZSohcp/1oKBpanQxWwzvkq6fcLKVvvxRFXfDz5/ZWKnntVa5SqX5Od+m
	 CEOMBI9JYC+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620CC61DF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177449358.23798.4945525049224841370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c59f9f06756686b4f632de1839b6924dd5e0753238c49c446c25090e8fc8055
Date: Sun, 22 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771774493
