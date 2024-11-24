Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C32914287
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732441554; cv=none; b=ep2aDzXEWpR9x65H88/Xq+OOqSrBF4Zmr/R/oAIX3NbDljbbryy59Ed883tYcs27+c3bRcy2VayROdVcKSmvRz/3+/h04UUCXy2uUio9pIw21zjMoQC3NgddilGG/G09+iYcrC2KqJ1xf/ahvhO7/wlirN2ClZDNAQK/xv2EuGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732441554; c=relaxed/simple;
	bh=0DO2XzO3IGW1znXMU3DWOcXM2fThsg/CI6fjCnASOiU=;
	h=To:Subject:From:Message-Id:Date; b=fxk2YqPNxmPqWK7da5M8+SdJpfRkuEGRtml8GjxftpObZyukP3lNbBPLbU0cYnbYKBs5K9xzVNWBvtjlGOD/WRYhZtTeKWrSjhMmjoUWqqD+4sJn/uVj8+SGE3rYOUFFXUnexrQ2KJj+9ANtldfYzN5b9CWKailVBswcNA88tNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB9xpZBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB9xpZBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC78BC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732441553;
	bh=0DO2XzO3IGW1znXMU3DWOcXM2fThsg/CI6fjCnASOiU=;
	h=To:Subject:From:Date:From;
	b=KB9xpZBO9H6lzaB0yPZVo5y+UwYMwV08mtsTuAbypVDKIBhaIwlyvS9+zeXgV3eWZ
	 2poQ0OZoRso98nFo0zMjqEX8URXrjG+pilxjOjROxyZ9QgcEx4CPmhIfd8B0nUM+kC
	 aokPzd2688csyE4WIP/dixYmWv9TYQ+udqUMRS8EYx3Btmg2Zf4egUJyyLZxnkrDX2
	 RCwpD99FwvWROH1z41agWMl5yKs/wivhlMOYdHcokVU3gj53aKeCJ5un/IZCFHnvtx
	 D8nOShCaB5Cvhom5wl9wj9B34DvS/Sao48PJp9htis5KD4Fe6BLa5ekIY4UdwV383d
	 0pt0GID2/VQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EDAE66894
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244155364.25896.17532166903912281680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3d22475aef2fdc309682a426f7cc6bc09683c727b7cc4e507b5f6a34060e3c
Date: Sun, 24 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732441553
