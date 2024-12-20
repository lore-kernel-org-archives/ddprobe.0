Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7D21A43B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734709554; cv=none; b=nkRr4l8MHT2AhkLUnj9K65B4kbNwZh2CTA6RjyQnwJd2Zw4xOqW1Pme7KuPMY6EuglarShAADQiyxhPR4esLFOo/u8GhkfP28UhM861eWf9Pz9tzZ7Gm7elLQpiG7mJSkTx4sIOu9jdMy0mJNgFbziNjymErebgmmEqTLypUk9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734709554; c=relaxed/simple;
	bh=L/kn+uezFcMBsrMUkhO5pZHrbqexKwVwpG+04vvvvJE=;
	h=To:Subject:From:Message-Id:Date; b=kKo10vb092ETOaZgqxhbCi9qZmRa5n9eQjZm4F3ie95+ouEUgtfmHjTQOadzL8Na9TWSu9Zfax7fLCMxLnwTXG5bMDO45Un+KOOWYfkFKlEig83D4QqRWaoVg+OXP4/loE0AJ34nxhkfd4fJn/IaOLMXF6fRGHBgPGrD7Myk/Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkjNVIRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkjNVIRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC06CC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734709553;
	bh=L/kn+uezFcMBsrMUkhO5pZHrbqexKwVwpG+04vvvvJE=;
	h=To:Subject:From:Date:From;
	b=GkjNVIRrKNTOocoooe6BwRVjKZssbdRGWOTfipftP86XIVEsnBSxx0fio/xxDr2UQ
	 NXfSYocgKCjlOduxXeuP0yojwhIuK6m6kDmioHtbSgD3bqKyIN781M70I0qKQ51h9q
	 C0PCFTOTzgCzOYg36m3Yp9J382KpZ+OHYJjiI/wWTfaJ9HOQ+TEtE5mnMybyk4Jcgk
	 iMIxVkGrY/cffOvR8ck7XEHMKzeW3a9tviWiGPaEcExAOH45nJVCdT5IUYXV3wYFe0
	 cPzG/OQM33+l9RDlkjiUvj4sf5QWR/mNZfu0CrFQQNh4UoSzGWRZJgeGYZp3jVki7H
	 p7afjtkXjH5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F5FE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470955360.27864.3097353026984924950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f752a3d459c53d50b03286e3e07b4c210b2a9980de0750b9083c1a1831b3e0
Date: Fri, 20 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734709553
