Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBD7312839
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760968794; cv=none; b=tk6vttCcbIEFvKNQu+TGglduj8/ijv2pejDK4w7lzyL9ziNh1URq/QG8JfWMxxbsVMfZhPhFVWwVDzygay/Lv6+AzDi/9DXy1QMhS0c1kK4hh04aymRofwDNtnh3zZAHOYvVtuDygy24ccQDzzlWxxeQmEIEx0VjL1krhyUaTPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760968794; c=relaxed/simple;
	bh=7bZ3nzgU9OHfphj5vJyEP9UHKHUhSgVGGUKgSaVT6Ws=;
	h=To:Subject:From:Message-Id:Date; b=LfUVnyy0P+BXLaBGYm0REVBoeCtgjIyw1WCNE2LfJeCCUd42KzUMIkEA+G2ZUoUgMIwzW2AZA6WWrotEeigaawxuHnMkPEJuIwwnv0BU4KqqiQqMF4g2g9wQOl22ZYqmhD0+JIg4hFkCh2us8UC0lVS/VbibUe9HDclxo3hypo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aauiw0ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aauiw0ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF9C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760968793;
	bh=7bZ3nzgU9OHfphj5vJyEP9UHKHUhSgVGGUKgSaVT6Ws=;
	h=To:Subject:From:Date:From;
	b=Aauiw0hansLD33/Dhu6Flj2CfsRGXNW+2Wwc0/FsDYiuKRC9iIfMLXvUetSLKd72B
	 /ez9aAF6OlcXMw7KiwqxmFWEGMuK0y+y5I3F93zyN5SpDdQUMVkoOAs+DkSHyhmuHc
	 mGqHDVzRQ5jieUrxM3d/pbneIwajcuqQZvRC63L2+YnxrdpromWS91vBqmD9fDT7/a
	 Ztvk8JYl/kCuTstby3xKcSzpcrSIDq0c+VPU5Ifj0pFEbuOAqiR0rqNbZgQ8LZznKQ
	 gDgnzb4nhsj7knFdyyrdzGvYXahKnWX0PHfCHGqqL2FO68n0jIb0cSlaDxhrwyFLjx
	 vaYo7ULdhnZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A4CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096879357.11440.10908631145979734548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8864843fd322663974714d271c11eb4c313bfe7476c8ecd5ae174fbbfb20c4fa
Date: Mon, 20 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760968793
