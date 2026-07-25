Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5D1DF59
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785015034; cv=none; b=A/RmVrftjBkJ4YJm0lNwW90VqPV69YPmbJoiiMZ8xtVRrChAFIlQSgw8KeBgSNwt8ynt+EKG2I9em9jvujeu33kuUKg4nSC23fIIgNflYx92Kpo01jhfcyjtw7q+7trgVtNCRZK22sz/gQVoJTD4z++qz98Jh5ELUCiV5YSFzh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785015034; c=relaxed/simple;
	bh=xYCDOIIlItpZEYDQuRm1/we07k4KqN5U4WfUH4SAVRQ=;
	h=To:Subject:From:Message-Id:Date; b=oR7/CX466irot3lP01vD19DrejAw0nAFSPzG7PDB7enFPayhqWEfW1gt9WT8dNi2hclUqqfbmosz16meVyNnlfWqLfq1aoCsHnUVG73bwlAWk09icj6RzVAbv+Vqo0+2CLtCfeKSnGLcIukS4Jz73a9ByeBUYooOk8pFh+50bUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGMUrJMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGMUrJMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE642C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785015033;
	bh=xYCDOIIlItpZEYDQuRm1/we07k4KqN5U4WfUH4SAVRQ=;
	h=To:Subject:From:Date:From;
	b=GGMUrJMtRWgS1JSzBePeGI6uBfnksi/jbvFXgUmv5coqg5HoC0EKRJM4gE4QZxEF3
	 qYTZeqkc5FLTzJfmCTaLCfDVFAOuBOVhqYsM6yOR8o8nrMp4YR5W+WP7u3BWpsn0TR
	 abY03keesjkUCDqnJ1XKbmc8omWZO8Q2W5gaXPb+POW25OO3Wg+6jJjDl430gHZSsR
	 IRfOJvXH4jVHl93s8AMr/b4zYx6fEb7tyweohFVq56D4ESuDd28f+WjB3dbALsi+tr
	 B5ULgupH4F0MJpjA9dF5OwDGu22L+Xk4MY1w5dy2u7yNzI5O+CR7VtMhqzdGsEQi+P
	 LAHCkz0kD5Drg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC4C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501503368.21827.861503663805901926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185eeea4fec037aad56c56f766b385e358968c790b4e302568f2702f52afdfbf
Date: Sat, 25 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785015033
