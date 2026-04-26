Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2520337F8AE
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777231654; cv=none; b=hcWyLoyqYSAAxpO+nORz/4aCwmPVUNECOH3lY1laxo9eVD9jKnXXjMi7pzuTka+7f4w4s3w/zFGaBJT/baGlkCytWZt+TqNiPXF64sP9FizJVHg/T2Io6dj4TPYO0+4U2pEWjWQuamdQ1DUPTmD6BbOw3gg4/FJnre9LS/pr700=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777231654; c=relaxed/simple;
	bh=rnlbedrvlmzgOaO33WVl+pIZ6ZO9CMTA23bbQg64R+M=;
	h=To:Subject:From:Message-Id:Date; b=cKwFdBwB96NNlvuTE5UweT+NC0I7XUJ9BNQwel9WEIwUyNGjhhf9cgmARtxU+v05pHZdFrblANa2tV9rZbM4ICbZHbSO3UzepAt1/DYa2brYWFCDZ+AqjfermTOXmsES9MBAffHvzc+bOnyTYUXDQVwuS36Q3Ow+XwJh/xav+pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLPqYlpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLPqYlpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78D5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777231653;
	bh=rnlbedrvlmzgOaO33WVl+pIZ6ZO9CMTA23bbQg64R+M=;
	h=To:Subject:From:Date:From;
	b=bLPqYlpNTbuilRK1TafiDl61K8XahMrfeLbb25BbUcXn2S6wjGcMzbqi5D5B9ZDyU
	 1WFrzRuO8PTwX+BQl63PtRqOUHa0cFK+ZaET69PljX2axtSrABbiKOy92lJvHrG7Da
	 8T6vofwFJhUthrYPALG7ALeGEFaxoZ+LHwy2pAbVuWPZ4dhYyP4GU9NDMvsCSYS0na
	 2O4IM+Xnxafg+xZqQjw/+XgJsYuvq3O63HDydvdGSw11/0tggOmZjK0DFJguxd0WI8
	 /TgjJkmEaBAKEvd2e4Y2tfG2ncVcnEZyx6uUjScxZcSvnvjaLWRenNK7IWv5HkN+H3
	 JyqMphp4QRtzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F99FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723165368.7923.11918156958891192314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48534273c3914dcc6027eb242e5836b5d454c02d6e840854f25d12d21b4d3361
Date: Sun, 26 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777231653
