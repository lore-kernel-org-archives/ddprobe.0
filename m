Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D6914008
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711261097; cv=none; b=iuM6TUl8Zu1e6XgvCiok7rl49gwv9XofUT6YSvKItP2/Y7Y1ItYPOCdwZnqAH6Zs1rKeMTsg2tPG84A3pWyf8/i/i5GdqXrrcKIG36c/ScC+tyBy29GTwMDElI0yyMW9Sd8hTSDQngoCvKSUY+UcGgvuBsDdQ347OI4pVCx5sOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711261097; c=relaxed/simple;
	bh=ZzEfAS6QtCR+HnTqZe2DwkHWevrdypDKcOQWSNjlTho=;
	h=To:Subject:From:Message-Id:Date; b=a7VaZSg0IsrQP/8i63uwWd6HbpNlggVhtToMSC54/5B/UOV+4Kxe9LsfyeVF8Gy5HaORGLzFNE9ZP0ApyF6+7lkGsyXOCvkYtrEul9f4t+hFZ8dW2FVOuyAHIEbTX0Egqa2hw//L0y393TaSB//IYHRX1MYtXqpBoFYMP+NpIig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENN+Cbr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENN+Cbr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80954C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711261096;
	bh=ZzEfAS6QtCR+HnTqZe2DwkHWevrdypDKcOQWSNjlTho=;
	h=To:Subject:From:Date:From;
	b=ENN+Cbr98BfGOYUsGJu17uaeDWC9yV9WcoctseW1PN3pAhfviih8t9YEkeZraXrAu
	 VpJvCkW34IVhkngqDwQlFwvML3yQpyUobx1uy5hiURT1mzUBXJP59wxX8qEJbK8aS6
	 YRUiO3z+vHPzEXyvulXXotAu5lY/H44lrGOpYjYgeh7RJrGMF79ck0Yd8hrsmUXpn3
	 K2KNisNASe2ooTUWJQiOd3NFCZpolFhqo7g3pM50uyfO+kVsTJi36x0xRmxBL3ouRa
	 zZLQiGbCSCscmTFJq6AO84638seM2oIZaYOUj5YlXqY02Xh6p4/qiq1DkAmXQcu6Rb
	 WHWBLWX4AbQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DA9C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171126109637.29364.11319115119623036185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad980c21cd9c86dc5340f82c5da303e9b8a16d92df74919cd72f6aff7c0b80f
Date: Sun, 24 Mar 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711261096
