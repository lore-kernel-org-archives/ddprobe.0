Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400031B0421
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740672534; cv=none; b=asmNbvda3s9Ukcex+kUmMbshiQPHTNQnWbU7Ju9iMWdcuiVsccAWoAMjju9vaLbHUbcmTKSiaSntI7wusv3lhoo0+voAPCttKSDp5QSRUtYc9WGklbgvjzhbTxR144tWbtWPLlALT8PxgBLqmUJOS5duhvWcNz3KvIpxg+iD7xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740672534; c=relaxed/simple;
	bh=+NT+e70mjtW/FoKztvsGegZkqdOt+1PFtITYxYbtdAY=;
	h=To:Subject:From:Message-Id:Date; b=kzvQNZpqDn5V7QMVm45lmf7ywvD85yatxCgt5erjmEHcSZqyS+DG/ssnyPaGpUNGDT1+chcuXL4G0RWdfkceTn2iReEU/Cdr4GeXS9NDQ4504ewludrxw6laFYBdcOGBO/9ak2TF2fUq96IeJbzZS4exctZrApM91L2gJgKVuOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMdXqSlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMdXqSlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EE8C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740672533;
	bh=+NT+e70mjtW/FoKztvsGegZkqdOt+1PFtITYxYbtdAY=;
	h=To:Subject:From:Date:From;
	b=vMdXqSlUpcYrgs+L8EOD6m7HvjgJ5tmQOm7gsTxdCDs2YBT/T4E1cYjR6RCLT/EZW
	 D6Jq0ZjC9JAPBn4NXeO0yoQ5hmYjEf6YxdK/oKI7sFMMgfMTAjF+NJniCZmP7pkSTZ
	 1MrMu8CLzl1zAg2h6tB88jx9sWsHcLOee6A43Gxy6Rxo4Bqqi4q5VG1Nl+wzNaouCK
	 P3OKFWP/O7HZj50xB8VxzbdZ6Z8BVb1baM9LkT1TPUeT3PKQkpz4yJ1Do93SvsNV0Y
	 EwycyWlx9YpN6EpzuS0cZ2wMfEPd4YDybUenikujuKQUsXU+o3D/bdexeCQFPH328j
	 7HNN729Pm/jGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B232C19F2E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174067253362.18781.1719644237546529451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07b5012cde4ed74c6091a854543a29a291e79318b32e9df1c3235577d5f12d6
Date: Thu, 27 Feb 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740672533
