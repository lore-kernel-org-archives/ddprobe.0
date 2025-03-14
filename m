Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6361C8609
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988334; cv=none; b=QU5vl/QfBOYd8LnOR54avrZQ+HkLcgOQK1E+hrjTfigi+uhJQAqcYMdji+z0rU07oc/ea3ZsLY0cQARbL1OSYM0PvDNxrNMt7VZB0/s/WWsZwNJWnNoOSAmDAlRaZX2SdlFbXmb0h1UG+qS8EaNzzcXgCn8LFgkUey1ploqrBx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988334; c=relaxed/simple;
	bh=4YF3U8Pg0i2ILLSKXtiKnk55nWpGe1sTKK/+xQRHu24=;
	h=To:Subject:From:Message-Id:Date; b=KZ5cTC0XBa0aefQz/3Q3kCrLKNE7lRy97QXDAxIxBVmnov/aUO95NnQJ6v5h0wmFvJlX9h3nmoqmgcplti3qGt6tO3fzPDjcxIiwv43NcioiRYhs6xJuStWuWbv8S6Iwzdr9qlCM9kteicyZ9wn952PZsyxuYtq8vb6sfetOmMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6BAQPwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6BAQPwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA0FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741988333;
	bh=4YF3U8Pg0i2ILLSKXtiKnk55nWpGe1sTKK/+xQRHu24=;
	h=To:Subject:From:Date:From;
	b=t6BAQPwkWsNsnhT4gqBqxqgUqCL3IWUxphpEnXQWc6TlQJiyMgYLH8upcHQERBy6D
	 k7Lg31YLto7hySV909zc7GC6qKNuBrJdCR90LHDWR4Wt5UDNQq8jqlY6NQ4FtZG1pB
	 DQr57nUp0oVKc0dDWYoLrekr8aze11B0Xy9eslBIDPtIcRyspcyndBbZAwpgtRnYfv
	 Dn+XUk7ZZwAeptZ3VQ1prDNuugB/23pE2vsJUdWFr+i2uGUMSiMim9M0DtDqhmgiAG
	 I237i/Q+Kb6mjHqj1zWY+FnRhexJIUjt1/JEgG8M92wb67WIew6MfjHjfpTjWTolMR
	 CtntbnNp91veA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB286C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198833375.4273.2140371284947137351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3e8b8cfb151182010574f9d564d208e5a48a2b66f06f4645698d55911240f2
Date: Fri, 14 Mar 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741988333
