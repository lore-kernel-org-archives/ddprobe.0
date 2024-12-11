Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368ED238E0F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733917554; cv=none; b=H2b5JhGg9ChGAYxw9JbIbOd6dxe+fg+Hr8VzOMBAoHqxSVvJb6FvbleeW4PEBdWKrJyg01ocF0NRlL9oPx49Yd6z8Qj6zBzlp3IWnWMYHgWwN7YQr8i6H4aP9S0CwayFLdOXC/oaIH7H8OTwsQjTjOz9Il+fCAIc/HA8z/h9n5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733917554; c=relaxed/simple;
	bh=W+hhCXqj8M4f/8e/UqCONNLP5fUei0DIb+GR2qnN4s0=;
	h=To:Subject:From:Message-Id:Date; b=NtBOyiPtVO6GDyZZyKgwjNaJTa2sUunvSFfuze4VjWqBuU09ec7BH2Lxvny6Uqax/I93XQqr84KlBJ7GEC5NE5rW22ZJ1edD1b/B/d7l4W2VLURwoyXlvNDKeNlrkOvU4AI7sIziaCbtrpMcevBWyNYH+oGxXyQfPog3D2CBrEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5meXHrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5meXHrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB58C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733917553;
	bh=W+hhCXqj8M4f/8e/UqCONNLP5fUei0DIb+GR2qnN4s0=;
	h=To:Subject:From:Date:From;
	b=b5meXHrc4xNUXCPm9qPx/cMoEmlnDKVN/kzR24TTtroibtBaZqvGuA6336rPVXNKV
	 JbUiwL599ZzQDsDJBu2BU2fguOLecA5kEW+cxAfLTUdwtkPKEyLpAdbS3HM65aIIWd
	 jHAnHGWZzR3ImaIuV51mGPlY3Pmc37JauY2ION/IWggjObXfh2Of6APNHNRcCg5yHm
	 LNdAzvPj0QEwKqba1AI+Gtpn5/H4jCzSasNbW0zd3xBRhgQXWvzCPftyNYjm9cn9Sc
	 dlHcevJZi97hkpJ2Yk6yGIgbUoK1oNGnZjxISC9IOJzB2IlxadlEvJCEOp/Mru7Xst
	 va3mB8Wx+s7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE9E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391755360.16960.2331126141267272050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38b42b086c9d5ca4293f4baf484cf8e588b213f9151615bde589fbd601f4e80
Date: Wed, 11 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733917553
