Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611E7155C90
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719914123; cv=none; b=nUrjns6/k26FIA0D38x2gJxe+jBXqgpnHDSsK3j3KySKoK1cdM3Zks0oQSYFppuUiit59P7Tu1yINnuzKvvB18x8Y9wL+Nl37HfsEVaHSgdpsHTbHvAltmAmpDtTx0cKZfD4c2gj+iM5jQmpn0fFdJiTnVKBM8bgLD8ltWimFU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719914123; c=relaxed/simple;
	bh=zFo33ACmHajBRwTEYlxPkroHK/cyHoxnmuLDhXNhqoQ=;
	h=To:Subject:From:Message-Id:Date; b=WrFscMx7mOxjDsdHrgbn6OXAXscHHWKAJh0xkzDW5mceCgVanZERsYGOeH9FY5wHFAcN8F9e2Ezdb757kcxv0FztQvB9vST2YbZgZQRWu2pCU68ygLHUq2y72MG4ut455XBFpXg7Y5uYxmh1cioPbTROKLOTxHwT7JgmM1ZUYMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3i+qWPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3i+qWPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE815C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719914122;
	bh=zFo33ACmHajBRwTEYlxPkroHK/cyHoxnmuLDhXNhqoQ=;
	h=To:Subject:From:Date:From;
	b=h3i+qWPP4cfWoVOOSp6UxodD1Q0Kvpr5QpnLnJth+3SjB+at0FvkKoA8uyo5dUcGH
	 SWer5qBpaYfnmtQBv71LUk3XF5aTutWC2UioFhHHXu+Lzoebi3ImGarEySR9HsUHjc
	 kLNW5aYg5jHDHNDSI4w63sC6g9zlMLt7QYYTWSGNX+g0wK2NYMWrKK3AveRU0x3dp6
	 j0X0mmC7e1AJvv+q3Jkhucu/etXoyPCcl90Vk7xhERy0mSHgV9RGPfWEhbuO4Tt7ke
	 vLfXdIRirme8cMZnCJvgrYtyVGJYcKK0cJHoG9dtlJ8pbn2HSeoF1aTwE1AiXHOumu
	 d0RLsPTNhjQzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCD7C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991412282.14418.6565224031404723581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98423483cfbee3ad97a0d462c2a7ac6b5cbe1683434c8355a5d447ca50b09662
Date: Tue, 02 Jul 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719914122
