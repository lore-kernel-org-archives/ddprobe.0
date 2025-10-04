Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD601E5B7A
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759559994; cv=none; b=tTQV8kpIni+3tuw/anUoaWqo+yFRY1DGT+WQfSIRN5gzM+upZL4D1XJymJyigDTRccZWt8vyBl5Tmp2gGNw2H/DddJ2p7itjjHqHPY56PTnmMHznykfKiKsdw9KoawTgr5DhJuEaHyQWQfgM3y4jufBNy3G7zFm2sBAVWRH/pEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759559994; c=relaxed/simple;
	bh=Fr87yMtMdgZAU3e4R8fc0iQE/U48pIDuZPRSHL8hDEw=;
	h=To:Subject:From:Message-Id:Date; b=rwuTyqT8zewNDbhLx15/qLrZOfjF+SGsp6mNutvbQA1cX9TAhzkMOkl0ek0ayu7dVngN0Zd/No2D6iTWMySVt8ZcVPnE85LjEY71jkINksKkjdg9p7vMEx5pFTAXdcavyOZmUldCLMB6kqwdkcqT41z6TVVpAnLFbhIZoIFzAuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku2JjaSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku2JjaSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2939C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759559993;
	bh=Fr87yMtMdgZAU3e4R8fc0iQE/U48pIDuZPRSHL8hDEw=;
	h=To:Subject:From:Date:From;
	b=ku2JjaSpmR4qItcxG/kF5LRYsIMR7B23uQnQr1S3GXszrQA92FrnnQ3c3XMVnNSnL
	 ZaNfT8gCL/yOxXJOU6a4ktAGnZ7u0J9KcjYphy87NsLaidL8GlTz9I3woMBTQuJQzV
	 mNK08kk9ZtwsGV2X65lnttOZ/K3ZpN0lITWfrG8xmlCh97/ru4+XdlQw4dj/5sDQRi
	 5/Z+6yPnbK3l83yHcNOjQoMfVEWUM9dITJ6yc6+zlouZ00jHvgy5lzQ83vFKp2Hh8z
	 DdY0Y4+cDnee5i7JlGskIXyH2mGsU46ZPc72c+RIsMRfec6nKhxLJWevtm/6iESCq4
	 dVGDfa+bq6TKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F98CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955999358.17243.12293367803995998545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6961459aaf148c9382d92e8481a7f786a66856b59778689adeaeb5e6db2e919
Date: Sat, 04 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759559993
