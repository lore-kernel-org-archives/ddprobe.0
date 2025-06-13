Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EA921B19D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749796793; cv=none; b=I4wsWd1Y/Wn4Iaqao61olUAXMdsWqw4rWsRBPpwe9ee7r+5kTJUk/kxmBaiKoDDKUzl5tWN0CaXdgdk4A8OCIe9YhoSov/lEmhqGdj9RMCBPNe9JKzzKTPujRz3TGq+fHKWm31ozpvFst9dA4BoL9YwuBLgxL1AZJuLWqAx2T+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749796793; c=relaxed/simple;
	bh=MtxlX3D5O5K9UiNuKTV8+k1o52lYBwdYa3VW9CMb8b0=;
	h=To:Subject:From:Message-Id:Date; b=KjeZ8ttYLFRShDu2xPp/mSzisVMB8hNJa1C9B3Sapns5m80ZfxxnIbqjuUaDbjEksc4TWTzZcFeFxceojwbx83CYi5W83Bm6jZ9hCN7E3Vc22pPVy+eLyUQx+aClI5kgsOuDYWdKV40F8d1PP+LEA0ePiZHFz7ymPxP38DrPkuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbY+4JAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbY+4JAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B406DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749796793;
	bh=MtxlX3D5O5K9UiNuKTV8+k1o52lYBwdYa3VW9CMb8b0=;
	h=To:Subject:From:Date:From;
	b=YbY+4JAOYtqtVqhChuSHcbYqWPx1hvFUv8iutXDnTFwl+xQsVR67SoQlNOcFciBW1
	 M4QTITOJLwMkQ5QEIAaLWWPvWH8c/A4B12qtV0xBPkrAifkMdQ3wAEBLG0Sf9qVNhU
	 +6Ud4KQ+RyBoBYzE/cTqQBgcNI0SIsrrnj5+eo5yW7I4VX7DkIRUjOj/eMEV5Fi3DE
	 ZLemkkvdAVAz7gK/3eazfYngXgJZg6rEMib1iGe2jhpQF7hjoNBMOLaLBhwxWAZ1Yg
	 HsgABNnpAz8nFu1rtA+kn/M/4MznLfg/ITE1oDsQOYSRBqnLUXUnbf+3oLUsgS8Z02
	 dK1RGQ+FpTR0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F846C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979679363.4945.2929016248464248966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1108918e7578bfa5f7d05f7d1f373555cab01d42af542b74092d4ca0e9c3d22
Date: Fri, 13 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749796793
