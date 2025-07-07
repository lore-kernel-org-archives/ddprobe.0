Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0F262FFF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751916594; cv=none; b=YepL5d4WRx1F1q5ThUjY2qFBrqyR6cYZwAVQcIDmZ/WRq5c8cz53cnQvhKVF+Nj93kO18iF38Ilb+M5RHMtVMWwDWkSwxPIEsIDjzhzlRXq5kVUOAnk6kz2fAPlP6jrVa+0TM7+8PS/VZl1OTlQh1yOnW84AZx6JExTJElO/2Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751916594; c=relaxed/simple;
	bh=UIFzM5+0VNalvV4s8DqVMWFfKuCXyCkwbQaLM9gxcVE=;
	h=To:Subject:From:Message-Id:Date; b=lTXsMd3dngG/8+Ea5WfztAyQvPX8W5T63JHhXWZGPXR2uHgC56FMJpnvdCb79gE1q3LoTQfFhMZlQ/wBe+U6J99axaZ+siEh0JAu0fbIUvVOD98P/bJkFAQD6ek8wAGbVsA9EUXw6Cc8AERKrEvB9pdwngDncTGbXqlt4Tl8/u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy0upWty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy0upWty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E0AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751916593;
	bh=UIFzM5+0VNalvV4s8DqVMWFfKuCXyCkwbQaLM9gxcVE=;
	h=To:Subject:From:Date:From;
	b=Hy0upWtym7YF2D6PIKC0bKJrE2h7nsMZ9WX05YXSFOJaAdYtJ6NWyzqd3hacVlkyf
	 rcST6NMuJDWF2rsE02Zxac6vEZOWMjZS1/KXaRQAFccWIFBe7xe53xQQA+ArgKv9Vj
	 XHZNmLcIY16lrKhCtnut3xEmGARhNbeaSH89xk9MyyvkO9tB86cvvY8rA2wmXvkZUe
	 795BLxQGIjSSmUzmThZQbwn4YnoLt4FuMFdy9ZnJeTOf4CWBXACJd+kOMZwXSHItEZ
	 drGFowTEdmgQoapqiPiGnycu2W2qQyCXY400K8u1abBs/RshLzY6p+yJUQEeDGTSOg
	 QlzVUPU3J5c0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD59C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191659357.10517.2859808251932862773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5d8ecad11f2af42afab23ac43971195245d17719aeb7ff9a798f64d89155b5
Date: Mon, 07 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751916593
