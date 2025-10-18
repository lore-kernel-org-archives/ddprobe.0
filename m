Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCE71339A4
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760773194; cv=none; b=hEWEMP8LREOzgf+YMAPikrUGTVdzme0h3YanUD2Ax/c0QPfsDbXxM1RPEn6HjTHS78P7MGBDWxEYzhlt6z86+/BUtz7biea6kBcxrmjDKKaw0oSTnNPF4wmQc7BFEPZfzuaemoT8DyRgpxqk3mTU19a0AVXtz5amYssBeiB4DsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760773194; c=relaxed/simple;
	bh=vIx1v+bFj2PfKjl6dVtsO8/1xrzlibnQK4JzJRyRTvU=;
	h=To:Subject:From:Message-Id:Date; b=tFjKhXxPxAi8+PIKpuopjrSjiVqhDQ7BLFsaOuHxbLXx9Ac/L62kadHPue4d1OEquK2B5wIAY9RDrjf0ttf1+ZI+WMe36jSIEe69m4LnecjYvBGChU9HwzMkbpM+qWWxntf6EG9+lJRFObqX41OT2slIlF40iqIOq9y+ojlQx7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty3W/MnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty3W/MnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1BEC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760773193;
	bh=vIx1v+bFj2PfKjl6dVtsO8/1xrzlibnQK4JzJRyRTvU=;
	h=To:Subject:From:Date:From;
	b=Ty3W/MnQL3fP5DlceLPb1Nh+749xfBNmmu1XNQSKSXQ4sivq3W4fb8Nvk06rk+Hfd
	 LABdjqVJgnUXFwjHjXUc5MO2Qu0G88jmzgBOaGQpRQ/OYAig6ai3eFtWDWxiHzmNAl
	 FhfUUFIY8XI3AA9s7PDBvZaDgRdgBPYmJxdpiuwbY0S/aZJlv1mNuO6YNhl2nvK0xF
	 nRzIZ5OyUQGEWpxynk1+fxpo1qw9BJDC8QXFFdyspkSxF2gvbyWErIfjwlm8yNPurD
	 WZHge7yKT+H/1riW1IG5RKXKekyfSpC6uu33TpokynNRkcsz4WA5VB4aj1FFLk2B6H
	 mcuuipDnIPIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95174CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077319358.22876.930845976884933697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e563cc80872a2bb8f94df692a10e56450a5d387a0b2543670c6eacce96691cc0
Date: Sat, 18 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760773193
