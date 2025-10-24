Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245597083C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761284394; cv=none; b=Cuc+OBjz1G9BVMJzGGFHcC9BBoGhvjpqd4aQnzS2Thx5PqUKOzU2B+E4oJJ/ii6/UAPVeVwWKDn7+RzO8/5VeQF7ttH/NZbefOi9XEpPyaf4/R94BNO65g7vukqCkzBL7Vos1CbeqpHA/DBC8nAx8vGF7l4gTFTQ5xZnT7NbuIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761284394; c=relaxed/simple;
	bh=VKHnbEuzI8mCotX07VZTXBvlZiT4hbB7ENGgFIPxKDk=;
	h=To:Subject:From:Message-Id:Date; b=csmK5TS4RmfspJppJU9G6kDWWf8g3+SRmsFGZdl54sXIa2xu03rqOuvQaWuHiAtFoRRl8NzXyyoxaceqiYIFEb583zVE9Y/2U/tqgPHst65WKFY3C8hpNK5YxkiY3cnCa5xebne7EPevYu4akYhmSLgShohEMPIXRATNS0fQybM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iff3bhDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iff3bhDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F578C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761284393;
	bh=VKHnbEuzI8mCotX07VZTXBvlZiT4hbB7ENGgFIPxKDk=;
	h=To:Subject:From:Date:From;
	b=iff3bhDmnErf4v18xUh7otDMQbkoJjeXpeFtjADUpNbMa7zTNI6aoM2/+6CxGDIWM
	 bBbhaYiQNxy7AbTA9qjw/F2YYhxfbFnzUrHdIWaN+CwvS+otgGz1DBYgeXtjVf6Hmm
	 FkbwaBt4K3gOelLeV7fs/CRVHomgFXI+vhfJ7F6fROPtD64dkZd7PdysUfnuTNJ4Sp
	 xdk1AbrxOKIdDq2iOAza2YpIGhu3ds2N5Yjr4tjWPe96vjZs4KnbPai+qQkkvtNzsE
	 mOX0TERCVx+ORRYXluEvyZiV5IAlFK8KZaGvVfN0r2HhOxl4JoqBVEqKMMCY3jQYsO
	 xklBU7qbKrAAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F2CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128439357.23646.7951214230126825008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9bac1101fa254d2cc8901c83e82024d5df8554dd7837aeb8a5e8ad92f9cad0
Date: Fri, 24 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761284393
