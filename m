Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22443217704
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788729634; cv=none; b=sBR4HPHvo2Fv4i+wLkACqnlymKHI++IRtZd743Y0Dy5OVbDE4wzaiCO6M2y2DN4cA3aM5Qm52LZ5AOvSAAeADYBlUiqw1tWxALom/7KUE0i/me8Q58O1sBFV/EHWa4oZyHuYwDophxN3x57t/W3MW1ZvdJs7eB8pabbCj//S2lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788729634; c=relaxed/simple;
	bh=PEGoi3yCQCnqU3JsLgbw1vo71rxsWEwErMyTs2uk4bo=;
	h=To:Subject:From:Message-Id:Date; b=L2SucaRCRQ2dEZvLEbLtntWSaT5GmfznoAMjrtCSn1Ty23NMTKajJcZa29F32n9QT+Z6NWft+TsLnHwaqBOb9BIcl3obeBzXvNp0obKHrMKbPz8mXb82yu+wobtctSYmsV8Ui4e29khTkMk7bqh+jy6ttykUTaFhpLkPffkYLsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mndFgcDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mndFgcDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAF7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788729633;
	bh=PEGoi3yCQCnqU3JsLgbw1vo71rxsWEwErMyTs2uk4bo=;
	h=To:Subject:From:Date:From;
	b=mndFgcDRAzDwT8O/9kZkLadQ//9tSWN/Xoxd9k4kwmsw3uROL++iWJN8BPv2e7cfX
	 EdG6mFeUZYfC3O5ZhXpqghXqabDo8rxmzVy92kmPr9e6d8gmpt+/rQG/2iPAEmVFnv
	 UcoMh2jHDUtSMZshhWnL+xkwXth7hND+XaLQSooLiq7/uAfl+YzrxFRSeFeWMJ2X7b
	 UiamQxO4N8qqbOl1Fqq2BDLdOD0Ck0TDdk4/U+yePb3ZpyYhG93O15Dn0sM8XbO/w4
	 pAY0Pw5GMB+XfpzrQWSW/6Lt1zvOs44NR66njW/Gpomx7I3eyIC6m9AICgUC87Lk6w
	 /waDQ67CyhaQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC13C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872963369.5556.4447131536645037767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641434a55b19ecf6c1c0667aae97957961919a143e2811294fda8790bda07907
Date: Sun, 06 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788729633
