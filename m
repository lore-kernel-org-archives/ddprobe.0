Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3717F3B2FCC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784558914; cv=none; b=Jw23xFKnueAvK0Ft49sDgg9KS12z3tfy393Q++eqMPjycaXyvJQNxGSFdjC5Zhya/8N8dRPV9ToJ7Qzm4bEFq5rlAFY5/FBnyG+Vyut2zbdz3in/IMKtXu6XwojMXqfybVmXt5uOwWn12VA1L7GmfQMOsV6WBEueKLVMhUoc02Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784558914; c=relaxed/simple;
	bh=BbvIK+sI1VQctStAp1E3Dhws+69HaW1rWW0yUswAW90=;
	h=To:Subject:From:Message-Id:Date; b=GAXnQzNnLa+/x+Ta/BqAwDkmzRMNFDkR/NEnLbguP4D1CRYGIgd+XrY0mDOVwVbEH/PBvixjtrQq50/g9JSeKsCXI1KeiGFLQfoCZTKS1CkIYFISo49XaxXgpp9OVbM39zgeKuYQ/n8AKuijPMr1dtoF/Y9PrSv6nyHrKU+iH0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irzhuuWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irzhuuWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC138C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784558913;
	bh=BbvIK+sI1VQctStAp1E3Dhws+69HaW1rWW0yUswAW90=;
	h=To:Subject:From:Date:From;
	b=irzhuuWFonro/4YCWEmyrL3epex7of42pw/SAkT9+8GKn+ygrKO9/3p8reoYmYCtw
	 X7NlgPc5EyXKuBmi2toMsf41oUX/9dH6f+efiKxitqH1Yx4IcOKKxncD/Jv9807UEe
	 Xg9nh600BIkSlCkUoG2ZnZMHR+ujgTuvZAw42bjm8K/qUNOmOxtXRweLRZDuHwnkmt
	 m8e5UdmepIZYr/KSXNF637KOYRjjvxMwf97cmWGpXOLuUu5YaGFHqYkaTWaRJ0/VTE
	 zrA7sSJqhnixixxmFX0BZs+p9XeGS5mRDbpvFy7+93oawEU0XOHTnyotS+kNluDs/n
	 tHopJHJtFM80w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A967EC4452A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455891368.24016.845182343583766109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbdbca6008ddbc6d29dbefba165376a0559f9b7008b88baf530231815fd38b3
Date: Mon, 20 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784558913
