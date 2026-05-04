Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B65299929
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777876654; cv=none; b=SaXUmpQB6T5avN7n8CF7uwcZLJF++ozyiA+rVOEeSvgAtOsQZVyRsai+3aC+Jbpsk6ede1BF0EGiNYG5C0+5uhtnVcYL36hJ6AeH71HdEKCZWbKTtiQMskTCa5Fe8YhuvXj7jxSfTt/laK1gYaaznjTafcJm2H/vCtVa2i/5ZXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777876654; c=relaxed/simple;
	bh=WrKRf6TVFmyyZZktnSRl5um+4IO7EhPIFGvxSH0YSpw=;
	h=To:Subject:From:Message-Id:Date; b=IAJlNcW1dpdnKKqkxC0Db+zayawjm+/LmYMRBh8KFL4oz0FamucX5UA5byL2zWpCKI3kV/gbfYFh+I1loJxdqmKSNWaWZJ5mrBRvokaWUpVzdHJp2GESbDwEaq7ziMZgNAYqLjKYUmpcZCpwROyFshswL+NdFf605fjV8/FfVvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5NqxJ9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5NqxJ9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99CEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777876653;
	bh=WrKRf6TVFmyyZZktnSRl5um+4IO7EhPIFGvxSH0YSpw=;
	h=To:Subject:From:Date:From;
	b=Y5NqxJ9LoNS/iKsHyj/PseiIYAoVYM1y65qzGb68OeAOEH1mYFvQrxYEobH+2P+xt
	 tCb6QyovXX9YcXQTLM+k5js6n1WoCdlcWJtlb5b1rITu3sxXHzoIpRdKqqrOYP4cec
	 +Z3TGqraYll4FfllavkHX62KOBAIHt+aQMlLV/BSheVpRPmVAudUe3tILxNsBEdLWQ
	 dCxFrx0Z4PIGz/TZwPyMFzgJwRFgOxQtBT4JCdV9BmE+RcJ0AvnAbYdl7er6dEN6Vp
	 ud7REC98hlflCXRaUMHtIwYM2CPLa6oTgtNhbPXaqkT+ugTrA+zNn6hwKJldZL3Hsq
	 xqk/gsPe5aDfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9206FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787665368.6249.17844313045061199424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63875cfbee89ea73068e1aeab58aa047df85e3587825ff88d0f9b168675e213d
Date: Mon, 04 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777876653
