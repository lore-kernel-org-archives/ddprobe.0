Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F40546B91
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715437943; cv=none; b=CPcO1BUyIr6Arqoe94+dhKBP9HL5yZGTR5uZF1AKcM20i9o43cazRki01hsh//HnFPJxOAXdhEhLAxALokUspC+7n/TqVv8UmxYMUjiiyQHWgM+/5vFVKNBno63+TfpZkVGE/0jSh3vFGFY6OyFmNH12GxIxyfXaZ6k3s/3BNV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715437943; c=relaxed/simple;
	bh=t+67lHDowoajFjLpItUcAMGwwXjohQSDHVQ36NfNclY=;
	h=To:Subject:From:Message-Id:Date; b=Lv6Zg0ZqcI4zXabR44PDgdrTVIZsu6aXfx8QcduznFjVLO01iM0mdTjVYjWmF6nkMFEZTlX39uaagE5hFdN9bL6E4KOAaxaNNlN4PyixdI6Sq6ODNmE+IscoQ3pPRK9eArWW5EUso3XMxIBU42Hfm3bsXbybZJYqH7snXCYhqyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slvq7DNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slvq7DNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F37AC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715437943;
	bh=t+67lHDowoajFjLpItUcAMGwwXjohQSDHVQ36NfNclY=;
	h=To:Subject:From:Date:From;
	b=slvq7DNSPKn+NtiMlKjT1Dd29NlUDlsBQurrFhABEHLDfbfqv0yxzIWD31OKtqBoR
	 18N3D2UHKyxo2IDADKG1+CCKDlhOXD5LI/qq7Seo5KcOeqvaAjGRK6SJ46f4HyOxKN
	 BRVLtTdk0eM5cwZP7HTWDGmoZAmjbYTmTxIGOn4nX0N7tLmS2TIVMpjXec1G3Omm9z
	 QVa+v6JrOuCBfrG98NA/p3L+zo/4ukTWEydC/cYd19I6fB/ixszoKfucH+G810JZU3
	 1GfQE4rKj71yR4p6cbp006oVBdG1xJUvJkr6DIm29D3TSwgSc7LP4TRigrTQdSFDUH
	 lTPdcE5xd8b0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68A5C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543794284.32484.15068108733687212223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f43317baf5a54f8a636c0e0fbe4464c46833381d0eb9ed1a68a77b83f97c43d
Date: Sat, 11 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715437942
