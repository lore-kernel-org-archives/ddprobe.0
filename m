Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB8614E2CC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717233263; cv=none; b=pySQR7bWRBdpncI5W81AeJjrXbjnwgRXOZhB0rhogluksyR7uVcSPwsOCf+OCDPR66x9jr7hbw2fUrMYNJL1dPO3+TlFRV6lkMYX9gqSle5trBseMY4yXGz7gMdnW2kdRNUVMSa1Lfs0jzeQGL4dkYWhF+IAUbD8m0M+9Fcue2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717233263; c=relaxed/simple;
	bh=/wFrQwwWUV5akM0IxzrSt9m8/a1bJmiYbP/1TBPk99E=;
	h=To:Subject:From:Message-Id:Date; b=ASz2NJnHd9jpZzV7Ma3b4VJkRabW6VQypB1KRyiIC9Bao9M8QqJPccbNhx9st44hxv+QNkA/Zb8jhx/n1yABDkpizxXlCBwTjIrIYhGRB5Vv3bShSXqL8Uiv8k3fNV4R7SrUqo2h3RRXglCLKL2n/ZztRevniz5HGsRGt/ISy20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPzKev27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPzKev27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07309C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717233263;
	bh=/wFrQwwWUV5akM0IxzrSt9m8/a1bJmiYbP/1TBPk99E=;
	h=To:Subject:From:Date:From;
	b=jPzKev27jYhgkdEKz5EXbu7b4kYpHmsxR4xEERKrBAqLvOzVz1Fjs6GM6bakwY9Ii
	 ESf+30Atf+D9GIAWCZy/2AoY5Xf4HtIhetevlf4me3MgXJSe0qfYVbD7mku3y/yT5J
	 JE+ZEcV3bdzJsugmzc3iQDI8BkVoGCtikby0ZQG9QILIuCDN9nPz+PP0JcrfKQBdRA
	 tSfUJ9dpAo53EhUu3ml6DtrV1z92VB95RRIKkCyaHkrh5U2Rh0tdGEU1yzJcH7sg8n
	 YRMboscFsHO9OYHtocZnfQY9F3kdTUnq6YZC0Pk7HHQY8kCu20lnRQ2bzY6+wCKRK+
	 n8+4rry9r4ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAFC0C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723326284.4888.8655517519753388775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8c06426f77cf3421f6e355aed5a9fd609668a0a9ed132afb94d86fa1f81723
Date: Sat, 01 Jun 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717233262
