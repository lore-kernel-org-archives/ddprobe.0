Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083521DF270
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756886994; cv=none; b=I7WnHliQF8N8sd/3caHK24N44NH4tzx5JbEOtHlLEnsRMaaFBScsRhdQeygMHTN4cXC5NA88vAhg8eKNts3EtH626tAQ3S4rDPhoGQqOrV0AawbiRsXckEVsJ0YUuZOeinQJOKP+pgXLTQVMHnyMSiSOa4K/4h5AoKJm2QbXovw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756886994; c=relaxed/simple;
	bh=W3466B1UEpbDGPYZBjNeDR7yAyua0S4OgLhsAnh6stI=;
	h=To:Subject:From:Message-Id:Date; b=K3ntc+e4bN8cX/eK1t/THfVAfRZ2NXJbSt/o2qUo2ttMBGIrejlnhi9Gpo0rKP15MJ1XmQ2mK49o/55zj4PTs2KMtgwLcxIqQnercXw8fG6lkqLbn6yVvOjyS5YT0S9dr3ZGzMhmmS73rPsBgaSfvNmVi5P7fO5Krj+Bqkmlwp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsvg1AxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsvg1AxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756886993;
	bh=W3466B1UEpbDGPYZBjNeDR7yAyua0S4OgLhsAnh6stI=;
	h=To:Subject:From:Date:From;
	b=gsvg1AxT0TYIxGbkDIbOOGYuQFbBS7PgpsD+ljIFkiqsZ+EtISX7eEeLXDlAehaAC
	 T1sh0r34z8jkMH+zc9fOvtdvOPmjzbaDx+obLhM87+Wyy/CWoAzQUdgMexRkHGYpHg
	 iFtLbZZmAmVn/4EUhRssqX4VDwc8T6qm9Rr7jqQnAaDkR9v9KaOo9BP+BGmG9R7mMH
	 ohXIfBHagI+O8s7xkilo7BRNqbOy6W6VILl8szlVfFG9oRhi3kk1eDAfNX6e85p3EY
	 OumHOPPirrWj8MApVGGfiG6w466qnAyRypUDWd6jx9SvC66oifFUBxk88JxjyQ02rD
	 vQhB5r3SJ9FAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F867CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688699357.20799.387813729862121390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0b77d34fa3f42e00a81cd85c475947801a10497155187efa7d4e5caa758869
Date: Wed, 03 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756886993
