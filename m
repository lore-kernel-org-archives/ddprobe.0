Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E381235941
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735316154; cv=none; b=YEpchTlde+jhCc6XknBHvS3FbZU7ULDwzt6UKDxX80RhGufK34YFPJEq6R/uqDss/zostUVM1aBgVy+mMO+pm/Gz4G21E3VdLMRIrJ3K+tWizFJkj2xn3pWy3RKMWCofWRrOYIgToOAXJzBTo5dmTGRnzlvcddnb+iHAh7mR5A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735316154; c=relaxed/simple;
	bh=TqDSsPUqP36EDl9gKQ6GhrKiwlIYKmuJIter2QMYaJ4=;
	h=To:Subject:From:Message-Id:Date; b=NfdftM9h78qj9zxB/a2Pm/dOkA80700WKuRwNdKcO0UFnEDT5mI836yeKu772hJnTYkv+RLLSTwwKpV+NPUVMe3LzXfxG4efwKXXZ3CNdlSxxPltaJSrHwS2nq+9QiG4gcMZe129KJUc4eDXRme23DYMERlt3g2f6VkcSxrX8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cD33JiLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cD33JiLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22C1C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735316153;
	bh=TqDSsPUqP36EDl9gKQ6GhrKiwlIYKmuJIter2QMYaJ4=;
	h=To:Subject:From:Date:From;
	b=cD33JiLU6FCl8LaO2SWBBud6nN3jqcDfhhbI9NP8Skav8RT2SMspV/e4hLLudbvPI
	 Ww6pNAkTjeOI2t3zogSPYd/q38jboUhWWOl2xnDH3PyXUmTFuQbZIybC0T8rKi+YRt
	 653i6wepv9AKe9gmHn6J2Es0ceG6Ns42VafB0iZVv+nEv7k6wju0VM1piIOgZ7NlpT
	 CUdP5nQHtagdkojqV/GUyH2Jvix8kWooONy3a47+9cz1sX4ADCNyX1fVWmqrOq+CAM
	 CnzQnmMcbVUtKS5AS7oYtIdj8oS0FJUc/P8tvQQzKpeOQbQWqh8VtJFxokWZJQ+E5G
	 YaJid0oYmLpBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECC5E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531615364.24221.14093218028952069314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c429656d7e2401086aea888a238cf5ad93a7cafe0675a90a535ebdfd90deca
Date: Fri, 27 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735316153
