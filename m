Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513733E5EFB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785235234; cv=none; b=DnPT4vzdOUJZ55GXVf0D4b8tVnhkFeJRiJqIvNIb9NHC47melyfefuEn5Ph6egQXNx1MTl9ZVXk0s9FngBHsILp7GD+C+joVyjs39zmoGpw5OgQf45HFxXdWbOlHXXddZtnYYfRmSK4iihSPz32wuVwOJxFeEPOzCE7uC7KHqH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785235234; c=relaxed/simple;
	bh=e2CrBRKQgvNnRrmH9ETvpt1VR1BCro++zUA27xnpAow=;
	h=To:Subject:From:Message-Id:Date; b=LA8C5mseJw2EQOvzBnFojewCBB2Ud9iVhn/wMXhN5Julwea0wEJz6xUgJoUaaAuAdGFqj9ndNvgeffQ06uwA9Ir+KjQ+4bdJPKhPDXXO9HgEYQSVquIfzeSxvYO/rbPxqMstkdTyoKVTrRbueKDSF0IEa6VGSiYjNZxF3djjKXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0E6zm0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0E6zm0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0F4C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785235233;
	bh=e2CrBRKQgvNnRrmH9ETvpt1VR1BCro++zUA27xnpAow=;
	h=To:Subject:From:Date:From;
	b=P0E6zm0XCXoaSIP+LIBxTj49xvFRd2Yt2VUrZeQA2JfbELtsnOWilD/9Llg5VZKmi
	 Jgr1lzUgRZu+m3IdsS+7xghladKtG7htyYNhnoQiLHEIpvTs4x+AQLlL3o0CNdSTbS
	 vQYGshbbABdYpQJbXBO/dI3LkqJqTesbYmp+8lI19qZl58DnP4g82wfxov254+S3zn
	 8ML5bKHciCu1Qy4oK3nz6HV4VSTOaoqu5OPmAMZnmtRW6ZYNoZp6Y/Mjzfd/oFPu/3
	 rQzQ+XIsYfgeZmzH19uMJYhxjooKsbUAiDUOoseNRcIqZx+YGTW95wrkSOak5Y1eCR
	 crCuZWydJ95eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4ABCC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523523372.24448.10868624753026044877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ef4d9adbad092df59ec195747a6645dd259e2688c1b6a706d09f72b523ec83
Date: Tue, 28 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785235233
