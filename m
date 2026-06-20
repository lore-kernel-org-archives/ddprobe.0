Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442C5E56A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781961394; cv=none; b=loMG746+bNpl8DtkyYzKvHGBbloLez11hfJjM/itKk0ExbzIFlV48mGiqPj9AoYj1rWlTUWfIGEiEQn4zT+Kes0v3LMBm16PRqhMvmbaNl8qaabAOKqL+q7q8oEEaeou1lLZy5ZTLeHFumR9lMTCx59fsi9wxl8umGIb2AHcWx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781961394; c=relaxed/simple;
	bh=wU6+j97vQDIEp3hEPZybg1tGdAcbyQ/Gmz2VNlM5qbk=;
	h=To:Subject:From:Message-Id:Date; b=nT9dIRlssFBVtXB2VG2mOIxK1E0F0SqkmhXQ8+SZWCx6p2eH6RD+XqsmiUqM9b4b3cvzoTJlvs+Dk4HPAXIYiOhwoxEkU/mkzpFUb+BD/uVzLR743jH31OOwu015ds/Ya/KmMJdjucy7cI4/00UTdS6xR8qsVMrzzClXaC/XasI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEAsE+Sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEAsE+Sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AE1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781961393;
	bh=wU6+j97vQDIEp3hEPZybg1tGdAcbyQ/Gmz2VNlM5qbk=;
	h=To:Subject:From:Date:From;
	b=hEAsE+SnChs3BCD3mZWmUYk7Rfhax7zNSX2wJ8lQt6Vg4BYingClght5Qt2T8NjtC
	 IzegSTSFCTU+w+PKlwvli/j0f78v+h2Q8V1crDX51GtEyY3CAoEMCwoNURxziIO6ZF
	 JePUn96k6oOlKnsQZ3JB6hrKlFxH0sUWjd6zx9RxHHQ6JC3JzvYjLgnnVL0f5UZsiU
	 COkQ9wolOOxkVc5c09fc0o3gCpx2/pjrOiM6xbJk4Gan7cb2zPmmoQyFycSSh27uLA
	 pOPd8VnNiZqfKgXRJWIisPtwhlUUSgwE6hNWNMJCLyVdTV4nJykLuowtIUq5a+SAi1
	 DtTJr3DXVMwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC30FCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196139373.15897.17590379856247615259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1d343471f9914ddc96bc3af892b9a5430553b3684484ad671e106f7e0752cf
Date: Sat, 20 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781961393
