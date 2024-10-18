Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C2517E00F
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729234554; cv=none; b=QHJC+Ld1NVcVhydp6vhFd9AEvXCeaSYRsA2JTQs9XBD4bP5Bqre48kXcc/ySKMdEhLalrk7wtqQLaqJI87wzwrWnCjW6CmbzPn3m133H+F5LhOeb67gOhf4s8U50BKxGf/eDT+tbJWn9OxeF7OAq8VXWBTrLJSyzsp049RnRK/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729234554; c=relaxed/simple;
	bh=Wb1tlBtPbrG8BkRE9MFyreyrkQVKfW7NPUMfmZwR1aI=;
	h=To:Subject:From:Message-Id:Date; b=XcHCSEwT+GnOqaiu5LwnvylT7n/3HpCPzJs2HHVNy3TTgC9tjXTefLtvoWqZdcuYs3b0n625KNX8qYjJgj9E2R53xLbavrviIQiPkK2MeDcuvG4sI8rtSuSudL8E2JCAFviClFRAFrtbOn+r+JvEl/LctTmARAVDzuWnmd1ceVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTwtjrVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTwtjrVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF891C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729234553;
	bh=Wb1tlBtPbrG8BkRE9MFyreyrkQVKfW7NPUMfmZwR1aI=;
	h=To:Subject:From:Date:From;
	b=PTwtjrVVBFARyliZ2EZ3la7AV7bE2vgGVHifjnZn7mjOeilWarTnlW8EYdWvokgJt
	 ultF8y83U1L886QfWSoP0wAT6AYSW2N5aYEib0XADNIo3xvcC9NU+7KFn9Sud48maU
	 BcQEsIusH5w5GCQzvssPcrtwKB/qTOOMC/GFMbZQ3/d79AXT5Dwiby/tmmiK5XlTot
	 tBK7SifTWh4ADPum8NILiaJ2zzuiRfKTtH4N1TGSHEV1RUdIohlYk5XsT3nDNg7lK5
	 hG70CRSFbe6GzVhunUVIRMF++RDkN/bnj+Y0kMwb29hL55VqZ+a8WkyhmMcBXzD0Qf
	 Kx47QvbCLKtYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F36D3C54C
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172923455365.4491.11268785928566056505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2084f8c657b3d441ecc7f21fdbb283dd8b712b0ef850898866fffdc7af70d9
Date: Fri, 18 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729234553
