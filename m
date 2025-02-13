Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A57C13635E
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739410134; cv=none; b=CzOo8UxWSIa9UYb1ec2BxDqyzpk9wZBr6IZtk8ClpfQphrRbGafsFWQ/P0YXrYSi1Uf7X9XE9YGi04pm71Yl+SLmTgAx4oMlA5/BkfC2FxTO6Iqo/kUD6zZTUBLSeYDdzqaJxnCZ6HmdEhZwmgOo/+PfQRQJObDm9uXCSR/3Ul8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739410134; c=relaxed/simple;
	bh=uaeJWDW+o2HW68VagxnoeToSt8ndhE28fODkDkxrV34=;
	h=To:Subject:From:Message-Id:Date; b=Jex3WdAe4iVwNjnLmIHMm6zfJ6qg34OALpXh8xKftbKCH/PogQxNj+QLFOpJTkmiPDfrqot0njsSqTzw75rLgBWynXB+X3guaBBBqjD9ixGGm8ClHuu+AdmH8NzloFBkiYvJ7SX60W6iDJoXCRYhnkyFriQNh0GnlZc8v/q9+uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8FEIrwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8FEIrwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4307C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739410133;
	bh=uaeJWDW+o2HW68VagxnoeToSt8ndhE28fODkDkxrV34=;
	h=To:Subject:From:Date:From;
	b=M8FEIrwJPMXIEF+D4sl75zm9Kr17ak90HmhRxoxn3nREXK0J/26BhpY7Dz1cE4kA7
	 HRzeyBICBN1HQ0CdDTPhks7R+z9Zia8uEWsxpYjHOt6xqrIMcck/rMlH/+rpUyC1c2
	 F+BWPUPFAok/zm1i6eWrhKzBKFT7X7YO8/7h1jr6hL8U2uq0LduqUXh051XDbSiwKK
	 eWNXsJSrLa5Ae0W+bJoBum4nertMP0DXOjCaO3QjyEAzG8azzrLk2IUE+HdqpuGpP5
	 MTpMZ+Es8IOi6QrCS4MVFwUlVjJw8KkjUb3QkEtotbaSbrccx4bRzwCCpkKeyqszH4
	 ZocZikTn+hpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9FC02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173941013358.31421.11576348695213765070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2f1481ecec7397638adc3749dc06b2431292a44cb41a24ab2a13fdc82a25c8
Date: Thu, 13 Feb 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739410133
