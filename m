Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AFC36AFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716248543; cv=none; b=N94iZgPmYkOOGFU6Q3Rab01vvAUfWZZ/ar2UdzUB1kE+OqcBny+clHgirk+6ugVWKeZHnAEsZPdUqbi6NgPmFRABQYpH5uqlVEuA0FaBHErMrZDnjLfuuLTOonoKrb48R3RVdB9KtlU9BpYenK59H5cqjRBB7WEakLdLgQErQYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716248543; c=relaxed/simple;
	bh=2vNCpUiMrd3InKtmWqRVbim7bFlmPPiCzTElS+2m2EA=;
	h=To:Subject:From:Message-Id:Date; b=Znbirzh37rrEKnXkfKodUWt5UkZfC2/69PGdQKehgZv1oTysHGD4U/41GFm2oEjnT6Wleqx0QIJzzGwNyb6WgRSuIgLfXeVBQL7lmyQgIRPLca6sNJSp5kLauU2Gu0AT5HoSL29p7ZWn1g02sRSoTXPJjvDX1LLPUH1iq8JxYq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLcrSw08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLcrSw08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03F72C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716248543;
	bh=2vNCpUiMrd3InKtmWqRVbim7bFlmPPiCzTElS+2m2EA=;
	h=To:Subject:From:Date:From;
	b=VLcrSw08frDSso9jp9lLezimyTPFXbtqJrJs8O8pwaMbzD3JmJBx8hKpls5cqE7JT
	 v8QD1gsFAxh89O10B4lB5uSH4vTBD6+W4WfCaxnTP0rI7FMpklkXl4GW2IMLmN2pZ7
	 hRR2kJ2veNnB/LWSfN7WvGd9sffXg9ezO1f6aRjcyLsh+VSdpDesnNFcj4moEYiH/D
	 esskb0v2hcC59QfmZ6lIN25Zozx02imm4R/9p8VskZoRNURRDN+sqTAAcirsfAXXRZ
	 5/Fa0OnOqvr6esNsiQPWcIECEX5Ca5LpiCeNfvomnKnLT8mn9/6cYjx3SVsa/MJ2aE
	 CyMIV8jCjmedA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0C7C25B78
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624854277.14648.11446277092998444082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f976a05afec531d657f74f0481460cc6f9a6017f4a00ff2e8001bd67cb941c8a
Date: Mon, 20 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716248542
