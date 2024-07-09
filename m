Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611641E898
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720501583; cv=none; b=cNJ8zjH6owftxOxdRfW1hdM9AeiLoLYowJCmrvPyZG4aTz+5JjJGPTiW3+UEjySmnYBQApfdLcbjjMNkwzmEyIUN9vwUUTXapjzBeqLWb+6ZX6vtl1CSSbfidrjPZfWraWiHyDGVJYjsgFSeG4aS7xY4W3ETj1PPweWfLH3rtfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720501583; c=relaxed/simple;
	bh=gTMm61SflD8xCAh9GW4XgtRB6tsNOgeCEFXwwOn5Lbk=;
	h=To:Subject:From:Message-Id:Date; b=b5Fvf9Gi/8fO9RuFwsNJUCuNHQ5pjdGuLz8iNYw4dg1tIEZ9tE2YdAUhCVre6sKh5xYWKdgvSv9ALHcIDYtJ66/F3lVcBuU8rz2lO0dtjGwoRrYQfY9dmG1p4Y7bXVcWWuY9kVSh4fu1CADMJoSCpdj92qKVODcPvvkpRWZQ6aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRae9Nwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRae9Nwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8758C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720501582;
	bh=gTMm61SflD8xCAh9GW4XgtRB6tsNOgeCEFXwwOn5Lbk=;
	h=To:Subject:From:Date:From;
	b=vRae9NwhqQ+MVg+8Z6N59cSEN8fkwPkDezXhW9c+YG4dvfWwYalK/M4+3/HbA+8G+
	 xMvi1iWqg4QUdbD2cJ/xZdsW0YXhoFdbiL4XhffXAsdHKjaj0GcBSAAuMsDS3RZGmA
	 WPTKvcACUTp1jPs5w21/eHF66x7aFZemv48O7xtNBCHNx9cnj0kt9CN71etuiBqxTe
	 PKjHpebLxpiDnJKrskpCDwzvrI+t+ZHR6OgdvTqSmO0jKcmsdap/dY5sDuvpKVy4wa
	 xNqRR3Mqn6xdSduFYgSgO+W4ZHF7iz+k0kxXxy3JSwxI8+83Dk0BbcUMBkI6sLyjN5
	 MTXde5oxDTtfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE59EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050158275.19199.2044673026065174814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3c36062f07b4d0d1c6f60466bc85512006339ef0f028f7f8f96911b4f8ffc4
Date: Tue, 09 Jul 2024 05:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720501582
