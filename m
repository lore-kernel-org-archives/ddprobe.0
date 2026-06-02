Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D466CA5A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780361674; cv=none; b=phNX76Vni86RbfdKwES7dvtjfCX8QZ9Dg3FIgdG6zOVxajMhYvkMQXuOmHTZCP6fT/6a+/gvFEPfKpfg0V3L5KmOsXTyjpw56d11XaJi3BhrS452itdnNMSIG/XEnKt3wBmePiazOaoRHtu9JV31qr/95nMrVPcmtUx6knyVX/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780361674; c=relaxed/simple;
	bh=M/1+IYXxEMgfq7p6coLSsrHRob4h/0EBiddHlCGRHrc=;
	h=To:Subject:From:Message-Id:Date; b=jqFgoYfXMw7v5Cx6BQKThMWAB0apVHP7akJORi07PT+IeXYlURAbDqsVN0hYhTq6+gB70iUktZtan/qR+pdymg9kcU0+MT+emWnzf/Cyz2tbVTIvIQaye0Xe2l4XaIpl70+AuHKHC5DePdDDyP79lTPNVokaJ4IgJJq8u+YvgiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNgNF2WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNgNF2WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC1EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780361673;
	bh=M/1+IYXxEMgfq7p6coLSsrHRob4h/0EBiddHlCGRHrc=;
	h=To:Subject:From:Date:From;
	b=aNgNF2WMpOkIVcVylj6NpwZoqLnLnbel5/3zQydVy0KTaMAAQ41RSlkWBRDhl+LGV
	 tMPWip6stFfA/Yh2MIzvl/MvxflZ3tQbvpPcM5EJ1B/ZhrWh3EHpmSrrrpjXme85Ke
	 39MdOjxREKSDz45rBBGqXtXPyKd+tbajkMux42T/4zVoiaP9jezGZZU2LQYOfd/kY6
	 sv8f0emqQ58gjP7dmcV4D0OZji4hqwbbqvPS7pKyBqvV/XeUdBbk4tM5/N52D1i/UJ
	 akgzg5LICxpl82cYLCdN8gBEqwfsRMU9XyTqXcZ8icVCmlirWAK1ZC3Aw9paLVrDBJ
	 67hMzPtFviVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53A1CD6E55
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036167371.9975.7912510895359197698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba7a1271f58559b5471d89eb96214158db8a422d0fc6d8ed03e07e6c8e2af85
Date: Tue, 02 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780361673
