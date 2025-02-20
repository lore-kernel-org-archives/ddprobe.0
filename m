Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3686D1D5AB9
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 03:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740021534; cv=none; b=PoVWXaVZWF7eacjK/8su3A7qSopo4NNweOz++xlGAOqTFfmxhu6aMgsvSeBYH8TrzVzgifa8S1xksLxN4x0Sx0v34u3lj/VT4/Kf0F+lnU/ShADU18sXlZPsSrmJzQooT65BiTAaK62rtlHpSFxi5kb8FwWGEmlIQTSlAKSUu/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740021534; c=relaxed/simple;
	bh=L2FHkGgqIWwzIf2lO7UxPaNqv26tnM8fQVMVjRDrXwE=;
	h=To:Subject:From:Message-Id:Date; b=N9XtZz4jNnPyHdE5ipV33k5dbk0Mi0dU6n3DmOQ14BhojckbiuGu8fapixrEEwCgRGKiYK10pjslizvg/Tp2Cgq/ugy5BElS4BeLJ28EaXQjCVI2q9FjxxGnFTQC88Kg8GWWReElgtXMYp/pNGk/zn2BQD2UV3nqeToATzIC0SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boiK5iXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boiK5iXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE08C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 03:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740021533;
	bh=L2FHkGgqIWwzIf2lO7UxPaNqv26tnM8fQVMVjRDrXwE=;
	h=To:Subject:From:Date:From;
	b=boiK5iXo+TIXnzFlzGguibGvXljQOhvCfwKv8BBnSAMI4wlrWSQ2+KGLkBcaggRSl
	 INSoPWpH2QJyoQp+I63tmu7brKCAUP/fY2iGNB9YyWKnQvUKz3k9692AG+ZpMG1wEo
	 Yap4UuV5dokN3dzOY+jNiC3VA8Nrw4N379xdCYEzf8QQjg3Di/5yB4fl1VL4WSBNXa
	 HwTU4mv4Br2XpQ0PZ5ANStcr93plSXSASOsxkZeMdK8qugIoD40sUnin7HpjpUKsIA
	 1EL0d7Zu4JHVXh3dyerXKouJabR7b0k0Yu1HEiz0o6snqIl1fxY7KK9GlsEXX+EFuv
	 zb/KBeBbtLP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952AFC021AA
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 03:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174002153360.5322.2263441129475051600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447ace058b508e5b27bb34e998373f5197db3505c9ef80c36d82f187c5ad0d29
Date: Thu, 20 Feb 2025 03:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740021533
