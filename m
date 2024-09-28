Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F701CAA6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727550954; cv=none; b=Nljzh4mdxwH7EPhOe3cu0T7vXjzIcjerI271XsZKAhOfp3Bo2Y0qpjTCNOhobRYO3+VvUk8zMzeXsRDBOBdIwnyWBVb+usejmgc4d6FcN37zmxAuX85GRutH3aUfqausnY5DL4ewDMIH+C9gyH+o13AAkOcRfbx/p1J4eHPZClQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727550954; c=relaxed/simple;
	bh=PEh6/8tfiAB764LBWLB6M6rbZq+oUUJxnHzrnFlwUV4=;
	h=To:Subject:From:Message-Id:Date; b=O4KNytqq7jJnVLnsEfYbo55CHQ5MsIkiX9Qxqa2KBjdErdQbFOKHQi4oJNulkvfG9JCqavN9/N3jOO1+pPL9Xjn1/1LuR4S+RVRIw6plczjaZOjtopTZbl0DhfmjpcnZXG3ULoVxZ7M5TurWx6m0I3aAPUjB+1IAQJaDl1qZWeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tcr2xXpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tcr2xXpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EF1C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727550953;
	bh=PEh6/8tfiAB764LBWLB6M6rbZq+oUUJxnHzrnFlwUV4=;
	h=To:Subject:From:Date:From;
	b=Tcr2xXpRmZ0H7RNWkOn1zDaEZDFYm7CzOJlMG2qxv11QPYJpK5SbNgz0yccDv+yQN
	 szRwt7MFAlNH8PYybz/kH9kLuY/2bMIwOSxP0dbtEDEgH7L7r6LMZ1/wKVBTM11RyJ
	 Wz5WLuLmdD/etdyF61mQkKyHfuR7IYvgJqjplkMDkeOYD2ALP90VceLYcFlaZYmDfg
	 jH2WxXxLZfxnnZG1PkbP2ad+4+W48Thf0p3KAedqgu0vmfsj3RdOznfdE1eVDGzvUx
	 PWV2LWpmdQjemxTDIwep5Ub7n7gHucLKmEB7vmcVM1Xm8Y3E4nv1tju/gHcGrkYKmm
	 X7fFlKNPB10AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90811CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755095358.22188.12341897290725867341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359f837332502f3a9a2f7364ad435d080cd0d9d56cd927529b711e907bc42a5d
Date: Sat, 28 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727550953
