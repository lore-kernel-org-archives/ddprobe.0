Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F02D2F26
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734850554; cv=none; b=BtdzRYPtNeWwkN8aP0xUGReng9MtnctZ9UGKxGaF2wxPUWJAZy/wtGSwAwhQnp4R53r04n4m7D1POqGDIPNUq4r2j5u2+iRLT4vDboZoZeBNLynYffYVVKWbd8+HJvFyIfnAXcXClmTuXk8GXHUnu+FvpTpgYibA50qyzuBnZ0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734850554; c=relaxed/simple;
	bh=6cz6+apw598OVS8hZl9lUeSxNde+pVj5QfdVVZh2Fjs=;
	h=To:Subject:From:Message-Id:Date; b=T9N/WtUEnYxxpBXXF9w28vDq/EO2rk1sVenP7D8jPhTmoHZsvmasNkdNkVS4RGhsDJ5QdMinILoYOOte7Fr5N+vC7EQ6/QAJAmYwHX7SJtZsxL67BzPE/EsbzDJCQFGgn+ycpBqYrhVj848AV4lYbxtDu7OfyuQ02kzLhXD/ZGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov/anKzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov/anKzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12AC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734850553;
	bh=6cz6+apw598OVS8hZl9lUeSxNde+pVj5QfdVVZh2Fjs=;
	h=To:Subject:From:Date:From;
	b=ov/anKzl7k9GFkZ2BkxiUDu/0m3FPrapDAPG2J+svbotMysFFuy4PRHpnDWLPW6ua
	 dNPDqT938L/onqgrxOkLpuKGZXm53340jfeGpFUiV3E+D1n+fRPyUqqbUQajm+Mlsn
	 om/8/meoag8lSVExP7XGTy5kSGtf8IqFY1qCBwZu/64owwJH1PFlixzcV1CRDL2KWW
	 xQj4ZMCWuWCwkPEHmV+lV86bLHcFfxkSYoi6p57tcHRLMlv6rlWm9Xdd1EfcSslbfE
	 wibbU7j9jrjnPdHmqr00OETmaBpTTfMKBkKAJWrqGYG/jD1R/T/IV+/pZcGEvpfVfO
	 8DdsiYqZsquxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960ABE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485055358.25767.6792669647291734101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb5cd6db28d7eece07d45c602d5cc2cde244615560471199366bdc77aec9c2a
Date: Sun, 22 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734850553
