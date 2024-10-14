Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3995D149C57
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728905154; cv=none; b=ro6i2Wa41//p2xKeRCaqKzxJnGFuRXMici6jgp6LchIXt15DXRH9TVbotuvEyxMtqJBLlPh6uYiEVjytuSDrm8mJvb+mOnbNmZ8IOFnfKsjWhClCY98d7C2vJXDw8IXj1mKvyhcH9EXmtcdn7Cd9+LgnDBAZgnfvbQRkSWs6bs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728905154; c=relaxed/simple;
	bh=35bUDGtUm2u33GlaKi3/2/Qrmr0Upg6FwZkeUH3T/9k=;
	h=To:Subject:From:Message-Id:Date; b=eQxe416h/nA2xQGoGVzXsJOoeGKq4DWYyWjM5ba8pyycHhY5QWPtVY/CreWL/AxQ8JiyOdOKmNxdnNIRM07VQYpyU7i29n5mQjtIGGdP1+KTFskeigR+WzO0QS64oEbJq8w6tBjV4+rAnijDnij5KFg5n9BY12Hs4D7e1oUfbTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4vRwaoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4vRwaoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61A3C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728905153;
	bh=35bUDGtUm2u33GlaKi3/2/Qrmr0Upg6FwZkeUH3T/9k=;
	h=To:Subject:From:Date:From;
	b=K4vRwaoVtCBABeB5vcxe8vcor4uwo1fB6O+o1LY1lHk9SOwlkrWyopMrtC3k4bmpb
	 Azeg4rCjaLOIvE+Wbh9o/ibyedFboEiOcy3qzu+mgUgxD2w6cfMTMsgGgoyQwdg8uL
	 Pt10XTp3e97FECoTASGKCoChtsH5gXxSohC96xsXQ80DYi2+xRPVnqxSiKT67V92gv
	 wmfIuZQpQQHGqcCskWwCP0o2iWmlP2DqNucz7QHgk22++3ULraL2Fy60yWeoFA7+L7
	 2ec+AcowweweYmCZAa1Ns/hn9mYX6XorY2Z6DEIYxQcJttKddHWcgK4ZHAolWfwFjK
	 XLedqNGtvSnog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D671D16245
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890515363.22153.15876679812039459777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c5019c41ebd6e595433fcbc03379fe031c40444fb4296027403dd80c1f8e73
Date: Mon, 14 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728905153
