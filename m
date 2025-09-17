Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9FC217733
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758125993; cv=none; b=cZ9AeybrSVwrHSJh3plv61SrJN8YhnTTIy028glxU4iBP6XvldkyskTcewQkzH48ICZoSbMsBVGX4MssVGFyO/X1CZTPhYuiB7+/Kw8y0hELWXbxzLCTeUlPMTOs/1U46eJkkENeOSqGUFDPYvj57lTqAp5DuGOMAeqfqni2yYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758125993; c=relaxed/simple;
	bh=mbFuWyAvLNRAxINYpDArPBD1/MlTKcFVIQO2/T4f8Hw=;
	h=To:Subject:From:Message-Id:Date; b=r+QcR94BPP34Ej7uaAq984ngyzfc1u2YZ21JbJ8QI0T1kaP14okELYlKexudB9Eqat4Hw+UvrwMZtzu0Vp/dCy8WtXSbSHzkOlUXoIvxBLRN1qulwl+mDVdrz9K5Vu4k7cX2jjwoSk6Cxu8orifwCp4OhLxkc7mw99TYwt3W+Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaX37NrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaX37NrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758125993;
	bh=mbFuWyAvLNRAxINYpDArPBD1/MlTKcFVIQO2/T4f8Hw=;
	h=To:Subject:From:Date:From;
	b=DaX37NrMgHJeY05thu6euDXMrDZ+QumamAmgYrUq4noY6wOSFCWTaqGtvm9MzY1kH
	 GkzfdjgOwdNaK5XUp9a1KDG6z5OUmZgkh3c8137BPcSQyzL2qS/wXDxqDk8lGJlaLQ
	 YC/8++Pvbc1Q479bi1Ck4JVPF2Ir11NaN0vPWmCMnYDGRloanR4hmtOPJumWUjVgaE
	 7MoT9iNHneTE7EeHF4fIQo7tiGK3hrLvNy8UXl5ikOkvwkzOVOfPeNdJ4H6L95Ojle
	 qQ+aJjEugoHbcPGvTCMAK3NVLWVqDYI9w0suFsZRgKzkZqIVmGZJHVe/U6FCWP/pm5
	 E42DZyNztGUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6ECAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812599358.28465.4845191846301527321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7efde534137909c5a70ae1c126ee4f0d671e044f6500b0d1dcf50fc4800899f
Date: Wed, 17 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758125993
