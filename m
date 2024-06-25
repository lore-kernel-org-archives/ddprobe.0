Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E9714EC44
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719338003; cv=none; b=WSJPoA39cdfcJ8BBuODNqdZd2EPekJV4XIjN/bsIf4pnRvKja95DM7N+CM6Xg6QFYT90fVlRUOcPCQqBAPWvBkcYlXlAbBbJwElReQS5UjgkoW7kpK4Mz8y+nMogqTbhHRpgVycaVeSDNQTYVpRMHmptiMRo/Fp8HD4EZwnytsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719338003; c=relaxed/simple;
	bh=pZ1jqNKeUz4p9fXQ5fCL9L5JbiE/txl3dFCoPrlBz4I=;
	h=To:Subject:From:Message-Id:Date; b=C1TJmXGB1wASLHxmzMiU/H5+K9fGBD3Dam8iEyn/8SlAmKYHdDHmjNF+gJQtqJYXFJhe8FcIVU0t1FE6BkYNkHEyEsKiIUCog/v9mRLcmOrZheunEq2TUU6SSKGEe6+xwkuG0d/3S7ANJ5BB2IvQ8nqqy0EptZXrv6QeywNghOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSKiPh5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSKiPh5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21DB1C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719338003;
	bh=pZ1jqNKeUz4p9fXQ5fCL9L5JbiE/txl3dFCoPrlBz4I=;
	h=To:Subject:From:Date:From;
	b=iSKiPh5UnbRvfNSdccxZQxmP+EWHUUma9VmHshRiUbY6xbB88gJy5jeObz3cS/VHi
	 WS8Thc6pXDnFbKl/CJd1WS5bcSVTOAA5TELVrniOYLrnsZ8D39CRj4/aBEr9yzdmHE
	 C5/U/+ooJzpLBC0JPiaTIyCPMLLFqvy68qhl3nrpe26nkLfI3cyGu1K7VQBD8hxekz
	 K/2YzVsq3dqOJ8Aa68w8e94m+uqLVeHE2VPK/x8OxtkDm/ab4F6MknFOT8QCwvNq8s
	 wVouwudPrfE+QWqvo/gxwcRDi5FiCvv2QSVKYUiXOKq/yMIEV71LLzIUFpaHutceot
	 Szx52xZcaXULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB759C3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933800286.25720.4162054414029987548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649b860d3e7d6c6f93c8e7f20578737fdd61f7d7631889217e5453914ecd13ae
Date: Tue, 25 Jun 2024 17:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719338002
