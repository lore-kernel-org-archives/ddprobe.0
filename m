Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EE21C8604
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777862254; cv=none; b=LZWFWCAg57CUWvOZVrEnytadvSi5IG1vNoel86ph/h/P00+SfY0P7xefHFVJPcmEUGyXFs76m//qRZUruto1QlmEkMgscNpHI5BGd77+8rVPleGmr4d0vjmvhRTnuYxja1StdEW2hIlqT09EJjWl24wBt2T3gRn6rb4+MWHwarQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777862254; c=relaxed/simple;
	bh=u9dTRViWubVGPC5JCcYjD8xwWzNmsa6CCGBwb/u3xQg=;
	h=To:Subject:From:Message-Id:Date; b=JjTsIWgYUnxGOGA6wMGFz/U7X29+dSO7NYtzlR10wgWn/m52s0XKPpkYEDkGhCpsWKStwsJjxrrnr0mjpFUr8DTVgvSVtaOQ8WpH/IH8Tj3pmb2DcnGXoJR4n5mlOOOSew4oi/u9YsmUA4e91ZWbxD5uDkWSSEyRZcx8A6r0HY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amLmnHh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amLmnHh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA949C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777862253;
	bh=u9dTRViWubVGPC5JCcYjD8xwWzNmsa6CCGBwb/u3xQg=;
	h=To:Subject:From:Date:From;
	b=amLmnHh/0zmvK+69fIo6HUEYyU9oOhTVhnIOyIJgc01EcxzeOOZbzXE3it0rO9h6d
	 H6jJEmjrThlJFVYKQXRefUQAZzX7b8b5GNUyhRYjtJCUS26+o5vm/wC++35vERVQNV
	 LMjsvFLeRRMkEXP0zLQWSvRruY5hvypNGVekXH7hHnE5CP1NZ+DzAydbMIu4aaDWoQ
	 r+ctmmFEfcNjzaHoYnH39VRMy2dIWvHYlkg4SPF8LctGvHJcLCpoybSUd/Wi2CZtEQ
	 N5Ur8dL4qRUZ2EnfwgydglGJsWZT8W08a3+ynE1TO1ggBtRMMaI4usxBPkgwddzs+k
	 42VBH/0LuUcFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CDCD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786225368.5241.15277266868727694294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbe5a39a2c438767d4a78d6994f9fb16490ac275788ff0b98f32a71e26e58fd
Date: Mon, 04 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777862253
