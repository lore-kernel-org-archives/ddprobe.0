Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AFE218EA5
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734722154; cv=none; b=Sf9Oyr1BezV72VYIEUBlyMpuPDrLb635RHd2bfIrVDuzxLv4OPBrQ54LhoFgZv5CQOEaxI11mup233GthQTH8gbVYjUMEe+SIL+Zyt9J9u/znvIGc31CARLg61baRMI8d47t/o1gUGxMnWhA9ugBeil/R3YiE7ZB/RiwIh1Gk9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734722154; c=relaxed/simple;
	bh=h3rjWvF5Yycnn5In0P8E8ZkcXaZM+bOpxvFiKn5Y+mc=;
	h=To:Subject:From:Message-Id:Date; b=iG0YVk8kiOqlurufGh7Bj6o8K9AVeGNkVp9HPqVBaTAUhs4D6l/Hl21ecO2WcbOggM+QMdulXXtlEw+CvzUD8YeDg7AZNzmm3f4yq7zpb9MgmAMyVNoy4m8MMouGsyZ9vNNsVwZKVyt9FOsLf5sU0jlwF4KJd22YM58RL3lnA3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEX5ffWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEX5ffWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF6C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734722153;
	bh=h3rjWvF5Yycnn5In0P8E8ZkcXaZM+bOpxvFiKn5Y+mc=;
	h=To:Subject:From:Date:From;
	b=fEX5ffWhdyuqvZ7q1aMpGH3W+z65JxBl7L6mm3Tm/epOCE6YH/qySRaL/HbkiwR4b
	 I5BsKdSlVPbsdUHqvZABlWXZOV4dp9zDWbV+doWvCZhv47ZhLwoEsxR4jqtJhfhNuN
	 R/fMoJQ40Z33Ciy8bGa5kvVFhxQotF9WaibZDknPfrcD8Ezx+8EzutDYVfC+Lfl6zQ
	 3UX8oX2o/Sl1XHprzT4Af1XQMW9HMOHn47O5Mt6osb68giXncOYpNfS+avzedqfExc
	 JYcPQA1qNLUKm1C2l9MwvYku5fcNXfqldf7uQX4kETsNTzTMN+4PtolH9RzZ5LD6mX
	 TdcgHzt1tlEfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A52E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472215360.2325.979434141178799689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ca6e01371e87c6bf738663dfd8895352231c19d22a16f9ca58747273bfcbae
Date: Fri, 20 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734722153
