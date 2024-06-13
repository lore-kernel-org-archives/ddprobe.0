Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE2E145B03
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718285903; cv=none; b=nnh229WWXmCQa+VQOr7JGNmjq9ks45+SlrJ7lOT+5eXcpPx+O4N7tak+FXC5oX4FN8Mte0uiJi1nsQzsIBfq+17/XQLZ7uoj/UEarSvCtf49u/EQ/Ddn9uEt+Tmp3BjU2wQ5BMnH2f4h4pVuZF05fb/TV2fMw9pJwTFbfJUvMYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718285903; c=relaxed/simple;
	bh=QrzffzsMCnBVEK1jAqXV/srmkBetTfvKK7vtwBHZcUI=;
	h=To:Subject:From:Message-Id:Date; b=TIiIHqzVn0BVfpQBHP4l5k7b0QCW/oqnfU2oAZyZeI/6wwEEleJanPzVVbh5xdgglJcX7I1yFAEkSvkjUL9UVJgt1jHejhEL6mUWY89XhKIoxKQ9gZJipki2XthLmxLURuac5m4ajtE3troTbOPXP3ro8D9XlnBU5D3zJIoZHSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jABt4+pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jABt4+pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6F3C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718285903;
	bh=QrzffzsMCnBVEK1jAqXV/srmkBetTfvKK7vtwBHZcUI=;
	h=To:Subject:From:Date:From;
	b=jABt4+ppsM6VxuTvSRm8Kk04bxrwEnmSeTUo/hRpmVMooKnk50ZUiJtuIGcGNJiHx
	 DpKkifCJI6ix2B2g+v0ffx0nH1wSMipSxIPif8MYcIexSvpm/SXTRai4OIpeP/Ia+N
	 l50b6JEop9yL+bXY2UEsP4T84XbbnarC2wPA2Ho5ld8TPTVpBY3UVn2sSf+g2N/wOH
	 qyMXCttFyHLVOX5oHO439hIE0IEUwJiwsgkrfXx0ybDJDDbGdP45kMe2YQXpyK8DML
	 hBd6B0qRRuNnNKXOP4BKmfaupZhNO7La+RhUFzKkNxILncgP8VbE3fOnUuRCRT0jBY
	 zKQbZIlnrkeVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D58AAC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828590285.11847.12812112719629930046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb72e141f274758c72ecbbcd4893efad746f4f6f82de1d31066d6cb77e791fa9
Date: Thu, 13 Jun 2024 13:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718285902
