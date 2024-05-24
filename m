Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AD148CCC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716558203; cv=none; b=ueWWkLPCHMW7l8KOW++inbuw28gkps7oI7UO280V8w7GxTKP/IS03dqYQweX2AVyQdzzTm+IBoS8uNS6RGfsbzqkU/7LVdOjXOT1mfC0neTKvI8dEBYZaA6J5JT56ZeNndCsAP891IpiHWc8d2o/uVOUaxV0hyPu41rDXd9hd10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716558203; c=relaxed/simple;
	bh=4qzAsIgXRDLHNKaNaUB6oq75+ZNQ0IWvmBi2aw/0fsc=;
	h=To:Subject:From:Message-Id:Date; b=fGVIAawYnOE+HvEP1L6fNWyN3Gcqdd2CMOpMAxkS1EFu9jon5oJnHJP1zi4R/SeCgCqnXorsVHsON/dVndq2hqCAYquFIyy+DMxQLIbT9GzcoHCArpszLtroq8KZqIvfDCg+xVovklPrXZUWOQq0AzP8wrKK4wEdA5YQt3GmCX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XApF+69N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XApF+69N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E71BCC3277B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716558202;
	bh=4qzAsIgXRDLHNKaNaUB6oq75+ZNQ0IWvmBi2aw/0fsc=;
	h=To:Subject:From:Date:From;
	b=XApF+69NJIOCg5zQTcLM1Ua8IY7X99qBKs1HJl0+DiqAWFLDLH9ItU26tH+FdUxo3
	 0XklUttoQtAXFubRmcfDUw4bx5GFjTAkbaYW+e3pcdND9OLmpWRquaqwd7PwGMN4Xg
	 UFPAVyEYfk6m52YnkysCs2xnma3oy9M8zIzcju4u18lDL9Z3BUs5O+MReqA/9/rNUc
	 hVHAvzV5CDjc0PNJirlAa7EMZ2v74KQZCQOFDwh83cKfy8p4tA8beSeP2xaxsF/vha
	 jkdG+RY5d5Vjs11aImJg/Q02QQuSxjlOspbrxwoxHVV9y4K8gbdTfvfOYNb72jIOon
	 g53POQ5YEEUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC495C25B7A
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655820282.18973.9092817319309824396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bd99aca19e9bb396a22db2427a2d3529f85d40b6c8a47e0b9e6340519fe28e
Date: Fri, 24 May 2024 13:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716558202
