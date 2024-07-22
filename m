Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE09322E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721655954; cv=none; b=lQ+QhtamuZ7mhe5YrKGIKe9PniV2bK6Kd5ytX08pL4RSgsjmzby6maiIcV6uFEQy5AbEBMfUihwQqNwo8w4YWUdqyJTWjtiBSiPKKewl41BnQvqahqHGZmwtlPMgUJ7qLResZL27tRbLuC1iYbvv1/h4l3+6H/PRyGW6i7BmopA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721655954; c=relaxed/simple;
	bh=eXoQkWMNNDhwJO/T3duC/aQ0NO95Hlr1plc1L4PrxbM=;
	h=To:Subject:From:Message-Id:Date; b=IaowK5FafCMY2LE8t1g5yDwgmpm6NjqDtbh2VqwlCB/zq2faWmHLk/ecErq0PsRG+D3zmWg2xI2zq+0eQ7PAGqXcuhvWn3LvOrEzygKPkHzIsdA5Y0Mw6uqeEqTy6OU3GdMMcyar3fWbn7+elKOzzyA2A/cc862T4H+pFh/s6+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iY53xZzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iY53xZzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37C9C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721655953;
	bh=eXoQkWMNNDhwJO/T3duC/aQ0NO95Hlr1plc1L4PrxbM=;
	h=To:Subject:From:Date:From;
	b=iY53xZzqJ02z/g3w2Yq103msMcH6YBRa/+d4v5UAGceOVDC0h8uZpq/4yTmNSuGBg
	 T/UOHtQYqGsjRFVt/C3yiXbUdiLbKuv9fv3tvvoTZGgUI/Yb+uzWVdTYmc08evY1xY
	 XLmK25F8C0iR97pdz688SQNUex4Ujtani5FyuPs5ezopADgx0hetaMkWghafOMLSaG
	 RcqpdJVwAjbAnW8PujY28H503s8MrycTwTgPuUoHUUvKFWG1MrtfT+yAxYklnpmJgO
	 J9XQh2sYbTkDpxTwlfJoNaK6a/zoK8GBy0nRA2+4mOP9vrkn2AifY5bd/d2uwuUkVv
	 aBGBSkKz9orlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556BC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165595359.11912.1747266300167636328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4e5e8e7c01538078266f26556c796a5f64a54da278116ba967f94a98ef5721
Date: Mon, 22 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721655953
