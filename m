Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BBD1CD32
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721936754; cv=none; b=c5wdEpIzQXTT78Cn73OwR5OnWDF0/1y2B0ncwee1n02uPfckIExZWptMlQKfC/B2i3kL4yH+hcRmaOhiUZ4Se290ULHOA4tVBWrd3uzYbgFIQa6uH99VeSPpb7zortjlBDKAMsHUETdoL/LiCzVeRI8szXQx0yikwMiWdZvCDc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721936754; c=relaxed/simple;
	bh=dXtozrjwLKwfjiYdlGF8WoB/t6Z90GDQkcCvWugxYak=;
	h=To:Subject:From:Message-Id:Date; b=MWesJj4fLhaql2+NrTR/O1rTvdxcPwzLSaE8P98Eggho5gqm7+gP0QKIrNFTiXHnoUHaRP1sITtNo+56Mgf4qG1kf//fiRgEbWsvZ6V6YJZP5rZtieU2yYrO6UXOqtqSuyTTETcHc4QH3GEX+QoDfeadufaHEWrRzRU6Xl8Z27o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhwATO6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhwATO6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DE6C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721936753;
	bh=dXtozrjwLKwfjiYdlGF8WoB/t6Z90GDQkcCvWugxYak=;
	h=To:Subject:From:Date:From;
	b=YhwATO6z5RvbRmHlYIYQIY00C/h8FtH/sGCSmY5xLTqJIZWlDy4rzIUXtHXcPA50W
	 9VE3GfZ4TVCTyusO41Xigt/a8ISMsB60YplckvD/ShCfMA10KmY2jz80avaSHeQENh
	 FwdPopMpuahygNm4sF8gyFI7WCts758q51og+ltcCOr4yoSxj13+M76oJatp9VYWR0
	 AjnchglNTzfs76RK+PDuiY7TUsijFtZxIqwSARBlex/C+g2bsH4K3oSdQdZiODpitF
	 ZFBbbkrLK1Ro8ZwdP8h2hDqKkrvB+VD+FtWiahW/cR/QcTk8RYv5s/Wm2GeGggoH/P
	 5M9L3pAFrTSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AA3C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172193675362.26199.8140300295658651033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527525e15b3cf94b23816fe6c963e75183ba7aade094c456e4255d989162a9e8
Date: Thu, 25 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721936753
