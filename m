Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456B81AF0BB
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778392234; cv=none; b=YsmvNhAEu37TMQA1vObViKFnfas1wePhCbjU4SCC348thGrEP35s2dIpJNIVLtMTLbWuk9erKtVdOs35GiEBt+VwmhiUVWO30ar9Sbyznbb46vFKsQlhtMnSmIvi8II7OA46fBUT+dPNuGWM1RM1Sufl1hCjXbp+QAsIghHhDD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778392234; c=relaxed/simple;
	bh=/mjOpKLYKeuKWz/+L/coRMyC0sCMz1sWPI6DfYcrHIw=;
	h=To:Subject:From:Message-Id:Date; b=WTM/AWDpMV/bd/Rf3X5USuhVyHmfpZBDjqBjgxHGT8VpayQozH9Szr9srljCZxsqfHutj4XtWVpNRjmQ/zToCb/hacLW71jKn4lBbV1Rz8D6uXsKbex9+uWgEvuWcckM0TO/v7+IykkUXou9LxPQso78WJTjyF1HRh8Gj1EHWyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D50EQD9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D50EQD9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BB0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778392233;
	bh=/mjOpKLYKeuKWz/+L/coRMyC0sCMz1sWPI6DfYcrHIw=;
	h=To:Subject:From:Date:From;
	b=D50EQD9r3KNBPVguwBdMZmRJ5ldVidPqBOroTNmy9ovnKvgZ/knxWk5Zwg5yuSbTe
	 V6oR7hYZLXTltuv4Zwo1GnvnUUBWNXXXbb0aOOiOrtMjKgei4C76Pyh6rKqTK9/N1B
	 hpfjkuc8YxUa4P6y0wvRv6Tdqk9zOaydGPVeh79Gl+z2GFKJlpLUCr/RnXwhT+8zNm
	 T/jDdJyn2hOLv8h7hWK0EjzRQFYJDr4tYdq5wHX6qww60ErDh1FfaG45z0LV8dkxdQ
	 4QxJSLirI6ApJ+bnRIy7/gAP57TfH8+zE1NAL0S2k/zJ5KuqNTMNdr8vzBopJFhTnC
	 v19QTof0EbZww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEEECD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839223368.16793.2942822918926010994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33826d7f1e6cb88d3ddfa59afc38dafbf07dc62980d800ec8f12c17bcf0d8728
Date: Sun, 10 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778392233
