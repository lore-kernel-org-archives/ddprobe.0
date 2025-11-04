Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB924A074
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762222194; cv=none; b=AhxQpAtcUk0DKOQAagZvC3jo10E/pUjXcoTSxuzCeOpLe8/+Yq4wro1f/xphYpCPNrxsvL3VV+7BR5FIlACujJz2hXuo9P9iCyU45FuPiaGX7rUkbPYkTj4wu8e4wtlA93wx7qVHTi4vyILQpOTUx2zv6Cw37xVt3zDGF8UejHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762222194; c=relaxed/simple;
	bh=oIIV5UBjPxervm3lZc947KyA3mEgCMpBSj0EmHKoAfI=;
	h=To:Subject:From:Message-Id:Date; b=EAvLk8yfpLF8E0okRFJJ/NlvxJ36N0bmMbrZtL53bKoRnPKBXPxhcNg3TjevyVjVUV1PdzCzRQASNNNe0gogTrCbW2uuL6/Q2I9Uz48CCv7SPQZLCYH/59YpDrhti/7OpBnLosdswClc1B82nrKLQeIs/CtevtL85kXzJcHDU9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXKwFT+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXKwFT+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D5C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762222193;
	bh=oIIV5UBjPxervm3lZc947KyA3mEgCMpBSj0EmHKoAfI=;
	h=To:Subject:From:Date:From;
	b=BXKwFT+RoreY98ABDCInHyNesMyRFX92Nv3h6iJ15gukf2oHqhlYZ8XFlqHRi2WpH
	 hh+Z0u9nPwfnDOgK5RN7sR/itLYFnDrOICkjOqspvoltz1dAxE99hQxcGWxNCHdjYw
	 WEgLSVsPFFbakcqBgxzpqEP7ggugXCDLyvaXJiJ2GNHLjqiGoSuIULXKiBBfMEdox3
	 nqFrmRl8oNzCXkERVvf4Kw3HsQi7CtJC0SkYK/1OWHe61u8fM2/LAL/kOUi2vZnKi9
	 +je0E7N3owgtq6mZFXKbsWWhbe3POVyd4WuMRrpV48ZrXghany8KUvgHp9bUs2AsqO
	 fWUfFd4xVcV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940EACCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222219359.23055.16392360878709349792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23947d5db1bce786ae646de9a81bb6c74ed65df0fcb00e60c938a37bda8c01f9
Date: Tue, 04 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762222193
