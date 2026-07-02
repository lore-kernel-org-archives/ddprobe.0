Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459C8360ED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019914; cv=none; b=Um5dGbmNDmBKEt2uygj6XeJ1lIr6Q9BAC1rwAZUNb57gOyEC1LSw11KZ678W0iPeDZClyjbFbWqOBo8GO5Bz/lbYvM5ANi3SJvKsiUn76gvcqHl38RC/awUcmfuHOJVosa9q+muukzL+ovxh/3f0PUHEjvH2gNMqQ3GCcSfW0bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019914; c=relaxed/simple;
	bh=SGgWhRohP1bozPajunRuj+262YtuJo3iZVYtaQ5Iprw=;
	h=To:Subject:From:Message-Id:Date; b=e+8Q+arQCHmZbBvFz+CVW0eV9/DW+oX/Q5FaaxiYLQnvU0av5h4BOtkE5U3VFD4dQ9WBkYMEd+SjbokNao5U3IBD104m8JQndBiG2eN5/2QLWqIz8lJ5rHhIiFxQnEjrIBAPmUO0eVikhdOtkY23ZolHzBqFArwFzR8cGgyYKfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND2y6ELZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND2y6ELZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7D3C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783019913;
	bh=SGgWhRohP1bozPajunRuj+262YtuJo3iZVYtaQ5Iprw=;
	h=To:Subject:From:Date:From;
	b=ND2y6ELZcYN3Xa3toFSWIwDqBQA5WuNq7w0xFgDJwbPYWzF6D3CzVtjNyicy6U/w4
	 NAeWRitcHzGnqYRB6KvL6vs32uFj3vdRGymOJ1LObp/aWpnc9X++Na9TuvQe/mNXZ8
	 2R6YLUfX/0hO2AHHX+fcyL4T0zAxWGYEGm14h8/ronHJ5qN9xH4vsHwkK/kPKm7REq
	 qBtbwQti7DATDm5bESvSl2f1ECy8hABn0x6444oYbHQRzMfjfJAqMd4P9ZyXboJMy6
	 slZ/xSkBz4BLjeU4dMmx+GF/5kCOf7QblHPM/C+NVbvc50A/PXjuey86gwddoQ5hjp
	 uLR2xGb8YD5tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BCC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301991369.24775.995220917823082672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407fe53a6b80c1bdc16319e7ffc123860f6576f0a449ccfd13c963446356cac9
Date: Thu, 02 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783019913
