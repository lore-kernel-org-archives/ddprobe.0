Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E1C3085DF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750291194; cv=none; b=Ap4aXKHHmjYebiGpt4sUwxHoMn7K7m4/VswThmpY7Xqq+RvvmeOlG4Tl4nG4C0Rpd6f5v7xQJZmap990drUJ8fDlBQ0w7OiS6yBP4biXUXzh/QM5KnqiSf9eNArLwGSUGzZvt7JACYLBtU7UyOTrPUEim3P6F3HlygvKum4MEeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750291194; c=relaxed/simple;
	bh=HqEmJdL8lPjmS/MsWPmfLuhWrpUd9fNkVjS8sEABDFg=;
	h=To:Subject:From:Message-Id:Date; b=gHYM50E0FPkbH2hc/t97z67UPoHP2ROcWPrJgSi5P4bzPWSZZai2plUtgJgQ8qJnQnIJJyE7Fa2x3+Y2oM4dOb74PYZ19A31qxJCgPEGaGFmi5ghkdFdMoGwokzhveoCB6IAIUxXqQ48zxNiXjUaMHb9oGnUCdEDy8nzeHzH2no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+7SwoRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+7SwoRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E763C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750291193;
	bh=HqEmJdL8lPjmS/MsWPmfLuhWrpUd9fNkVjS8sEABDFg=;
	h=To:Subject:From:Date:From;
	b=c+7SwoReBcMttap6AfdTx6b2x7OjGhdtV9ifFPloc5IptSGbiykvA0qFKD47UdBm+
	 xHo0VclJ4Gs61CBAG9fqtI+F4EJr+/Dimy7E3aCfb09uycIvV1SBI/ogmJS7PrIZb0
	 /3mWk6j+lcWTUUpHeq25+/XqTLziDw0BQ+vt4yqnX6uC5rVgJzvZS1o7WLoKWQJv5l
	 iQjV9fEJI/5PprwsDO8kpUElDDqgPIzERXsRWMO+Txju9qFVNknxbiSe6YQ1BZGNTn
	 XgjUxP3XJa29tR4EFeBQ2lM1GoYiDMktp9xJ6K4dgydRORBeUYm7bPhtMJOZO3CfN/
	 sT5Z6nB6uz7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2EAC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029119357.7985.10501262572712335497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c11a5a6fd8cff369a7bab04f02889676e76c5383a52855c3bc85500795bad7
Date: Wed, 18 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750291193
