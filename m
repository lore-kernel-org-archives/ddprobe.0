Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109FA4CB5B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774484694; cv=none; b=s5Qx6oB17C0ZlBy94fdMjOqWdTPdIangIB7FQyG7wkhE/M/8x+bFIeKcFS4SLPuio4PJnEMfR+N/8D9zBdhFMrn0c/s0BMQuGLK9yTsTiKrtjeHWwFKOhYXYAWUO45thA/8UFpb3eLieKziph+Go1mamCBUKkczhHwqDeX1d8lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774484694; c=relaxed/simple;
	bh=ZhAayuapK+DvoG+RSsOgyZQLSgE6n9kSONy3Ko7IZTs=;
	h=To:Subject:From:Message-Id:Date; b=BhPljEosHYR3xRC+43WoK1ZNHlxAQXnB5oeeUgbsgydrudtcdjhSobUuN8dy436DpPg2n8u6C+pbX9sToLE73yRWvobAYBH0nXqE42WnV69teWLBdLHXWwd4AUhewDYbewE766ulx3W2yOiTnLjulMOXhAj2KohM1KpxbwWdtu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjTqKeG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjTqKeG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3797C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774484693;
	bh=ZhAayuapK+DvoG+RSsOgyZQLSgE6n9kSONy3Ko7IZTs=;
	h=To:Subject:From:Date:From;
	b=sjTqKeG9dLpLX8+xRdmD/x/nIAf4SFDifMDVgAmie7Y5bWStOERKCy9ouXlWNzaFs
	 OiMCMyu0zIpgV6LlWdRciOv/n8wN3NMAa/shML3VlpLL5FMmRhNV5X63z94zVIyZU8
	 BZZcJz5+fgWH6wXzlDLrREUJBGnN8cS9jnSWQ+yifAwz1i8CZXCHR8YH+7WcuZJI+x
	 4HFnjZy1haetrTq2zVpx1nXaA0jqShsk773A9VIqW2zF2ZvSYjJdVUBuupwJ0gMOXT
	 UtxoJxhGp45O6jzcSLmyRChiHGnlCbF8RDdrkrznRQiMGtUmufXr0Zt6NLHawRkeVh
	 Sn+h5qxw1B8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90706109E530
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448469358.21814.16701309770079873838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6cff0ee55ea205a5f2a346223c9d47004d8b8e44491b7a2de6b7ca16067a09
Date: Thu, 26 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774484693
