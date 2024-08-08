Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D5145B3F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723158954; cv=none; b=gsfbMzHcw5YNk2/aZlePG3ONJgk/yLa5tAGe9oiCvIljnHvL9yEYDuDMl6fJ/M0q6qlDe7JNNW94OkBuVfM+nu2nDWnh7GOF10YF8g3tVwE5FOZLfxUJhVJ6yy2BEKj3AsQM825Z6Uzs6YETYXxi72Nh095ZZx7HedUQpyt+CxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723158954; c=relaxed/simple;
	bh=PSn1BKQeALpdfIvsVUtL0/NXSzPsmQ15VOxJ2j7On40=;
	h=To:Subject:From:Message-Id:Date; b=SOas8tvuIY8D/LrqgcGSNCghOnA6T7UOgkh5zod7CF22Hgxl1vmH2Mh46ZYbpSCoJpnv7tZOE8pypbgfEAQuu3igsIEB7+vvbu5IIueui2L/34YBmnovX8gmPeOkGStrAPUxO9O8J74Xqq2r6H0poLKTznxxibUzMLZ1UlvjKCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSuIXfz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSuIXfz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FAC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723158953;
	bh=PSn1BKQeALpdfIvsVUtL0/NXSzPsmQ15VOxJ2j7On40=;
	h=To:Subject:From:Date:From;
	b=kSuIXfz3ljv97DNX813yC7C98dDrP4weJm8km21ZRuvXjTf9JvPPFThdN9SlFJuyW
	 JnwNje/u7Q5F4YeTtsAmByegRxJUuH9T3aajaRzzMuGDc/Sa3uF2R4hoxVbQnX7LEZ
	 3YiW4ZMPGxbtT5a0wey4doxqUO84c46Z1xXP4sOPnV1IYiIMVvjg3AEAPOOVhGKx67
	 nVJpfHT8lKXRi/E/TFsJoUfp8HoOeGfpZWvAWVduu0b7yQFHfRsxmk7tVv0b+01g/7
	 X80q1m83t1yE06lQGQhYxiJbKTqpYQ8wCtnmdwWow6RfW4T/6r6q05IP8Gm8zsOMV5
	 SAKRCRCpuVwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA57C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172315895358.14195.3358911739695622698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797191a2d2458baeaeb33a21c2efca6285e2df350674ba2886c4bdced21b572d
Date: Thu, 08 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723158953
