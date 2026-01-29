Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B78239E7D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769690634; cv=none; b=V90H6HxAOR76FoaiJ0oFU+6t2v05AuoDPak5Ew+cWHpwcxaEYmn3vtDo46/KsctplILgcP6Gm57ttdqNCKvGpELAXEunj6t42C4QCTDuJSG+csW5AitTP7yNFOPmy5mwvDc0YjRgzC6R7SXlZwMfT9raWfoLcRlmZhHxzcOJCes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769690634; c=relaxed/simple;
	bh=NDM2AruzD/OhIvWZfgmlYaPwYoUX4YKVPj2vCFncfYw=;
	h=To:Subject:From:Message-Id:Date; b=SXpN5xXikQ9NRqKuk0nGL2wUdmY6cD/ZdZobRJpBUH/AWaFyQMvVJFBqfPJXuhWZ8YQrEGljKk47l1pziEtjJ7+yB6OjRX/pBG3gYudPxSTOw2tqmvgLfOSt52FyXNPc3C9A38bCPUUb+gf9nL9ueP+hla8SdfHcPOsVortgmIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/O/U2OK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/O/U2OK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4701C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769690633;
	bh=NDM2AruzD/OhIvWZfgmlYaPwYoUX4YKVPj2vCFncfYw=;
	h=To:Subject:From:Date:From;
	b=E/O/U2OKJOZZeoCbsfGHIObmigw57aCP+um/h1cnG/D0OUyD3dkueCsMUBqxhePgN
	 A9fahg/nsmLg4vc+f7UmHHPejUMj6U7lUzP6MRHNnqYwLHyIDAqSUYcsrvnoqIY4E2
	 C8oJx2mR03SmnkS47uvr5BFJx2JO8mRWCiagZZNIZij2u15woqpt5CxywCmOfQyAls
	 I7hfYqkFz6trlrJXmiDaDJ5eUDVOhuu3UlHjFopAGnbqbCTI3hhZvlosqeSVgrdFA4
	 n8SHn19mnGMh7FFOXZBEKBZvJ2XcpLJVSYpOuB+cuHMer6xow98HOF21Q4I6Cv5q1N
	 ZGI3CaqPpVkvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA6D61010
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969063358.11307.8960006495933910361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1268c371992d3cdedb3df6e51b69a0781408d97c25f4441bcc228322311dcb8a
Date: Thu, 29 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769690633
