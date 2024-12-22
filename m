Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47FC28366
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734899153; cv=none; b=NdzwUvTFxJ7uELi/uAPY71gLax+E02aSOKwCGp+QkhZD3W2+HZyTc5Wv1g4v6+mR3DIv0zHdYh6pcMy0KXR240yRPbPEHzaTRPIDoNz07OMWGwDK20GakOl0oQYhEsuWgw0XJ5tO6nyGkFOCVUi1M/xLGbD1HgW+9zvFN3gkyJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734899153; c=relaxed/simple;
	bh=khK2Hvdg0AH56Y8bZ7dX+PkdGRaU+gGFCtz2gK/rcfE=;
	h=To:Subject:From:Message-Id:Date; b=FbJ97ZDisktXsKzMfHI0HTDI51QCiVIgHFa64aQt8I7igQkkEd4VEzehBjuhc995gvpsBLjUwuHw6EEnHzXCIyz2veSMvNjDwj6B6TRR6DY7+x61b52EWkoM9q2z5Fy7Qw9akhcF6riA/Ncps+zKpOCK7L1+dWp9it0cQAMPIhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfUY6Xxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfUY6Xxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7536C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734899153;
	bh=khK2Hvdg0AH56Y8bZ7dX+PkdGRaU+gGFCtz2gK/rcfE=;
	h=To:Subject:From:Date:From;
	b=LfUY6XxlhvHc+duwsfenhJlMLxi7fqDOUi9usFtHufxFTa7HDbjJwGQTkJ5Dhw1Zc
	 m173HiN5BNg5TTEanaS5wwAIESQVPxQaadL7Z1+81G29Kxyvk9LRVLoiluLmrW9tyt
	 pURNzoybat0GRZRDTb9+Da3w4BE+PksZUzCZj7Bt2gcZkvSMyoLVlEaH0ZjQONnxgK
	 2y4OnjMMRw5EVMxv7AmvICQgGCEiILviKJYJeowN3YkoweZfOvNrAMSOjNsMAi2R1o
	 o1qpdQ9UO7S35ul9bjruW853vonDeadH7rzPAZmt/+Kd7RqgbuVhS2SIrIzu/adS5A
	 4h98nyFatt3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CCE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489915357.9881.6836290926359634230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ec1d612a16e887312c6bebe143e61c7741756fe457869c52d881b1770b7a1d
Date: Sun, 22 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734899153
