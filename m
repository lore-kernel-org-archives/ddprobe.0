Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160081FAC34
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754044194; cv=none; b=k6aj0eIezXEfTxxKXP8qUb5Y5T2HxYehaFLsPvWfFy7fqH77KU/Eq2xBRCLiWoA2Sm9qquLy1B+yqhzckgHkSRNTDQJTHkKc0OWBDzQMnCFFw3c0BygBNbxvfY8OdRYYm4wtIMZJeO9/rFWkyENixg1EPkLbqsHeuGj51gMuCpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754044194; c=relaxed/simple;
	bh=B3rgF+XCkKvboh5pryESh7I1KT3oOvlP15JmPYfHDIQ=;
	h=To:Subject:From:Message-Id:Date; b=aoxuYMUAvRvcljuQNB/QvnoEQTr3RRODOV7QHdUmsjEgalKRsCrQIg5AfxclHNOgirAA465IaSVR0HIa7E7MhvAkk9jHlJPAVOEXQDHb0kqmtgVWS5NNK+yNNdAnDqkyh2JFi5lYKdEbTjDJ3+d3ou/Cw3TdvQ/i8wAqhUXpVVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVWKnVk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVWKnVk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3939C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754044193;
	bh=B3rgF+XCkKvboh5pryESh7I1KT3oOvlP15JmPYfHDIQ=;
	h=To:Subject:From:Date:From;
	b=rVWKnVk5A6UOiprvEZBZ8p+JnVFqLqLLbLmB3ZC0PyZlGaIAHHkonw3eZXV6T9TUf
	 zSXUJESDGl9LnbbA1iZPUszscneKqsSP3L7b4s0MrddqwiuHUp6+4GQUWa4WaBr045
	 mWueaJCC4sqn/xlc2DhdZ1jBTNxt8PnOnX7vxkmHtoZr7zjbOEc6SDSoAEF58Ni8+I
	 BKZSJ1Bdb0eoWnZxNx//KgGQ+ziNk5nfASE1Xb1afN81Xp4YDvQm/4zIEEN46Ugj+5
	 X2SIer+161Jw2YVCPyaWQZK+4e6OAkC4Er+/mWj17hivLoCY3D1KJH1Scs/0SdrjSU
	 rp42inSDNu0eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91795C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404419358.29297.14137168250944911013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc2b639f51f127a2b5cece5593b3a48c4d4ba22370973a81f1cebb55f948cf7
Date: Fri, 01 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754044193
