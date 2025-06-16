Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CD61C5F14
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750112994; cv=none; b=q3M/VZEF9MKi/8bFEpK94miVqmX8PAR8ZzyGCsIRVU/pMt/MjwI1vcnJ7zLzO7I+mLfDPW9kH4ZSMuYVST7ElMxMExXZQ6Osj9lEYVhV0v+cuJ799TCTDNfegxzcgWjwE7/Fw5xG3QOqbuS10Em28qtVBYx7VxiRvJwwvtudO68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750112994; c=relaxed/simple;
	bh=6BXWH5PJ8SQPucxqT31Ert7HJCAYjNT7orPgYDgnWlc=;
	h=To:Subject:From:Message-Id:Date; b=hORLjcKszJBzaUbt7ovT8H3eBc/7qCQGv3UtqovaydyQqjk9kYycFIfHS1CKHYTOCgCEbvMmaSBm0UqzTLR+Uh3gu7lRu4hYq2DHLVZAp/4uY3G/xFmVC7UBaMISIvMA6Xjtt3XonAjtkFCYDRFF3VbU4NNqjHwzeY1QyE2eiRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZtHpm0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZtHpm0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A858DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750112993;
	bh=6BXWH5PJ8SQPucxqT31Ert7HJCAYjNT7orPgYDgnWlc=;
	h=To:Subject:From:Date:From;
	b=cZtHpm0us8imrBEZU8QSqymNhwHyDpQATmyN+nHrsKdnLcc76k1OhQ1fXb8GladQj
	 XLdQCGUn8MnLkmymWoq+nRCMvtirQ6p5XNBlhrtg6L0tYbq5vTT/LA4xtyexDoGEZv
	 8/W7aGXGYAfyKfSETQtWFEd/82wthrDBrS45VAp7x+hMbmcWouMEw/nH6CBQSd2OyB
	 zFSjZhyZY5Ukl8kRnOoNDERl5hvDIW08QdYvt18CxnNzHZ7Wx7zcxooQcwmI898SKX
	 3z+XEARtBVB1/idkckc1E2U37QHVNwcfj3xO4LdVpMScV35RrMtwevHde5WJBgPIaz
	 MAy5YH+i56n+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF65C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011299358.14469.10426402955240600511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148ad08937d56d24523188149e7017960fbd7e74b9ec121f3cc137a7cef90925
Date: Mon, 16 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750112993
