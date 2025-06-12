Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336AB231A32
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749725394; cv=none; b=YYzej1AqyO2p02twyUaXCC3BRY4K/50STFN7mF6tGjCROremJFce9wrFltnAjfylLLhB7g69D5OFKmBDJWV8QeVpxQCYBqkkyKebTbdan7ybCc/Qj9rIsJu/rvxgtILrDELXONPtKgev2s7VXS15qM/Oe0SQe/KppVPJfEfzydM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749725394; c=relaxed/simple;
	bh=rJUIA02R+Qm5eGOGc8rEHVUS7OQjBZVDsCw8epR7IEE=;
	h=To:Subject:From:Message-Id:Date; b=CBHAVqo+xp7/z/v19RWeuGJJgKOn55N9m9YcGU/RYLkMMsnUzqTLjqo/Dd8VWiV9ugVCrcE0XdUnHKOhBpCIKBCXLIFXDyoAamPDcRbvWfkwA8xTnUGle3jCTzxUfTAPuGmOAUN4+Est63zQg1hNodV9UA3LU4EdUJgnsyaQsZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inZKKomc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inZKKomc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E33C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749725393;
	bh=rJUIA02R+Qm5eGOGc8rEHVUS7OQjBZVDsCw8epR7IEE=;
	h=To:Subject:From:Date:From;
	b=inZKKomcY9DeTcAbc3NsWgckGOYDPUTp9H3crzUgxuTAJKbDskNKVxW1rOSYy4naO
	 2YwP9pQY0ryIWAfs/ejO06bnDtG9/1moKxep5q0XAT8gL2mAIW/8GMWmWlM7Ytg4hH
	 noU2eTtGmxIxf2fguFiARO8fbEWTV4V+suecUKeraN7itj8cVQNKtFEvTbecR8Gjt8
	 YAE6zYMnpHbMVtZOKyTucYfj6RBwUAXuydo4mMIr6dUGRowSsymuRT4CAhCIBfhDXO
	 4+Bcm3C9YxaFFSVMkmD6rFXryNz4H5UWUYAFkLhmdG1lIN+/rYFwtQ+/tzTZAsZRMe
	 Yx1aGRjwmxViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA88C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972539357.2445.588036836712997461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2fc57419ea3dee839da4114ad9d744d0d13cd3f80aa68a65cedac499e64a88
Date: Thu, 12 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749725393
