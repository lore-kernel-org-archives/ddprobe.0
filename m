Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58AC334682
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764605573; cv=none; b=Z8LckMDDcbx7YAvztgUVqfN33ZrpuoBlc/woy4/g3fO5i1IOp8AehtGCl36ZmmAFUanMQ1PEun99dslg6qgYY3db/tbvAqwHXLk3LEzELWGQoo4iRgtkAn2oWaIDW3QkDmgepggnFKZZLbKCNOvQMUDwLWLFeuy+NewWb3pP29I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764605573; c=relaxed/simple;
	bh=bJHrxwttWAu22AwN94mMjDN9bCzbZ99Sj6oa+rFrr5I=;
	h=To:Subject:From:Message-Id:Date; b=XywLCHebxmj1UgEb0bp8QlKcWN4EeXDxxBxHRkg37aFO5N41Vt1uvwDv5eR+m6R4FkYaX/em8L/N2ugI4FFYU9uOUOj8m/WKPuoXCfW9QxBnUxLrd4zJNrOBOsOe1oHGldI0NDfMSOwfmYV2Ep0ES7a8Qc4eDc6wMqLB17E2rGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAN8oEgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAN8oEgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B34C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764605573;
	bh=bJHrxwttWAu22AwN94mMjDN9bCzbZ99Sj6oa+rFrr5I=;
	h=To:Subject:From:Date:From;
	b=BAN8oEgZoC5BFwLWqaPv+ePljp0JNuepT4LulWzrhYEv9DdpzeWvBL7B0+Wqy8vSW
	 oTrDLXyz2Gyxrcoj0Ew7lUsbv77VrhzQZgtN9f2qtPq1CFX3LGOqHo3GRFDS2mkkz5
	 j3NyNB2D7WKnMgIvB9mL7gZxAnVg2suHvjc01Qdguf4soCzwjmBZ1owybU2KaeKhRT
	 VvAz36x9eDkD16MKWIgESHLcJWEJAzuog10f+hI1hR+nnCUk3BYDTvpOkx89XJiYbq
	 TyV5fCI2Vceapei2fGcLYYKJUQWYqjIVkTyjG3DSI5zXiAxKhzttqdpmZlvuVp49yw
	 NLRHu6Jxn/vJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A95D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460557359.3040.18017276164990622481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f2d5cdb9d7900119021e4b5e957336601439c422c8e8275597dd1a4773b502
Date: Mon, 01 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764605573
