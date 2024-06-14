Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5071612C7E3
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718337503; cv=none; b=IwsNbz6yMwkUrDUW7s/Wpcj61OoDZbsHvsvv2i7baXQLtcHEEWlMOdk0t1tkKa/qAMQCaLrqeFlZQcQR+UJ8cKwKzH5Zt5sgyYBJ6TnV2znGEho7tZqE8zV5YEuaTubJf1x2kU1Eh1lr4UQNZ8+fYkjH7aw5eV/WdNRS8rmx3C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718337503; c=relaxed/simple;
	bh=QEdP6q/a6hw5Sdi67H6ujniqnUWazYqRqts5QVMHoJU=;
	h=To:Subject:From:Message-Id:Date; b=RNogw+3NXd0xGe0ffFrxn0QDn78VdaXUDDEyx1qd2LZ288crUhJXf/uCwpR2S8EzmvXlq+5PvCjuEuddhaWNoXajtXPG1C8p2gT4Btpi7eVXqryXiqGccL4jZnUb7+DHNdHUVnL2M8hiqFHn+WpEn5DGyYG+aUiiCfeN+3c6C0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwRGxENT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwRGxENT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E32C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718337502;
	bh=QEdP6q/a6hw5Sdi67H6ujniqnUWazYqRqts5QVMHoJU=;
	h=To:Subject:From:Date:From;
	b=YwRGxENTi8Z1N7MnJWf7TBTo1IpT2toaQCQWNiqiYv3Ioit+b6C/qRAUSEWkcIjr7
	 f9ReKXPS2022hHxUHqEYStes+8bT37oi3uPmqgkxETZfIAyI/sz7KcMCB4Ac3Oe/Bt
	 qay8EdFIJzQ5AgKNYd3lQIMSD+WXUpNzQ5IRym4kqhxQO8keoR4v04q1LA9iqUV6X2
	 GB+g4fSZrebuqM66LPqvlBRpCisxLD+JG1e9Aw10Hny+mNWe9ZM6JE179HLulaoZqf
	 3n0Mhv9UwlFnT9XFyAdDkRXtc6xWtZsQAwHkNRh5Ef/Gm5UijupIJyVzlHaF3lHL8u
	 zD+0ANfO+pJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52B6C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833750277.12615.536609505531000223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abe825ce413b35374e53b16e502e43e49909e648ea75081a8ecf62f233b3833
Date: Fri, 14 Jun 2024 03:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718337502
