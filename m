Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1151C328B56
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769823834; cv=none; b=sNoZTqjSfUBpxeAVulpqMHByaELQer73sbUfA7ixmX5uddKwDLaw/B2LCMkEJrwKyNMs+SZaMMsoYKzjRyixsx4j/Cu5UkoD8mRoRTmgRMrqdtTfSLXsjFV8pvVufFMC8Rs4LbC41pq/duPjgg/4n1/O1Aue6mHe3SUzT7Cre/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769823834; c=relaxed/simple;
	bh=GzLM0DKvPZeeuhggO+38qLYtg05oTB8Wi4OC10rIlsU=;
	h=To:Subject:From:Message-Id:Date; b=g5/ctod6DuRuJdlcjoLQ+RTyjLPvuyoV6fDHFYo2lrj2mL7dyjw9gqJ/bgp0pEY//Ak68zcaHchx6TrWMyVoA13EfEqhR0NMRcG2thTdo+BNOrHfrZMhhgVn+Xin+59T7STrJQbwrzXn6zI8RhZEWkHEmTWkKfghQEWJaOxtq/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLpTRcQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLpTRcQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3019C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769823833;
	bh=GzLM0DKvPZeeuhggO+38qLYtg05oTB8Wi4OC10rIlsU=;
	h=To:Subject:From:Date:From;
	b=SLpTRcQN8wW5bfjJ4YQ/v/Zfhzhrie+QlrjVbDvp49fyhNIIxgLBaQX3Tonukz8zx
	 DSYPf8kraNG6l6WcSspyeAoX4UIAWsRFcx+cWHV7XFLuKZPgGwen6r9lejwRowiqoJ
	 TCI6eNP7LuJ4z5VcudclGGwa7mqVe2R5MDfNmR5HqN2XS57olWxHiAVcaGnYFkJ5TD
	 Nisq9j0GQbG47+Hx5HB/AzyHM0ROSoT+ctfTI2zAyLa/pbNCPHM0iicdkTZNyCi4Ww
	 nAWg55vugMWAtB9GkS5eMAJQtk4vlO1N1hUG8tnx7ocoavY+i3/r3hgZ6kSpKi9EiQ
	 5dRbUr07K6gyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD2E6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982383358.23041.7430473307273441710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41482cdb623847fd617a64b8658c8d64ce5145a066b6c379ac108b4a139a86df
Date: Sat, 31 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769823833
