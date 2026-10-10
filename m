Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9308339FCE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791606634; cv=none; b=HuScIeh5BueBC57CG+9VLr7ZotjDyNo2XfqgOGK9hKScJdoR+QpZBrz/DgNOCVl0Hn66T+WHxz1YT/Da42NedV5Cpn33Bi/UpG5MLctFMvT4y33aF998UIFfLFH/E38Ss5macNr4rLucLxoX0VWlgd00GFkZds5mLQRB8H/jhCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791606634; c=relaxed/simple;
	bh=EKLSD1O92Lp++Id+I6YCkOvSJOB2mG6Jav+B55dhblw=;
	h=To:Subject:From:Message-Id:Date; b=M1Fvno0brAYXmYK+DxZzmepRd+j5mtpey/suwCiCCpYFd7HKLFs9KrZuQddLBvSkTKME8hRrj2TLBY/XfNoKByg1yYPbAJM01kPQuzUz9GXCmtCW7vpisYtYZHHjYKIjDVD1w1CZsqEk5C1vEWfHOpe7Tt+Fjrgli9QxIJ/iNtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vdvpkx8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vdvpkx8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F5DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791606633;
	bh=EKLSD1O92Lp++Id+I6YCkOvSJOB2mG6Jav+B55dhblw=;
	h=To:Subject:From:Date:From;
	b=Vdvpkx8W2l4P+YomtlY0VMgxHkN9EmqEhf9G9+iqR9sxYBkzu6gS+Elzi4QDYbYRx
	 JykUnMalD1/F9cxTzirV8s+LthYTr5gFLT4zXN7ygxrVb4OnfPVtakts1eNBkbnENA
	 ceHVKsRi4jMSp6sBBggA6eGheMtyaiC4QbbUkODOeaZCX3mp42UAJgy1qAMgDkSvdf
	 CgPuDI/2CyJkjxGFtZrLUQ9lnbFz4SgAo7JzU6i0EEZ34bw2QPLEwPHGFvzVOyKKzK
	 fZG4EcZGXKpyfwUakQyez75omSplGDgRF+l15Klc18B5aDYr/lmrJj2AIwv4PDzPxU
	 s1CggI0pKyxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B566BCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160663370.13686.4238308140616699085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ea0df433a86598fc0454928fef5ca5518524919f3032e11f1a346fd2ab9fb9
Date: Sat, 10 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791606633
