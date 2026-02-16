Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A972FFF80
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771242294; cv=none; b=LwthEmqz2kvbazIZb7SzUe/nXIrWn8MTl6FsdAryZMkTx0u2nhd4TnvTrurz1KtSo1KUv4Qc86IYokcKsDJ6aUrALqpZrNHbvfxU4JRjcS6u9Rv3EZYLf1NWbqkwZBDoTpm3+TgtkBJ4bEmv3QNbftUwOheGZjk8J9LPK/AEt6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771242294; c=relaxed/simple;
	bh=4/Lq1xgOmUvprPzufNNOPf+56J6Py5bxEe58cwL37CQ=;
	h=To:Subject:From:Message-Id:Date; b=HsrnH7P+R4+sPtAj7BCGSEa8bXtMPhMniQD6wthVSTpu73tNQjaPjQLctDsNJsCODMJmzn3p90eCl3ZornYNva8zg/S2thrQMBH5i/r6/7xjEF5RCs6gPX+ZwECfoKQkleaCNHv0NEzgqsnhG8Nx8AfdPbBwVMzCiQm7ylZ6ei8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUNMLVuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUNMLVuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B121CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771242293;
	bh=4/Lq1xgOmUvprPzufNNOPf+56J6Py5bxEe58cwL37CQ=;
	h=To:Subject:From:Date:From;
	b=KUNMLVuoL8xOvdmrDIiH3zes2/l2Zfq/9gUKXX0knusPtivBkMcah2qeISEma0tmJ
	 cxUgGYv/Rlesv3RHfElm2IxibuyF8xcZAm2uuIacj+hHL35OxICl3E0YWvsHeMOO9e
	 5/9tE+Y98/D7wz3g/QHib+Rm1Ciehx2eAlfjBMWZqaDliifGb+dvlwbAWGvQw3FztW
	 IJ63Zc/wMc+zDnR6jyvGyl9IsVajOf8LCIryFRrN3hrWd92JL8ugrss7B2GdIAAH6g
	 Nc3B8iTrKUvRtnmXrdOVFBpWIvnh53lgG6NKSdawQ2QpQOB79S+9yuxR1ZDmv3vnOt
	 QrI8oZzzndP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7ECE7BDA1
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124229363.5665.1006536429154615997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fd12e193d92adcf1e7492a9a11f5661cd7a21dc121c77afd513a870bf123b1
Date: Mon, 16 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771242293
