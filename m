Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837C21CD35
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717149263; cv=none; b=YkSYYsMCPrloHD60ambBBybpeEeX+9G8JnAshFDWdzxo94zaazqD9RlDd8chJ4cq5OG+rxaUs7s6gBxycqTmEl+4enV/s5kno1vSpY+D0mOa4JmoV7mJfCkp66743B3jYGdjBfa4z5Tj12r39O+BtWIGBZcU9Jjky8EaDVzNvlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717149263; c=relaxed/simple;
	bh=bEgPu+B+HwlAlSoYqJfa+aeyyV+zyS/BIJuJfJ9hu5M=;
	h=To:Subject:From:Message-Id:Date; b=KC8xPO48OFNVK8e386OIvirJ5ugbg2auGlzi+I1u53inD/RCE2VetYmXvIg5VkT47u617SFU8TgmEI63ZwG4yujJ5FHSy+2/pfK+zBOUA9dJSAXI9aSPCGEb26+nZizm/oLAK+i6ZmEa1CotZDG7xx+HKqqFboPXYkq4laFYdNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTu3EoFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTu3EoFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAF0C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717149262;
	bh=bEgPu+B+HwlAlSoYqJfa+aeyyV+zyS/BIJuJfJ9hu5M=;
	h=To:Subject:From:Date:From;
	b=OTu3EoFMoZmhMx3huus3zFR7U3rf610Noet7OT0T/TAQW/CDxkq22WQYr+tnzL2dB
	 pXtRhz+bxAkESFugKZteDSmYApDxrYrOal1R2j2+k/eT1mU0M2QJF+EICd3LNoVia+
	 rRCzVQzdnSwdeyKhlgt0VB2xYPAUxe9CID2jUEvEdKBohMUdGD2zyUisA6650k4Zz1
	 B64xhin17M5EtSess3tgUOCyfZJQ+A6bR7y5RoH4lL71ad7Z4BGJe2MnzHAQubwD+B
	 Dpkp//ylimvbLhq5N5rTPbwK3X4qxhV0iv3KCnzzbXQrgPoMlODfyuVq4gs9ZfbbIt
	 fFHWiXqUKIVbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F02C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714926279.6069.9759785359052874918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930de344936cc8352bede96c28dcc055d635ec4247008739b70906be0feff757
Date: Fri, 31 May 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717149262
