Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4AF10F1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751848794; cv=none; b=m/FAfG95d+2gltYL/QZqE5g9cR8qdZsCwrIr6F9xTgHykVtZs5QBiGvrjCXJRcuP0LAakXPLwEAJPbG4/NuTy38kbvdsjF9NLXCZQHvcW0DLzk30W66+HOQV+XCLnHaHUoZ33fVxXQrpXpwHMHUyhxJHyRwXJQMgoMUMSS9jtkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751848794; c=relaxed/simple;
	bh=YEE9Uj0n4QDg/EiYlIKj3C2I32hL6F4SVxH358gOqz0=;
	h=To:Subject:From:Message-Id:Date; b=YLkAwp1SHOSa4sIQk8YN3Uyp+aE1NOk+5kQYV6IdSsoebyHTV7TUZPQAB2Ps7mX21sv7qrDO5UkJLARWiUb3ExsuA6boUDOvwWv9GPKhI86t+E3Vzbul1hoKAsTjAVKHwTbMPjb0NHKnbOXPzZU8dXF1leFZnu+KQqIQAN0+fRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U081I1aR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U081I1aR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB9C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751848793;
	bh=YEE9Uj0n4QDg/EiYlIKj3C2I32hL6F4SVxH358gOqz0=;
	h=To:Subject:From:Date:From;
	b=U081I1aRRu4JGwL8YcBIaIL2lScxJZ+vY566NIZh+kPVnYH9iZCbJKbD9ZO5VDa64
	 Mi9dqDBSDByObxS2PBAuEyiy1d1TU0G1XNdMfH1Vwxra0XwDmNCMv7Kz0F6Sdo2qtK
	 ylrprGBXdly+sRhgxkfenPgg+Q6+P6PsCwkT+/tf7Cy3gV7ppOkeaAvXhSaDyhKO4A
	 q7g9MAKxvkPaMGY6hlaVeRV90n5rjf74Py+Rj1cPry13LTXWI7cw3uvBKBJUXE2Q2s
	 YrxZNQRRD48GQLArBIhsJeJrU0dxnXAyJEE14ca54D5vRlfZKod/1hPliQUewAEmi/
	 FNmOwSCMLu1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E366C83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184879357.32628.7524391607561369247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3082e335cf3d7ddbef330e8439842f033911afec1af8b3ce052e58cb8d9f4f23
Date: Mon, 07 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751848793
