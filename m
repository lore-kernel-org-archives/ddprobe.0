Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D6720311
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716207143; cv=none; b=D4l5UP/CDedDjuhao22vNVJpZsqUgQUe0qm59f0WAfySi4R7NgWpgCDVryQHGOCXGHTI5HxZ8dMLwmIInf3OSZwe2n/z9eHtIxudj0yleCKUWH+PZCK2hnocu5Rs+4QjeET/3zTFhb4Zi9CVba1i63UJiHjv0LNxZLY4I3CzVc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716207143; c=relaxed/simple;
	bh=octIFuvISRwTRX/dVKVMkxoVyyo8UWuinqLoZIm5xUw=;
	h=To:Subject:From:Message-Id:Date; b=u0V9uw9x5KG2IcaTfc3m3k2VpZ4a/SsP5MK3uTU41AYZVEV9q3sgkuOG2j7T7XDTwPAjh4ZVGhciygC/ebJ7mfelwx9JQz/Gg39xjM3lMruJkKQhcM2t9SOlzUq4DfOpvXG0uET01EhU5wLQAwrfPbYhMa/CeXrlPDHpSwUwF9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PknOU6rZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PknOU6rZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB46C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716207142;
	bh=octIFuvISRwTRX/dVKVMkxoVyyo8UWuinqLoZIm5xUw=;
	h=To:Subject:From:Date:From;
	b=PknOU6rZ6GyqawBWWAsId48UyQw8+ZHTfvzxN5QvHk7TdI5RVBVTp0rCXkCFCqNgE
	 jIt9R79WoITMLMflOHJTCEqqjgac6U0hhz/VS9AbAx7MI7SlkOsYlcQ0e4R2bjK3yA
	 eAuV8f0xOIqu2pLYshawJ6mGWJAt922LTT36W/E8jjUmr1Dah0+28Lp4GA1q3emqJq
	 w/ctpO0zJKG3Ptd9XtRqxiyWtJ9x6LzfW37nRbDiAI3DdfZyPRlpNRNF1vIffqXirm
	 FN/iKczV3BacyNpdt21Nwr8PCBoqC/OyEbWQRp/bqElDb+RSotG7hAhkWrU9un3xn0
	 Jb0PjLxAseK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79E0C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620714276.24498.7629991602209542620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbd9b0b93b28a5a8dec9cf35b34175f31282ef2b14b696f70847eb865881102
Date: Mon, 20 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716207142
