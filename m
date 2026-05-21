Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4211F1A6815
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779372034; cv=none; b=UTLpmT7rGKknM8tB65+/iXIlTQlUXLTJAEjCbYRCLtb3jSTSaYsI7IcSRHeDvRZMOc1Ldud3odrxqKbYXSqLTOVYJqZlnvueN3ZGroKHLqA+YTiPdjX3C4XOOHro+7szW6S8JJzE3oF9mkYM2NJMAiuPfl0yPwC6oZ35VRLULUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779372034; c=relaxed/simple;
	bh=Z5Qvc4tRLrNlGXGa8RjfYddnN0eR8hmUi5AUfR11Lto=;
	h=To:Subject:From:Message-Id:Date; b=IYRwcIt8rdbTUk83bgb7fNgHRqzMui8wH8M4Mu7URpskajMM/vuHyPyckiZoY9BOtlY5VDVJJsTJZ8kHTijaI/uedM89cyCaN+A9PM8wyYA5iZ8X5ngcNDJI8qLcU7Oa/eyxmmtLwd4S7ddzgwTxAqmK8WLEEuCzW+xNBS+exW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm+cREuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm+cREuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBECCC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779372033;
	bh=Z5Qvc4tRLrNlGXGa8RjfYddnN0eR8hmUi5AUfR11Lto=;
	h=To:Subject:From:Date:From;
	b=hm+cREuSJQMY/h0R2Xe2sXZMLHyguVBdW1HdpHEp7X6ofUxeKVhmI3CMv2G9hVd2u
	 +onFKSO52HslYQYrGI0a/PvxoBLPlYjnxBIzQzLG/qRi2wcg/ktLT5lB8+uBl4Au0N
	 LX5sJFZOyH9Fm8HgxC302cC0ugFpWt0LSiGQS8TKZkdsA20flbgIFJQ+pN8iw2sRkI
	 Fk49ceSMqZYh4uCH6jSiKuVyyqcC/KGWTDFg8iAd2nHtKSYXwx4GgOOdH5GWZD0tlK
	 EMOnTWVtmrPWvpSYfrG+ElJKzctdhW9fPWgI9+1r/lZKa1s/Qzdf0ivSPw9Ti1bKuY
	 q4XUUsaECiBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E2CCD5BB1
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937203374.28263.17433024463200045536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09dcae39b4214caee8a79a4b952afbffc692bc6788d6040fa6066c31773d4aa9
Date: Thu, 21 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779372033
