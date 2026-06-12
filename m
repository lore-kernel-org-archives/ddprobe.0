Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D00E37A498
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781252194; cv=none; b=hde+oni7roqy1G3fvEVt2uDacKHZGQLCF7hKgsRpYivvI4tPaILWmbe9Nzg3/rC5FZjiKt/PPZ20/4pK7vqJUjaWigcTgzhJZu//1mDSx3/FGg4JD2FgFC5eWnmCiw5cedvv1C0NzX3D9f5aN30hfcmy906sUW9c/3rpxY4eN1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781252194; c=relaxed/simple;
	bh=/PmccyTD89u6YQ3GMmrk7teGjLVE5kK9JbLUpeA+T0I=;
	h=To:Subject:From:Message-Id:Date; b=Y9Edvz+QZPITniMRM/AFbRfnJDOSJDQXKXkmsWborqmBN0BbbumkSVClI3hv5ix+qH4uSfMz6tIJbl2Cwhe628frsVVMiPKdpugjXd+x2gdk0IviZiyDqHS7Y0kyqHJXrHegKqQaQ4Rn58DD4UT9raYpQ0C4xKulrouqPMjMWM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVIXEMDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVIXEMDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA308C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781252193;
	bh=/PmccyTD89u6YQ3GMmrk7teGjLVE5kK9JbLUpeA+T0I=;
	h=To:Subject:From:Date:From;
	b=tVIXEMDm6NlDEsmriTsF9vq0v2M8Vq4gGo3mqHz9YBp5B2BEHAgDNpiPPldkmjG+z
	 X8HtQcH9B8O/weQEKDJ0NBB6FebZ/omadZu9JYv3xxU5IYf3gBLu72YM4s3iDhSVFk
	 8zsvSnaFvdpt94Fj/Ggyz9SUuX54+PZ5BczIvfJiVaam/62uPF//aApzIo906Tgpnu
	 XXjuXv2/nj3MGr7hxzlFrmOwNjlNmA8LGQ5MOc7jpvpIXo+o+kSTSCCZ2y1WJOE0yQ
	 U7e/7Ma1SVzSuWXL9EREsgj4RmifPgtfs7qQDXcO22OF48sMZe+cE+WV8nmOg+39oQ
	 wHD9yNqMSH0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A864ACD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125219368.10400.8434766226263369681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ab16efa65f7bf2214015cb7ee7a1c8f65921d6293924f781688d8d3fc26658
Date: Fri, 12 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781252193
