Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D36212D7C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765260174; cv=none; b=T2LtqNtia8ZyXLAHdKNi+Hbvr3pDFobr/1FJnK8QBuxM2KnjAk5RA/TN8DeJZGhhycfxRR4V1sd09PAZBguXqgNPJge24Z+gxq7xcztzmAcZ2Gly5z7pCVj3LB70z5Q9WkAJRfflQ0r10vXjXk1QV6X3jaWq8Js3zm0dZ7PINHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765260174; c=relaxed/simple;
	bh=RigYJxF2ZyeXW2Txx7Yaa6gmTr4uMMrDkcuHWYLvwmA=;
	h=To:Subject:From:Message-Id:Date; b=MRSgCTJgJEAzGV3tCF/c0mkAURtJfOYBsToMYc7HGMeQxnf8BVTf+FYsPTyZusyE2Dl9pAnPSZLrULQMb3gDToBB1y2rFQiRUoBgGaaFfNVlnn77pIpQk80spFgA+duD86xJyLorC6eGo10uZxhTwPGq8YmiqMqukKEZhMoPH3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL+6GHF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL+6GHF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A016AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765260173;
	bh=RigYJxF2ZyeXW2Txx7Yaa6gmTr4uMMrDkcuHWYLvwmA=;
	h=To:Subject:From:Date:From;
	b=BL+6GHF3Lo4DOTOASp4cLt8o25jrcj5IxxJ38Zg9DXmO+j40WbWE2BBb4Hc37rMJ3
	 lCzK4+CTONrZjO33WjlpnBpX1Fvgaws6sARfYL6iPENPnB1pks6JJPWYBJQ5vAkeMP
	 i/JUL803gfjY6aKz3BdqLaZF99yUSAoEhoM+fyEuRnqttJM4/Fws2mp9n8ORd5Mopc
	 cSSJSpne72f5Znu4napBoKV1dpgtHFG/QqB7o65DerZxVn92xRYqtafHSroh/NfWd5
	 yl0cB9oaHOciOluGtaJz+my1p+5WkaNN+pm05cGa7rRYvdyEoD011rcNTQZJpfUWix
	 fp7XpHWPVMcCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE10D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526017358.6831.879551364959144937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5b1cc37aea5dc967a1e6e0cd7af5328fa4d05c7076d20d2174d56d7fb88887
Date: Tue, 09 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765260173
