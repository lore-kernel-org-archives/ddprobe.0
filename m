Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBEE3AAF45
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786159834; cv=none; b=LOUJ968/TIYJmQQtZUz3+pLw8/b01/MNNfJC/+BxCajwK2V10ye76598rX9dlua+AigAHIx7BJYenM28cJnx7llaW/1MEM+t4dVt3rKY8hEp9HrTWdm9HjamnXECyVvBbvnIa39x3dfMZMgt2AaOuZj/2ZGEiwFvOvQnUBU2gHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786159834; c=relaxed/simple;
	bh=1x1J8izuK0iKmgtAbKowcvb5UzvIIVCalKeWeaXgufk=;
	h=To:Subject:From:Message-Id:Date; b=LDYvsqwgmgNBiiYTwww9ZEIWV1oW/qPPzB+/eK+hp49jIuyQrY3BuTgHIcRujht2pawUWfvHj92rE8QT0I48PrSktCHkNAE+CzKmmit2mqPt6a8oqI0hGJqyj5z+DnF3ZAP4eTS3m0jWj1k1MS/kmjRygOOfdAthRUWyKeO6AaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owRdnQza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owRdnQza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48BFC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786159833;
	bh=1x1J8izuK0iKmgtAbKowcvb5UzvIIVCalKeWeaXgufk=;
	h=To:Subject:From:Date:From;
	b=owRdnQza4OAouG4xI9VhlPo+w+vkrPGODLHdfBJ3ct2ZKTDFPix1pzemDGrjGUDG2
	 ay8xNNoL9KYovfIhl6WBmILosqgedrFicD3VmGg0uGRuuoX+on0yT96NoTq5U4HJvl
	 1jUp9N+7bxWhcCKHtYcypfpOVN0AEo3/KBErBRAFBuQK/2t6oWyr729lMDLOEOZ3vc
	 P4x/A2GjyMXpMkyK3kW7HoES3SPSGBClc/RVBYaLxnDGyhvdkxup1r/T0PqE2WR0nm
	 b40gIqKymMsergJmpOggaYnJH8+VEXMrMpAe9X2yH6vXh+gK4bUW6vE2mYanQvzKKK
	 7qImiy9R8TUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5F3C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615983370.8868.17181820981499895962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451d24b3329e72d1a62976c83cdfc8815ede2296c5af58dacb4ec7bccf5a1cad
Date: Sat, 08 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786159833
