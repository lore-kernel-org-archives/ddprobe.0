Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B67F1E9919
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766730234; cv=none; b=AK2wavKo1qcPX+AKi9ZE/zq77AMgWK7ZYPbCBCFEYL++zdoVwSrJzPKXpplaOaC1LZ+7w2qot8clTZUM61KO+KqYnQva/dnh1npC0SBXGIA5ezTlD6Gg3mWchJO6u3SzFbJbLAowB3DmODNcOfnVT4aKyBwpoupUD2lJELnd8A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766730234; c=relaxed/simple;
	bh=s1YyBBbcN4zOLO8pdNr6LDbaomC0jzgNKgoVWqcuoHs=;
	h=To:Subject:From:Message-Id:Date; b=Sy6r3fWfQ2IWtO/LqgIZaRzVi4GROZmuWJxzmmNAkW6eWc3w12V/94E4R3wJh4RG8WwK3AYF1Iu8ytlFOMXiQdlnMWfVC25qwcLXd8DMCqDl5TGWHaLVXlUQj1CEnDnYXmMMNknwPLCEBezDWTeOyNYHmlZePkgL7P/bVTz+X1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8nmjE6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8nmjE6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC622C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766730233;
	bh=s1YyBBbcN4zOLO8pdNr6LDbaomC0jzgNKgoVWqcuoHs=;
	h=To:Subject:From:Date:From;
	b=d8nmjE6dk2K5yY7DJUO5oyQFG5mqoHr0h5FrkJU07dtuLqmcuhliDv6qysY/Xgq2H
	 Bl0/pRcHbULwQy0FQkXHW0QgdzTaG2VjmbhXjDMwYgftNA9k6RCGefA8DwBSr2JDEX
	 Onpi84ZQ+P3cd5b7yIpD4k+cBolW+VArfBtmjZ4teX+PpYia+zIvqja9YTMwOhEEdz
	 qamQKxm/3l4StcumJjTrmencl4BCgIffq841KMTc+CcwQRxTXOSQP1hl+CK0z44LYK
	 D96mT23qUTlbxr8+ZAgOLA9yeCEfok/YaqrjLQtp4ylfAnE4g67P97A9jZf0VgEbzR
	 88GLV/zFFp8zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99633E7AD75
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673023359.7955.355078488629560621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d286ce28655a92d46af3d9311424e25cff9d4831f740dda41f1eabb6eddc23
Date: Fri, 26 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766730233
