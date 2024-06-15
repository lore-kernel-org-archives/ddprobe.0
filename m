Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C80E4437
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718494703; cv=none; b=lsU8f+W6QHxar0jaySdC9Cuo/5OIbvFc9Fes+GpxhFwoW2QxhmhB0cijgJQ+oVUHBpqraQXnSBj2yUDF/mMpMmaOAmjkiOkR6/L9/DD344cUr70i34NKI1XymwEkkQu58uY2egmWzBsLO3Z1IRQu06W9Ran/gnDr0bSk8KwjtYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718494703; c=relaxed/simple;
	bh=SrLScdvrZYN19dkE0jJ5vqjY+EadL1YHfaeZV8H1WfM=;
	h=To:Subject:From:Message-Id:Date; b=ARr/ByJjEHPdJ38vehd1vPISXwRlvC0BxWZzi54QU5Y9zRyXhq7WZZpC21bZ3CJ0Xob3RCWdlCBt7SaZwz5qsrY1Gcew6B6k7dN8QMZemW30+7wk0OIM68seUBHNqSgjnlWi+nI3vrwlyH5rSRGtIQG/FL9XfBg5Lg4Ndl984Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF5oDypM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF5oDypM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1D7C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718494703;
	bh=SrLScdvrZYN19dkE0jJ5vqjY+EadL1YHfaeZV8H1WfM=;
	h=To:Subject:From:Date:From;
	b=mF5oDypMR0H4qeW5XuGYZVYmKZbK9ALUzHxfY6F6OuOr3UJ++w6K/l+5PtS4dCilx
	 /xew1d0E2N88pa5AE0NmBE3iV+wu8Sw/Zhtez5PhF1D2RkPrP76EAX7GdG0JbvBfKc
	 bkcIkkikGCadlrXnS3DgZxc0PFNJC8/M+TX8tnpwarJOI3SSbj8DYgCWk/v/MWrwwb
	 ngG1QSKziJYrf/w/2WOddd5OcEEX8gD3y+egnZmyiPlmBSAjxPgPWUqr9Y1WubV6ki
	 +v2t68wTnv3uvNA4dCFLyg2twkaW2LnvWT//54jhGv6jlgy5f7x4ynVmgL/0ryT7+y
	 D8Lv5OEe3blIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D74D6C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849470282.17812.10036882983830106134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce30e71670774ea5c8387b463e05af235f1c1d50d73f173b2828d05836ea95f
Date: Sat, 15 Jun 2024 23:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718494702
