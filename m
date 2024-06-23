Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6089914293
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719127343; cv=none; b=WZFZ2uwNKETSbRO8kXfKSpCS3bOJfnWHn+apqGFmg0EsfMTIVeAyw3m50ENJQ4Bu2qLECKzt4b00Dz2P3GPwA52XZrwmOj7QyNWEsA58WwpOIJ7ipyflGVckNebqWG8p/TBYEGWuKpEF3/94T2krZskD8AdmN2aKZAD2WUelJsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719127343; c=relaxed/simple;
	bh=aond7R5aw91dFF2Z8mLoY2hny70TEo+xPNzcg0fCKaQ=;
	h=To:Subject:From:Message-Id:Date; b=JNh7AFHXxhBYRvI/1k8+mQp28JV9301UtbHG+VmXvPa9OLuOf10Vt9pDtupKqmdpT/V4y6e6EzSBYjQjq1TaJQisclBadX9EpwzMSAHn02XA01oGRWKpZqTDoEcPTcQputxnQNloEh1Rr89OWlDNELRAY1yTjMLqp9qqc2xGXNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msa4TqyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msa4TqyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF14C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719127342;
	bh=aond7R5aw91dFF2Z8mLoY2hny70TEo+xPNzcg0fCKaQ=;
	h=To:Subject:From:Date:From;
	b=msa4TqyMVu2DiVU78+VXZBNgMBuO2C61zhs0gMJ9a+tm+n5LaM3M+Q/eYtaHf8Cio
	 2BJvfy8utJ2EsNoRqCZRjX5+jtVq4h0DcBAuqdr+kRtDT52s7pLR9sFN09rP+LZFlS
	 fjtHjY7pH0koJuvdtu8S9IM0z+H8zua2KmEh2xzu2bdz97dCafZOsl7eWF3p53vkJ8
	 tLIsi/kJQo72WSP3a3EbATRh2/QIVhLwUqxMmWg4+d7LxLaCNL5l52UzA4eTpEfPkb
	 BEhJhPj8LxQodB5dGlxYzpnirC5Wt/Ct9iB5j/mpWJhWoEujEZ2nsFW/OdlipHA90E
	 Y327FhykV4DLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE4DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912734278.15549.12289809605815635075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f863a44f2503f6f112d88493db1ab33b3ba0c583615e880ce3910ca2efea74
Date: Sun, 23 Jun 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719127342
