Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176453BBEA
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731872154; cv=none; b=Ftn9dGHiux2VSt9dWD8YDBJnu2qgSIL87DPkok1pFqOZ3YZ3p6JolxmApOL1dl9jVT0X4KHn/djgbWPC8ciNYPV69ePaTxqbyF0UGmHRldCuczaOZzV55s53oZ6GMUuc/UFb5ydrPz/k8vW9LUtWIt6MEu+jUwNgAs0lTRuomHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731872154; c=relaxed/simple;
	bh=0Qv4savDWiLLS7zZH9RZkGW7ApVuFsymZHZ0Wksn5jo=;
	h=To:Subject:From:Message-Id:Date; b=XXwmG00OdA3zYvexmARjJCQjIF2n8H21X+9jSW5sBzaGiai1M+pp5mQQJOzCz2H/IqvdLpamo6X9krUoMqPv83xXMctqAh4CbBZIRRjTMdmqTpPJ3gzG6sHejCJzojeK0bfzKfOrW2bF+An8tS9qooPhJCPhkLHyaU/XjFFT9Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyGu5kNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyGu5kNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52DEC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731872153;
	bh=0Qv4savDWiLLS7zZH9RZkGW7ApVuFsymZHZ0Wksn5jo=;
	h=To:Subject:From:Date:From;
	b=kyGu5kNoCFynzk0BacF//r5efLg2U7BwQhZtXXF4X95FoTxtQQexdqRgh2w1fx7t9
	 lY0UDQhSq6BChNe6ZJ4HsFOoV7yn6e0UwuPGr2zrlOhh5oekLb3/jJCHiGaYA4FsRV
	 xoETbCJl/P522uFcPrwngsPjfV6bZ2bdAz5yY2QD2+W9M6kSrTtDdHQNadOntKGpB3
	 eEpI4SnC+p1fXUTNc1fYjmx9ugJks/CE6SUI/38c7FeVPYBkhdRWMImQWUutwDuCu4
	 B0g7iGJUxnJsdLSXRIlDI9MsBo3RnhUJH7C+tuVBkGp01zZyN7isPG+G9deL/oaemL
	 etCsk90nhuW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C7D10F28
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173187215358.25372.6876121373188778332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acac48dd8242763ad8e3bcd2d63cf5fdeec147d5d65d40b90aa9f87fb99f9e9c
Date: Sun, 17 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731872153
