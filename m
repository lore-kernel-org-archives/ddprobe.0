Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3653430100E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782320254; cv=none; b=SXt/1yJbB0ufoB8cxKMj6761EWYRi9JSy9tnAOsLWBVYBRqjRx5ZlwWtrMUQDlP/wDtcOz4avyiAToVC49Xr+NLc5v6oUUh/7KDFYj4hczkWvrr4DjsIxPxApvrlVaEg5VpxJYXev6XRdNEAgD3LkpSG1fcUUUxS99B+JSiflzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782320254; c=relaxed/simple;
	bh=2qB61RZ4kS5kLUNZJEpsIxsnZI0UyZkRDte61Tfl2Xg=;
	h=To:Subject:From:Message-Id:Date; b=QB1P1ruv9K/L4xAYaxLiWloCOFGR5+FuQfF5ucl46H3zlXJzFplFkoTpFGoIFXrcR0plZE2S7EAKffL7cc6lhG4h7mxl6klP2XyrX4DQ2HnFBY4Cy3+/XdaghdpwBpO2HWJ7vJi7TN4BcztpgGxsO84F1ThluZFa15eUff2IDq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+W70hkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+W70hkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EB1C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782320253;
	bh=2qB61RZ4kS5kLUNZJEpsIxsnZI0UyZkRDte61Tfl2Xg=;
	h=To:Subject:From:Date:From;
	b=r+W70hkqZx4fh70AjOTfp5syZbUcJFHfQ10TJs8d6qn28kjc2/blyen3r753M1AUG
	 4mCv372aPkHz4cpKAZvqjVKKYzb9XrR32s1ukjKB3QqKtbqZTqUELlMRE1LRQe14xE
	 19MB8RDlwXOpFvsJrH+z6POF1TytbevvSSbOUsBMkbQwxSh/99AO0brtOrc5orsdmi
	 hiNPZljh0zBnukHua8wGOtCyvwxepX+b3pt9cCo0m2TgAoGWyJ9gOa7ZPWA751IStL
	 3e9uhEejfdAp85owzxNC25Bv79F+3o/TOY6C74FfHzj7VKIPZj8sBj2GzE33Yy6iqM
	 lvpXO4FDk9XEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE43CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232025369.19416.6047760168207847740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9cfe62600ee52a5c8b2d53d3244e608e1a8ab7b173dca57232e4d49d959465
Date: Wed, 24 Jun 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782320253
