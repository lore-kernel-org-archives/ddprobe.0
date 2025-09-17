Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161912F9C37
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758128994; cv=none; b=Gcb78J6DUjt5RTI+CMFVpmuSN1AYTWoiOG0dildUPNBXzkoCPL9GgUtAN2xFIdXvJAJbr/f7U4wtLDRaH2OQ2gRc4FaNeVvosbq6S8dlUKtTCpf6TFOEFEgfMUcL6soRD9AuzNz6Wo3WFxoMLHSbp5F7k3eM9R9BI/9KEyZ6wpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758128994; c=relaxed/simple;
	bh=0slmWe11th94b9C0KhlcRd6qVD3gVHUuUf1akiSdpBc=;
	h=To:Subject:From:Message-Id:Date; b=uNlBHAQ6Hd37NmNzfNVeaNckIDHWBjnmK9n/JZlMTZKIJATzUJoLH4hrGBWJmhkvhlEpgKly4OM9X/+MJUnYmqSzDN9tZ+n6VOIAeJfsPsE8Mm/141K+40DU9NoD0kVSp9z/9PpgJj2FCosMm+iJPvxoIla+zCB4acvVz7kTplA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icQAzfMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icQAzfMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6D3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758128993;
	bh=0slmWe11th94b9C0KhlcRd6qVD3gVHUuUf1akiSdpBc=;
	h=To:Subject:From:Date:From;
	b=icQAzfMRceQq9MUAS72/ih3kMNVtfycUPIHvaA6IwvH0rLXuUjjXEVqwAgRJlx676
	 mmYCPlT1vdJuooQXAPCZEOK1pJTTlATeejROUXO8GpRMjG7OqfMK9WEQ8pYPnh3n0v
	 +snrUj1aSedeTsa+bbQN49fF76QeGTVqpbStC+rQK2QJmCkrxqNHYp8s/wVX2EHxI+
	 euDD861/qCnNmudoEuJIWWYesjAyaVfmx7V8nA3tlHofN995vKy4/OLIYabIFw+LH4
	 +IrKMVt7rnFWetnK2GOGzICG/dvc8PSl3ZkDHv9IPu/yRc9Sbrhxf53UlObD+h4jaF
	 oP+xqYTj3jJHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC22CAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812899358.10130.5911555835923771025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c2713b348e3ce921190924464c36d26f696b19196bdcfefd580a1050eb220b
Date: Wed, 17 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758128993
