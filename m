Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B770547046
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790569834; cv=none; b=c5wG6ON+vw7Ox4hfozCiXSgJQ5J4Po106uncUoo/eJEDiS7Ie56Zhd73ubpuP8OZ8fYSdsMl9Z8Nra0XVUCHEWhRr07jXDNEtv8YWABn6uayY97AqP1kpHkt0Vl1XD0YzaZdUB45gWJkV5X1jJc2ygxyKIeYXlunazleuOlL2h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790569834; c=relaxed/simple;
	bh=Zw+P6Id9G0iNHvgCgS9XnWvrAay53+/2GwXqWx/yacw=;
	h=To:Subject:From:Message-Id:Date; b=D7aDOF4lHuGF9RzfCrWXo3451uUdp0EnJcBn74LrIZHwV5tSxlzUSfpQl0+gylRPHZiPd4N7JqIjssDbzQgLnQ8u8IXJW//AtTGX2TD6EJmRgnRNvmH1IMWq7rf44UFySU6cL/99rTXQHl5W2KTg4yNsrf4Twx5p7aISBVM3C5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r56yMw36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r56yMw36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3629C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790569833;
	bh=Zw+P6Id9G0iNHvgCgS9XnWvrAay53+/2GwXqWx/yacw=;
	h=To:Subject:From:Date:From;
	b=r56yMw36b9AFFCE8sHgRZt0acNw2WGRvwX1oipYB73G8OT/et2PaEVgfAdnQRnR3i
	 22bVpPLBVlVkSOC/Vw+vaLa9XrQ/reEll0WAqH16biCuOjRYR0fc532GydYIB8dfMP
	 ge4eIejT8mCg67hiKp3/bky1znQ29vRe+JDsyvL3lrWTmxpdllAXukT9VeX3Ad5kXX
	 z8ifTDNfihWmHdvCX+U3Hbz3XHziQ/O7LiEEDkFIaM8GqoQxpd4nhdjHOXd/blBTWr
	 8t35p2DSRaHlU+0oQwIcvNZ0EkqWtUb93TjKaa0jgy0u/C1KZy8coVR3TdU5Nd4VTY
	 siqf2ZtqFbMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFFDC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056983373.17405.17935250432530848767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45372dac69fcb31adcfef7796b3780476e01db94b997837fd300a2ca578f3580
Date: Mon, 28 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790569833
