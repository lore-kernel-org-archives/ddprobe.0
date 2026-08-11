Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2C643C7B2
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786444834; cv=none; b=kYajtYRs5ly5sSr5BwAWZK5bDt23JaOMBt9o3UoiaHA3mpueo0qLCo8WEgz1PMHyuflTVKCC2GLoOmLEJ44W4RgUcWXx5fRh0nCkxrq/BNy3s0Y9ftXBlDUekTg4AqxV8cfGAP70PVB+l0s3VMj2/UAun3Rh+c8pZA6LagxEEpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786444834; c=relaxed/simple;
	bh=zdLoKDf9JBWR6l+0SndZNJ44W8jVNS2FGASjV0vdMuM=;
	h=To:Subject:From:Message-Id:Date; b=qjy9DtyAuHSzYPgYCkWF3BmPBkaPAc5I0bYqyypoO54JZzu8ftje82sOyylS8hsXJfBY5aytv82uRiyPAgXun2ApWkmtmmKHR4yOs1gus2OAGel5ju9bPfIKe0IBOGbZabrakkgiUJO9ofEbUCjn/oO18JICRQzgeAgHtlibrFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdCQglKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdCQglKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5F9C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786444833;
	bh=zdLoKDf9JBWR6l+0SndZNJ44W8jVNS2FGASjV0vdMuM=;
	h=To:Subject:From:Date:From;
	b=IdCQglKVSIqRxFN62yMjdPuEi17WaoC3q9VhJak+nS+MmpQnD0zs/WL/1cYeCw8zM
	 FRhNNHrTgySXnmZLWZf1DbQubbhye8IJDANRwd4wXZBIVGicVD9zcAzVgs/njMgR3d
	 mjS2jXMZCEcmRV/eUfnmWfd/PhQASX/bzoYozR04ZUgche3HLjGtCAJfiBnqCkTvxe
	 p3mu5U5hDjoFaAgNFhB+m2rSkfY6nzFbprB2cwPWrJ3HsbsAmA71gT81H79pPwzPYD
	 tfaRypWyoBkybjulES09FD/7A+TngdvalGfqvcM9ELIWeHc2LkFq8qsdKmCuWkl5bc
	 PgajpE0HJdOOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA869C5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644483368.14534.11130834431280307364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff51262a9bbfa7784f26509a2f64e3a27a3323b3bde82fa15a815ceeb4491934
Date: Tue, 11 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786444833
