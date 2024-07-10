Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E00518C161
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720644443; cv=none; b=CnCHDOhJen1jD2riiCM0jTU+u+xsBWD4YPgVCQDg7euxEgMntncqKk2R0GCWQaxKjgqEkQmcc3cbOhOlTj2OtdlGgsprC3DB4nVSrZn1S2lU3t1fVOpnao9NEa47vV19Ifcfd8isEHrAe7EwqzB0oPEHgrC/YkAgnx46dJXuGU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720644443; c=relaxed/simple;
	bh=i1n8UvW6e70oQGtkSD2JCoGuNlt6cGG2UicUfF5/qBQ=;
	h=To:Subject:From:Message-Id:Date; b=N8Oyvu1cztUGVi/q4c7H7gT3VqR7b63aUli5SPE/7srfZhI4ioLxqxHaqoBdJZrKxsPa8fnIB+2i4TFvRqDH8oSPCwSswax26Um0jB7C3bUYtCuUIrZUCxp12guAX0roVIcRxCsedHne8MDLZwXAdBXXpCaLMKjUO4KZnQkHTrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0ChvCe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0ChvCe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDBD6C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720644443;
	bh=i1n8UvW6e70oQGtkSD2JCoGuNlt6cGG2UicUfF5/qBQ=;
	h=To:Subject:From:Date:From;
	b=E0ChvCe47271Ibukn5yvZgN8NQCNIgVEFjoMGS86ZPRJFjihNa8Z6QVj2RQ1DsV8+
	 ndswDkLlBd+s6ZCvepso/Di9quA82yI8OJUfZ9SVGgNR6Sn2gQs4x+hmjDduQRFYlj
	 xhd5KXcIIhg5WVhnYbgIvdHvxvv47G816M+P9dRsr9yMTg2uLu+dnKCLrZKe3qJPwH
	 aSlukliZjHBDuJS5FAi6tfEkPSGRFPaOU71+wFvvwr8qAu9BJOYoUfatESaxZrswHq
	 7wvH/wC+MGfWzvL2JVRXiwsbsAqHCIVu7++K86/dl4duEiLkg4PE/R6hD6GelfkEWM
	 o+/Zl8IyYPSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D13D7C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064444282.20473.10258582982441981925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287107b15d5f0ad02d8bb75a07340e6d56969c33196df1928690ffe09d602805
Date: Wed, 10 Jul 2024 20:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720644442
