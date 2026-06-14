Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4683033D6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781474194; cv=none; b=Ma5z2IGHFYhBHnTDHSnmB8+K2tVHty2UspMMzgW+wceuE+VBcIl0A5No4amCIrN1cYzfldFozs0jKqgYXkd94GgsOhj4aJTDRzK+hapxgaZg65gk+Vs+0QgErSfHMNJ/U2GT3lHnrxImwPDj5tu16PJrl81lyrtPxd2KaOdBQEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781474194; c=relaxed/simple;
	bh=ZpLf6LJh9VLHbdMre+7v+8ATsaZCOffUR2rdjiAsJlE=;
	h=To:Subject:From:Message-Id:Date; b=nWof0/gwWGuuzh/XOiVSXi1W26Rsn3U5WCC0TuX6/68er2AvP4Q0urY87P6payi7jCnMTIPhhNT9HXz058zSJPe6ezNd3DbXHNfwoEQYKIgYiXN1hNK0PqvzluYredeXSZRrCq0hTrwMGuZ5YMb8Y13kKv1ubrJW0t6CnUKHp/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng5/5AHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng5/5AHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DCDC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781474193;
	bh=ZpLf6LJh9VLHbdMre+7v+8ATsaZCOffUR2rdjiAsJlE=;
	h=To:Subject:From:Date:From;
	b=Ng5/5AHJd2iAOFE6VmsY3pVz7X1DvQQOj6Jxa3qgmQhSCvL1AaggydlZIn5HK1XNo
	 FHTv2TRZGj8FU/XS+elItTljZZXWgVjdbrCXWpoaCN5P9howCyPmT2gTe5JUoMk+2p
	 hw0wQQjf5K1+9xrge1nga0wp1X+bmcVNNoxTDruFlR4dEylDWFgh7FttYg0vRBr+8K
	 85mqKwihiu/Z9JEJ2iyVHtPepJWe4GLThS7GbsWThYm86I8QjnK0ZNmN8gjelUv5P3
	 wfjLUWJu64mIg7KI5R02cwkzNZNuTtOmhrK0cmEv1aBTaTGJluYALSvASHj1F+ymiZ
	 bfW5hnWgRb2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7B5CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147419372.8744.2714084847991346303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50059eeeea3b9f3835ab96c075c256a83dde50191710a8b157ca9c66510eef4b
Date: Sun, 14 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781474193
