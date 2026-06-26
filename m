Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD3D1A262D
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782442054; cv=none; b=qypsHTKqjTe3+OpUW/0wcy67HL2/RsSGZFn6mds78DQo83KkYlIl496Od6lCDeN9q4H9ZqjVzIbhBy40HG0QGUIZ3b2owNwQ2cNGw2o24QPZsJHnR8+ggYaWEcB+DhazfqS4wOlodj5pU3GiWsJe/d50UsUgbnpn1YRiThwOgJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782442054; c=relaxed/simple;
	bh=Ar4MFcgyBci4CP9kEiI5HAezBtsO5o1E96ZaNOzr6+c=;
	h=To:Subject:From:Message-Id:Date; b=gMjypGZGmoj8EXxR+RXfMZxtKycPZtCj+AdveZLBv/u483IYUjNCbty5RDWWcizayFj6DdStB1EfA/k9LzFhsu4qgDNezEotO3GeFQGTGCaNql5fX0o+syzLNkfNI3j7KFIzpAUMo/MROuOmIF1BSfCvRDTEUfDiotIGOKmO+5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGhqhzdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGhqhzdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28A1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782442053;
	bh=Ar4MFcgyBci4CP9kEiI5HAezBtsO5o1E96ZaNOzr6+c=;
	h=To:Subject:From:Date:From;
	b=SGhqhzdfC/KXRgFN1971iyogLweM6KTSkHEdnm9sAdwuTcue5o+/VQLpaXllgyY6Q
	 uQGpiAYM/tQHlVSvR98H1hs6qra8kh3u5EhzQfDArkyOAaiDWDICjXk+62Z0lSWwNF
	 +MN2Q+aFU7uurMhKmHdbGsKK908DLAKHT5l+X3XsgGDVygVVS95LKZVJRNWraQoH42
	 YovDdZ0PLjjQIfv0DlL5VurY1EBiMGAoYhsPbzjGChi9OVTsbY80iehOu7rKzg54+r
	 7sja4qwg8yexLTp/frak5g8SJnCRAf3qeDjcfnIhr/QdK9dPAaBihA/Lm82L+v/ysB
	 ix5UTMfwcF+wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9521CDE00B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244205368.11336.60794760581032119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3275bc324e9224bd4c37b603c36749ff1c84ca144240eadb449fd5f5afba561
Date: Fri, 26 Jun 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782442053
