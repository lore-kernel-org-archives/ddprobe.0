Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43669235045
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791333634; cv=none; b=awt22rtctVbtwIhyYgz1XzN0GXF0PuA6b+lnrSCdAhAfJf92gLOKn13LGWcljtd2UAUbYwvygIJU9RQlkt/0pid+pNkruPXiVgbBjTZQw5fdZdEF97XvS76QUAEWpS6Xxqev1LmuTVUmpBoc7p672YJSt9ipa+jM7J4uA/gwk8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791333634; c=relaxed/simple;
	bh=OAy/nQp7FeY1yxCWreuQ6mhWLfjg4aD1irpNu/bnvZg=;
	h=To:Subject:From:Message-Id:Date; b=g5VWPbVyS3JODlkABix9R9a9+dhU2SlU7k1RTtGeFUwdVbbSWN7TzVfCnL+m5FORknb3GenuthLZuyG51ox57nHfX6w3V4/JcOnE6AnC+9p17xppee6FbEmjfQ8e49NHlGW6kZXJa9Gk8ZX+i09SmroElWDQaPk9y8tUX8OXMC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLgPLcov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLgPLcov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0210C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791333633;
	bh=OAy/nQp7FeY1yxCWreuQ6mhWLfjg4aD1irpNu/bnvZg=;
	h=To:Subject:From:Date:From;
	b=OLgPLcovs/gYmBrvFSfZ4Lr4hajcfvokB1mQnFSJUYDvVj7rf+zOlDeX1rS3GOGri
	 UUw3KAo8/kW/ODtSkPTL0rOfcEivCuGhl4fVMzCgg7owPLqDLo1oEXCKZFyMtsY12I
	 ljho1KksW4QNohO8DHSqKsjtvhzXca6MTzQM2ehecnzc6yKWfIBvtqXLOq4A4Wa59Z
	 fl/J4WgdKIdzXfYZvUoP6tLjJcmbkzlylRZ4SMZClCMxRvKvN0LKqOO5GfAPWM2Rwk
	 YMIyZ/J0pZ1r0YWWKxibVyuqITsepZSGnMr8qRGh10f8Pzp9KsSZMLhxpYRI54snop
	 s6rTA9yqRw5QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA3ECA5FFE
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133363370.9435.11305301036701031010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f9de29aefbceaf4421bbc3f8e702c12a483f81baef3446434e3a8060ff0057
Date: Wed, 07 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791333633
