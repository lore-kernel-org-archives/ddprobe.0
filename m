Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AE51FC0E9
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742692195; cv=none; b=Qkh/xKS6A5HYO/EqrrJmtVCCeZHlE2RRTQ5y+e1paSknI/CO8wGJih3hJ1g5TMFAoFcN1Lpa7KpYIFDDBRjOTYX1NFR2ubvD5OX2ZmGZfFT1R9SC798caSyuB49UiDmcOF6z0dNYvkR0mK0Ln2wHkUAqeLdKBX+P6SCoURO/wRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742692195; c=relaxed/simple;
	bh=DuQd2/Th6rPRSPR+EHBo48SGlvTj5GH8T9wMg1qNIDQ=;
	h=To:Subject:From:Message-Id:Date; b=VncqvgXQ4NcSH+7LrvGIBn963z/sB/7VTBR0mquqQtuV8aMHKLKg3xeY3Fh+i0Ggkcv3INz4a6arAVD9ngqv66Ts3bln+r+54YGmANfazWAHb/dYxyATrKyTOY/aDJOusZQOrJM0jwBo1i1X2GMo6mBsyZoDwajGgwL+DhdjTeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B89DtrAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B89DtrAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DCDC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742692193;
	bh=DuQd2/Th6rPRSPR+EHBo48SGlvTj5GH8T9wMg1qNIDQ=;
	h=To:Subject:From:Date:From;
	b=B89DtrALAU3cguUlH+WZXCBwWRWMZCZqhSpS8CZBRugpp2RbsCVn0cz/UW44pxQRp
	 v04Z294YEHgYlQCX4UhmrdlzD13+F91aP5wx06cIZ6LpMfFCtgklj+n7ejuDH1rpsF
	 T68Yso1qeHeiUwvZqlTJ/zpx5Atu1IKRX7FQ6dj0Rc/UtsVYv1DSE89U7j22phQ4Hc
	 7udNAjQ/FACW2+HJbzimISyWk4cuyJv/9ngu0rRESJbOIrw68vkaHE0b7Yra8cjEOq
	 FA0NUPdTAdQpAQzgSjQmRwIclKshyNJSgGc2KH4CuTEm+zgCim5Y+uIaOvmBBK8xDJ
	 VzWU9mLXaduzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F44C36005
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174269219362.9361.3757953353310832970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef5952567f856824048b4f8ac010fa948cbc53403c3e8101379d3dd69f0cd95
Date: Sun, 23 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742692193
