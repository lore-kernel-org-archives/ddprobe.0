Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5CF450FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762592394; cv=none; b=FbcAZhWOMSr9UVFvqfARJOqdPVRmoJ8Z3b+w0QCPEWeVjEnSqE/gGhsrgfmMsklmn/LPqCocEerSSQBorh5382crSrm0CB6+LdGcFd2cv+DDWzrvO7SbgOXTXaC9YWqkq1mztjZJO21o+BxEqtNMFREzy0HM2BwkPvQHWw7GJXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762592394; c=relaxed/simple;
	bh=+VOTPuvh43QHQ9oaFjwacvGsENMQmLTb3vJeAmjaaBE=;
	h=To:Subject:From:Message-Id:Date; b=vCN1WHz4Mnt04pwF483Ktb+Eqf0a5xepI+HXtFjVx4kgvxEOC87DrBfOzIppwDkxV7rFBaBvKYD85Q0BsR/t/l+RptTs0M2A+5zgo8tcvwC5H0QyEEq5leufZkd2ynELvw7OLj2MibRwAxg7/jeOy8Svbbhh/tuzXEHsDuvDajs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doKAZAvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doKAZAvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8D5C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762592393;
	bh=+VOTPuvh43QHQ9oaFjwacvGsENMQmLTb3vJeAmjaaBE=;
	h=To:Subject:From:Date:From;
	b=doKAZAvMK/7U1ovkaFUzU9SubR2ZXBF4Ii2rEw6VN2o1Gqo4FPMSHn1ISIjnJtm/a
	 ywLJrqu+QRorAZ+dG44oQ0eFG/8+0eYvuS1n1Q5BNat2SA0u04rvBAhiWWa0bs71si
	 wN4os5AC1Jk8PskJ9Zd+EH8CExJV2No/SbS9j8sqD5wEWpTeHMhLp9+UB/QYAADvIU
	 ZsB3mkqEu4i2IdmWWa/mqfJR2iOfbDPRL5zDkGT++KS5qeunUYKA83CCtA4r9LGUpX
	 s63/RjF4n8dT+rziwjUEgDvABMrhbySpvA0wogcHUJa6bXBCckZXqq1osIG7sha7SU
	 sMgJzBYaeoutQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94803CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259239358.6303.15042118502338454711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a2f39bcabc8406ee91b660bc599f863a7bf2e2c035c59172fbeeef27ede26e
Date: Sat, 08 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762592393
