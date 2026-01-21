Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAAB217733
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962833; cv=none; b=tiero0VPsorjKYzHAanmF+OE+CznzJdbFrB8vK5IOEPe8j5Ih2jt502JeeRb+1d1BSei0mxi5K2JUKtZxkpbn3JL7vPMFZJcUhBn0RvqXrnKh3eOCvO6ASb25rZvMczrZn9KE55czDzVkiEKiUARHpJFZ8eKKWXrDqJ3JJr4qJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962833; c=relaxed/simple;
	bh=7+GcBWXTnSvE1yGJ3xCIjLI3kJfRn6QGxn16HJBYoNg=;
	h=To:Subject:From:Message-Id:Date; b=SSTDTu9Vcjj4Lg2ifFNnRZtFESEFQJPL/CcPKXFdGSf22Q18vmcggiw7NyiZpuVu0RyWLsqaJZ68zhQIxGjorHF0cju8O/LWtq4boC+gkIaUYFgsKyeDN3MYovAP+1Kzkn9dI+DYUx4DzLiHamh4hpQeDDV6a1rYMysPK6DtzZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk1uyWhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk1uyWhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B444EC19423
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962833;
	bh=7+GcBWXTnSvE1yGJ3xCIjLI3kJfRn6QGxn16HJBYoNg=;
	h=To:Subject:From:Date:From;
	b=Tk1uyWhSeg81YRd1wxt8Um7eKRclDxTKw6y6h5/WiNoEg8N3k/qsa/G25bf8sMBFs
	 XO7eRBH5bKZxk/89FFFhXWM/0n3yMZgN2as3xTT0NBj0zQOZowY42PJjqJ6wNwNkOo
	 ZFB+kDwNWgetBKM7qYtY3j26+m7eK9VRulSlSGirG9+FhIsYVwnMSO9xXYHQSq448v
	 3MPM1htzDzZSl5sPBlRw4y08p5tIaq+xTxGYbHgL6FwHqw/12JZ9u6X4X0m05svQCc
	 XWWXSZTMBdedb9+x4wPnXdGN4dslVH+9YYg5SzrlgKSuxhR2zNckBZMqXDx7Pd4Ihc
	 NLuhtpg/Csh5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09C1D262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896283360.2258.12099348083606899869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee74098e9bbfaa6b86725e218c0608867ee9483e1a62e9f5d7b03be8c9145258
Date: Wed, 21 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768962833
