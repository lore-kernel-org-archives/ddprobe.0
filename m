Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35180101EC
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708573097; cv=none; b=UQFIo59btjiw8Ccd6aqxUUHte27XxjH0ZvikJk4vsbIQZvPUDi3a8fLW6e/XHGfmNygDdrHf8Vh1FWt9pj2WAwqMF+jGS9Tu2vmW7T0/ZXtUZSzBx31J6mS36jmYvQCBSBG3gvPGeMpgFtTc1IZTJYyLZ+SClV8+kRntGatZLD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708573097; c=relaxed/simple;
	bh=iNJrwF97T8mSdj19bQWxJIMIpks8cQcv5xc8nH6v91k=;
	h=To:Subject:From:Message-Id:Date; b=IjzIG4Hgh9l2R+WlnWPmEHwalxp1y6VfjfjsPNck1jX7IrT9ATks8vpg6ez/kdDlyQeuP9Jrl4lCwPJKgD7I+Gp6Gc6VDd/QUkLVRc66FEG+huBpn40Ewc/Bv8taK3vgrgROJUF2DKK6Ya/XZ9ts+aq7rVOK5Tx7VTu4h6BnQUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMSoB9xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMSoB9xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96F31C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708573096;
	bh=iNJrwF97T8mSdj19bQWxJIMIpks8cQcv5xc8nH6v91k=;
	h=To:Subject:From:Date:From;
	b=PMSoB9xcWrE8InB+vQMOHCUh71eTvHW39UtIauNYckBVjWmO+2lBRbE4yTK7R/PRj
	 OmCfcKRpHDfkyMMaYcEJOgVJtf0CcCclIgQcJ1dWizJZ+eHPLyK76OI7egHIVu8C3W
	 p7TwG1XPNFIXhRR+ix2zTuaociIldhdjz+pILKRzE8pc8SjT3XrQ9ZVieoF3ZURjOd
	 Rig4lOe6sKWrL74Fz0Hd1GGR0/o1ZwZNJ64Tk+CTeigVDtnmGkMKEF7zXT3xLWxyKO
	 U424dOJyqzAu+xpNLkpjxPn3z54+ls+KwQ4G31rqfLGNfOIeUoFu4JH3UMxIOkye++
	 c09VsazXpbKWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78266C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170857309644.30189.17199547030693500155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbe2e2e1f85cda36119dff2cac12067dc0a82b5f3b028759e6f94a17ba36751
Date: Thu, 22 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708573096
