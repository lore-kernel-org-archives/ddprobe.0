Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AAD2E8B6C
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762168794; cv=none; b=QafyGwbs5X1IDnYAtYnMh6JN1f1mYqGgV+7s8BdkVd1l6WgEw9X/rMhqrT9zaRBaMOuK40sX+zqA9EPFeqt3IHYKl9j0oBhT7t1xyN7m+b9e5FEkkLrdv5V+MDEfs1kxf6a9UavM0+hhQ9RsIovskEV7IrY+nXxUg+Yi5LIrFJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762168794; c=relaxed/simple;
	bh=XsXUvbsrFfezTMLIZQtw4VXRfTpIYaakpTpkvaRkjxQ=;
	h=To:Subject:From:Message-Id:Date; b=G/Nu4NYL54ghPGVIWcjM2FO8FJyKQYeC/4HvXluw1MNkVPhD5o9tqV3bVXc+soNHaA4ea6OKKG2XZVusgW7jIKhPzncWwSwr6g/H1AUfQaYW6GXDT5/RIJ0AJwEx/Vi3W/7QXexYUmIrox/0nv24hClVSif1Dtk0La8jnivV3zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQe8mMGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQe8mMGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A268BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762168793;
	bh=XsXUvbsrFfezTMLIZQtw4VXRfTpIYaakpTpkvaRkjxQ=;
	h=To:Subject:From:Date:From;
	b=gQe8mMGuqrXxSZPIQIkzc7l8xQJf2FQD/wNs2sKCuX+dZZ/SQg+2yOZjekeSbWOoE
	 8un+b8p+7H8Da+s6TZBOZlKqBWazpJcJQVMrRB+zLCI5Y/L7EF8/aU5s4YYIT1pAQn
	 dbJhaLQQEMbqVCnAWSkJFPY9REsyxlZwNfPWqnCq6CkPSAMhzE+Eyd1QD5Io3l2nP7
	 XOaV7cXxInOV6MCYqVVCgpOP7AhbPuU30t0/koBy4Tr9Ez62+vLoPBBtD8iSfXyPoQ
	 8U5UgloUanr8aHssHZEBSEaf6yDxjufiTDkG5bwffZlH6jV0bWRUEqb+MebdmHumM6
	 ixkq8nacetcdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90474CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216879358.14458.4242507616970060530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a226697578fd691a65764cacca11019ad437658c113400b7ef2e79299fb0d82d
Date: Mon, 03 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762168793
