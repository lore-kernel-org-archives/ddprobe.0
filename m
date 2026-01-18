Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160A93B2AA
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768780434; cv=none; b=ELNDf5C9ZgXwjyAamn/rIoHcIWbc933yIt+WpWBqckQy57PXCYt96z3Db5m1SXFKMoYUnbb1O2/YhAheLoLPXPvk/eVK0cy8BZNbos6ThtAVKmNXbea+a/vXFZNtQ0+379+ArB1VuKG8P66R+Q1+b9hfdw+o79gU/e4GnhoAY+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768780434; c=relaxed/simple;
	bh=//BcPL1RLwRaPTucQT6sh28Zh+GNeWBPAHD+OIXPnWE=;
	h=To:Subject:From:Message-Id:Date; b=N67P+qsvf1o8ZpWRAk7Q2j3THJiluJV0YAzGpdipwkvOYz8O3ex27moNhIeNvXfHc/Cz7wD7yaCOwjJvH7zJBWD2thSymVd91G3UlYxPFP2Ep7iHxGbCWEAFbTzO8AV7UflNhOkFhlIGjEmsgIHDAKLdgAJLtgN1s8BWBXJklTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqyAOteh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqyAOteh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6354C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768780433;
	bh=//BcPL1RLwRaPTucQT6sh28Zh+GNeWBPAHD+OIXPnWE=;
	h=To:Subject:From:Date:From;
	b=jqyAOteh9RZMhx0znxy6/HLvAGt1qbx3vWDOBNh3FAn5MxGULa7p45gqGXbzgMQH2
	 mt8lt4mNAv7VllObV/TmjoIga3q/6c6BxKvxTsRh7InBz1DONVGobNs2Ii8PKRh9ls
	 fMSQPt8Bnr3trJfUYYpL3rsy0LWSZmX0OLnyrPHbgO5zaZOzvKS8CNtG/aRslcJzMF
	 MYFIZAl3LkhHAW9a4eCu2AJs+wEKotiQLayvhL4nu8VBQ9qUMzQ/b+eCOB/EoUj5Aq
	 UO7vdX52ddj6iigkFSLYtNYAwabi2/wBh6GFiQAjmMh6m7B35s8xFmdYSE/qOR7CSk
	 +xXniirmGLz4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FFC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878043357.18798.2609245913893968889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0138c2fd4b6c7263f2bed5e227cbe4e6a656b98bc249c27eb0ddd23c0af780f
Date: Sun, 18 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768780433
