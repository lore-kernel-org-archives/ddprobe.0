Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420D02673AA
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739551134; cv=none; b=ptxJgJT2TVLjJUZhMlBkLgeeCVpf8rgz2z0NlTr7qlxgTcyoyHQ2eB0SFAcCTT3zmQN+v8ywnZj12sskd2hGVEsHQEyNC4MIKsfOIGJ8n9iUIPP1vBcSPU2HH530H4jdUmCMFJPpq+Nab6oHiGm1mOlDa0p2bowjNoPuiL8yPAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739551134; c=relaxed/simple;
	bh=0DsUEFcB2wYXFHbWfH2576vsq1mdjzwub9Ypshguv0k=;
	h=To:Subject:From:Message-Id:Date; b=Jfwzh/67eVTh4plz1dfhVqwedHYUfz7sGsgMH9QrFKx0fykx3+kjoDKzBj8tzOMeSSncHfa+UY6dIPzQWJQiOkpNc5eV69rhYC4HkGBOKtiUicM9hxuzvra8YiMuOojFV0ohVtKCGu0ovBewP4AqrKqKLkwYZZykgEtYRooTx6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKkxMiXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKkxMiXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24FCC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739551133;
	bh=0DsUEFcB2wYXFHbWfH2576vsq1mdjzwub9Ypshguv0k=;
	h=To:Subject:From:Date:From;
	b=JKkxMiXTr9lihMauR65ZPlaBjcYx3gxylXDcC8npuQLnIL4heczwSYFrfHBlnCS5c
	 uLNKS96i/Yr5Leca3MvsxymAE3jfxZUzGgciLJk5zEeHSAAQSwpPOK04FOikt3tpGP
	 fYtFGZzP8+zU/+ON+AzadUGQKsvcuGohk84zRb8i29rqqIRzZKn+nGQvbfhgfvG+GJ
	 BSoL9ZWF2C+Lc0QEu/8Ja7vohMNiogvdCx8cQAjK20rJL6rCM8mMydKggr6lLRo2+0
	 dYeeRzE4F1pnv5j1G4w9nH++J8hbP6aiok9aitfIFa8LnoEOdEjE1lsinx+E7Ip7U9
	 uTVmg7ZJdSo8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C53AC021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173955113363.15626.16350518520439776230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4629035656189d82c6616b59e0cd3249073999e9795fd7558fa8ce72ea62cca1
Date: Fri, 14 Feb 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739551133
