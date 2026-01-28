Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D30F1A0728
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769607234; cv=none; b=Gsmoa1vdLoO88AnGBgAIJRTnLri+aOzrV1yYYV/1SHMs416eIzvj6wGs9kvn4ldXt67KA/0/M9PyXa9ANEZCMY3fJx7hdGyNC9O1tz/8bTE59an6uGIdNaCFF7ToiaDTbYxLXjDvcrlj92UqtS5Uy3FJadmKvbbzomrI8zQPH3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769607234; c=relaxed/simple;
	bh=K0lkTkNisFImcil/E+gJczJ38qGnfYPIIDDpoX0yf+k=;
	h=To:Subject:From:Message-Id:Date; b=gHEZ/0V307kkBYX+5bCms+kIUf+rlYfhKIiPu3uaGS9koy/gPP321OntNl+AryN9YTfXSpJvnrrKvBV9ShedAaexvXSFW6gVEQfvtU1AS0IuWk4pbUrQHgK8Eq5HgpoVu1V7i+LaJPGo0qKGVcaEjER632bTOxb4paRhjFsyzKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUfNIrCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUfNIrCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED80C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769607233;
	bh=K0lkTkNisFImcil/E+gJczJ38qGnfYPIIDDpoX0yf+k=;
	h=To:Subject:From:Date:From;
	b=RUfNIrCZiAgWerxkUBPKu/TsW3XKAXLjVJnBCYahSd95pmt9EVW67rynnczVyqYeY
	 MB5UbNNzxgJ4ptS8XA565CzvaWA7Xh5nUMbJY6P3MlFNgcKDE+lCGophD5cfu5leGm
	 UohTamOKIAQ/NcoL84di26Smsg4U8AcoyDgdl/38bvryAnNmrQaEjyV9S/92GkoHkS
	 dinjEGKqmGuEEC+ae9hOEi/+tQfy4vaZ0kw9o0LzQocGngEicmsLfYQFcSxBH0ranE
	 lCALMZXFtaV9+3P+TBL/eEvpcoT8/up5kHf0sirC6rvo5nItCeC2kqOBVlVW0RMrUp
	 1Zevrly/XID+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E5D25B78
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960723357.18348.15200572936360568127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdffd769eb2b7771960840725ae520c448cfaf038203f0c35b76ae3e9abd749a
Date: Wed, 28 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769607233
