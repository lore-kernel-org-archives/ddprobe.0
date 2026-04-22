Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2405333E346
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776858454; cv=none; b=KHu5QGqfxjqOoo9wzb2hJdPhzRSnC+JNnqMyyYdyuNSQ8tlmSj9ZJdK1DxNFkAkhVlKxsV29sgwbi9RP/muR6DC8LG7TheNeA0ZYBK29dGxcJI9VZm8jqQVJHN02XdV7k06wE/z0PEqPGcuj6QtSlMpk9MsDj4dBfwVU9QGR5QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776858454; c=relaxed/simple;
	bh=Q+N1vfcUTs+HOBZl9O0omYwueYDeMMIFjz+YXD3brs0=;
	h=To:Subject:From:Message-Id:Date; b=rGV/a8aC3p4uHmfL85dF8wpurth3o9MPhRxiOSuqX1PXBua1oXm4i3tvMRjcFjq7nGQ/8TJGUCjdYfHHt6Q6my3mHe52J6TxnSSbzPUGO1HGZCK56gfiN0ftlfZtDpxSRbYFupakteRb8/4FyaU2Ht4+x7Jrb1KcjDZfGagDc/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IniXMfm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IniXMfm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18A6C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776858453;
	bh=Q+N1vfcUTs+HOBZl9O0omYwueYDeMMIFjz+YXD3brs0=;
	h=To:Subject:From:Date:From;
	b=IniXMfm2pHCFJW9VnEc36Ln5hovda0ftwUqSppZ1GnoqXSe6TaWT1wRsMEAHXS5Zx
	 BxvikofSushDDv8WVFnq9SUbBOQ66x4yn2Q+9qI+S33ZP4yBDUFNosSTq7yzOKwJW2
	 Ky8QunxsldGFD1Ta75MRTdtssPf71dU1ruEA6C7qTwi7sXXl+6pqzuwQlPJ4WrXtAY
	 VIVSGgTGZjun5hcWFwirJzKW0lepXX2twRgy8uivSEZwv5DgEhGA1QX+uI0xL0ZDPW
	 Lva1mnkUtyvVNkDoDGuPQiwCaYll9icAVGXZ4LpGf55XnxqMMjMelOWydIqyZwOwgS
	 Yy9vW/n2v2VAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE8F8FA87
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685845368.5903.4122162201199269020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363ceb006037ca648c91fc7e3f35b0f215a03574f0b9edce7bb6bf4c73a88b01
Date: Wed, 22 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776858453
