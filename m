Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE80846D
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741613334; cv=none; b=gaFJTqolpvkAt3tS44+xcY5JCCiFBdHweJXzDXEf8AAzSZ7ZjVCiReee5RqAj9Z7xy333dCLJ9tSbpmkki2tipBQx44rB9nO+REvP3SSEOYZTCLSqcVK5BmTNJkdyoXVUqxa6CJP14QIQWPYCxv4ZNyEo2Y1FmvtUWBWoBgKk6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741613334; c=relaxed/simple;
	bh=N3kKMZgPcgRblblp0/NC+g1ThEO3WokI/IC1OR7nXwU=;
	h=To:Subject:From:Message-Id:Date; b=Wg3BhAAX5UGVErrqTSY1j3uErhvJV7xthRu0TytF/JQZ/KXcWqZlAw+xtXJriVa8M3jvFaKNlVfT/Pf9lt4WsryPwqb68HrRb1kN2AMZ/iZeRbbIimsNEvfAbEw5xnuyf9eiYUBVfmasfjNJ9WQrAj1B3xSAab/0SdNY/HuT+j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkZS2/uY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkZS2/uY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90FEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741613333;
	bh=N3kKMZgPcgRblblp0/NC+g1ThEO3WokI/IC1OR7nXwU=;
	h=To:Subject:From:Date:From;
	b=NkZS2/uYz04PgRhEX+zOO0dA+2UhctZArNmce4S7D0sQqjXo5sku/1mYXeUa5syM2
	 AczYQla1h0TWTjUlqgMzhMbLaxvBgPVa7bgmR1+4vHPtOk7KbtZTtLvImkypNejJ12
	 wkNuw/vXI/MfVBIN/k8YnElb79saItsSKyDi2U5qFnCXMetU0Zlx2A/Sf1YLbFCBCA
	 32CjzNE6InvhEdrdRiZZdGORLPW7CNcJPM54WM365jZvx49tmSABu8Y7ssRkW7EVkE
	 UHPDuW41sUm9q03MXzQOrAkSNK6YWbeRmz6VXeRLil9KN7vMUPWWQ0ZkvBuSM5fk7U
	 eNDVIeE8hc7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600FC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161333360.7492.1097079179901469701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27dbb3e1c8c090d839fa13bb9cdd042aed317ec57859e6dffae300de58ecc5d
Date: Mon, 10 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741613333
