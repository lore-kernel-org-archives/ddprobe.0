Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139823BB22
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727649954; cv=none; b=TJW/xGQQ96bSsIJI1v/yqODj7ylYasDuoDyTbKJvD7WkHZAu4r6qDyVD+ZovzvBSIz5IswvwDggWYAAJ9kaFQDyiDp2F5J9yV7QGjxLt617c3pB78bwF70ZpjW/yivP0G9M6XTKlj13iVrGqvDUTRkjPyaiRopozQqtQHNKTrPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727649954; c=relaxed/simple;
	bh=mME5se94W7YDKSp8hb9mO32S88mHvO51rB0eDZSe9D0=;
	h=To:Subject:From:Message-Id:Date; b=JdnaAZQ//h+MFPdqiyueo6d7q70PAjOVYFC/6YkQY50OnymhOjS6M2/KFV8PRD5aB2E8jYrJG8U/FK49s1MDsOSpa3X5b6pM88ytifyblk9py9e6VIVgL/OJXDna3XaOjI2A7AtIphyict1DPXys0YAJI965amOeRmjEHiURGVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTgofZxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTgofZxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727649953;
	bh=mME5se94W7YDKSp8hb9mO32S88mHvO51rB0eDZSe9D0=;
	h=To:Subject:From:Date:From;
	b=GTgofZxncETYGHoN+OpUTNwptCuf/ta302wGv+jmOmixod5Czu8C22TCF2g5jW6uI
	 3bQgAeNDJhsSp2Z7B1bp0CIzezzu1TnTt0XRLWKZmmOEWGK+LgTDxF0PPJsFyKeLq/
	 PhYIpkU6CWcRKHCbNo6qWwtgYx9JrRrZtjBoHtPWzxC2lrXOYUWtLPuQoUkgCa8GAN
	 McGD03/exdYpm97mok6LS4oAFj8bBHoBsP9bzPxPEAeL7sNlTz6UcEYFXXyzYXJdVz
	 00ilL6lBGq1j2+w/4xgI9nqRqUG0dlwK2WL++lGLu1Aris/xXCeR8ZPrj8WlaRoM0c
	 95iyaH2NZwsIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D00CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764995359.8294.15310127226100682738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c0b13bf2361dbe6b56a350483e00ea867a35c3f523b28ea76b53390bd6e2d0
Date: Sun, 29 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727649953
