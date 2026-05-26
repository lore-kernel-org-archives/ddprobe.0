Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D0B3E0C58
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779799354; cv=none; b=tCpO41EYI4ABvLG2PAXODLz73AV/qrZcvI7E+QOPCqg+rrorrHN7se1HmA4juBLrV1ubgS/Z8cgMNsZjHbL2xkqDwy4Ap21A//QyoRPSCuiJysRd5zlxWPV5A3GLWOrmcG4ZCcBVXL7Mlf7pdrGmMIiAI1TYpnOoMf/B+106aCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779799354; c=relaxed/simple;
	bh=uxVKnlgia6hPp+i386JS8nk8qyMmpE2QQSoKXQaAOT4=;
	h=To:Subject:From:Message-Id:Date; b=XTae6fZHeJPeXYM/kFjOfXPl7fbkaYel4ZIqfBhF/H37SE897+ReI/WgyZbT6W9Xy29c1Dq8Pdg+nL2o4KCK6e8xDkH55Pme3qL65CF10nJMt8lS+jPwgXENCIU7q1FBHaMogRrq+Q1AqoE6bnrToP5cfWmQY9UJPmg9xLwPs68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3kGv8oX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3kGv8oX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4620C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779799353;
	bh=uxVKnlgia6hPp+i386JS8nk8qyMmpE2QQSoKXQaAOT4=;
	h=To:Subject:From:Date:From;
	b=b3kGv8oXngqpjGhmU7k2qoaYKR0LwKw6sGO6/fjfSsIlAoVz7ufL+huXsTJA59adG
	 ZuXCtDV7JtQm5BO8y6vE34GiMQQ73/5aAzDgQiNOSGfrw9ktIHfeSu2ZnzMhEdpkuX
	 eS9Jloxl8gAI6dTDT35os7sbnA2cKSYgsmaO86RFXlAr3CWaG2EuGyiVqi93q/desd
	 dbMSZb+YsdlCDB1Ixs0Y1FaBXe118jmvVcn6YCTjnLWBJACKlmeC8m2eMpiGBH/RfU
	 GvhlPA63urROTcgsWE/YQZdtyHWR2eWWJmrnz85scEaKhIkJ/YJMLsg0PfX7djc8tn
	 9bilVzQz0+/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C14CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979935368.882.7502783118798231242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe4b6aececf53ecadd6704fc9c13030b9688365bab76c7c3fe74f18642b9e8d
Date: Tue, 26 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779799353
