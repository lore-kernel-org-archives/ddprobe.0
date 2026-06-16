Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD5A368D6C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781594194; cv=none; b=i/eC8y9jne48gWSIR0Ema3IqFGtHFrG+8ov11+NhPQLqtLNWjmpOxgkCpI9KfYRhpC9eCXBS4oKELvpUwaf+fIop/7OVIdDPZ+8I4gxBVISRGjkd9me0lQobjVeSFbGlE1SGfDv8w86sR3Im5g98FkOwFgy39CCKfKeSpv3QvXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781594194; c=relaxed/simple;
	bh=V5r742Q6qEVu4ST8qij+5mY9oOUgqaQSLbcSIm5dbso=;
	h=To:Subject:From:Message-Id:Date; b=nOWBOZ+yaKbZFQs50PO35nOdKO8gQHGoOLKY3Me4t8Coo7F0MIwP5EgTSSxN+inph9yyaSQM14rjhFUVtbpKnCOzzcFfTAHW20MIs/nESQRuYLX82mPWFhKKK8O/AMR2+ad1ra8GDuNIlcEiC2HhZ7TzdsAV0LUNY8j6gvhB1zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5izao98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5izao98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2582C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781594194;
	bh=V5r742Q6qEVu4ST8qij+5mY9oOUgqaQSLbcSIm5dbso=;
	h=To:Subject:From:Date:From;
	b=X5izao98mcd65H+vwC19dbl7wS7vvdkK5pP+ueCK3FFkyQdhjWIej88c3z43PttW9
	 zDuKwoTgWN46zZkWpgXbtgj3R7ScQewY7BbiSdZlLGs/sBVWc738BJ6pgfRkeh1xTC
	 ybGGo1J0TBF/m86fB3DuBwaGQZxzAfgp/9p1wU2c6nQ+ZNnUrZftUicEbXnJeoEs/Y
	 vOVl+Cok5ryWSBzXQ/tknYU1UCkg4nkO4NrnnZA1gjSCEKcSy1JmOxF2eIQTUc6y79
	 IBx4qiqmSqwTjiYqQEjKFRtsLOgFe8QYAwr1IQEjinrIV5ewNr50Mh2e6zlt2bWPli
	 miFltfPNW5BPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE213CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159419381.19713.2164604454837525851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a182882734635309c2c7997fff4ef1cb723fa7bdbec0203980fc23469c59a42
Date: Tue, 16 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781594193
