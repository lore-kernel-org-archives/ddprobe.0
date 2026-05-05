Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227DB38E5C5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778012254; cv=none; b=fT+ymIzKeh4Qt2qWIG3zhFW9r5ssv9bmNnbIJ+8hGqlxrEOQM4QfHqqsl1gun6PqAbk1YnVewmic8a6qyoiIbk1oUxTxPT+BvYjmgageYQ3ACa49THVkT4qwvoGwUsfPbzwzhqquBoY/UWe7sJ3iYULDQZMX+wOVlc8Pp0g+CSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778012254; c=relaxed/simple;
	bh=GPqMKw4cMSrJpjiDs/GxEgUf09M4T/NZCUoLB+fihnk=;
	h=To:Subject:From:Message-Id:Date; b=TRIcedhBTDTsROG1ui4W3DQlWhTqFoOn7BeF7cIaxs9y/CxJlW8KGY9fJh+REXeduLKg892k0aU+Vmx6uRFoiM+LnoMM9nLgGv+N/di7LTMaL+n4cNfATz2eYp+v2YfvNdeSPiWQiuY/bSaLFiDUL8NixgY3fWupOOW+e0YX/Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYbp/FWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYbp/FWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD82AC2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778012253;
	bh=GPqMKw4cMSrJpjiDs/GxEgUf09M4T/NZCUoLB+fihnk=;
	h=To:Subject:From:Date:From;
	b=qYbp/FWtKDLTHQBIEOUj4Ed/NzZ1Osvh+jcpb0uz7SPKx2L8veYfTRXtrfelD4Ke0
	 QiMHF/7MZ/VxVcCA7EBJL9TbVoSmxJfD38ScmjBTmu7cnTAN2NAUlLQcuEdByDjs7H
	 7wUUeHlnS/ebR7od8Aao9/6TuJJKbQmmi4tc7MA69AqiMr3DLFtWoDoJrDPfOlx9fh
	 lo4GOzeGlTxyMsybi1L5d9lRcFldxnL+6d9YGR1pu9clEmw2LYSbSViKUdoSqikc6Z
	 px17zwRZDF+BjgvX/LH/59GmbpJHjUMp0sOWs6jrfz63G5Ig6YPH4toX7QFVfpNmC4
	 x9mmrcb67H5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA35ACD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801225368.19073.2659464311512555330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cc03f9aaa85428ec847f3a0594634d60ddd0b34f63346f7af670d5ac97033e
Date: Tue, 05 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778012253
