Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F0BCA5E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753596594; cv=none; b=aDACCfU7XtAUGP2RVtROSUzAkkkzl1XSHUFM1EhJAxket0Pn4yGQLwvmarMOhEJcNAg+8VyRSbqe2h/MdqBX/Ac9DKJgzSi3CHNbGQpCHTFguXGy0jfDngRbFV/MPJ21DdLGNMVu9VQcJaTN8n4K5O+LD7ftiZhlWKzN6l/uqVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753596594; c=relaxed/simple;
	bh=887iyVEM/XY3cMIv+p0xX3u+PSSXEj1c2Fx1SFLUXGk=;
	h=To:Subject:From:Message-Id:Date; b=su6HR7NNus7R+uc+cWKGDJySxdQ6eofO9y4/aWQ1Ayz5DUzVTcOymsdkO66DWHhz3s9hn+JHmrYU9vLqLa0A0jTa7OsmDclyJrootp6b3nO94Uaok83W2y9x+mPmZfPLgVmD/6WZJ1wkBPNGTjR+XKeOk7VbrokbnHQNmV7W8UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR8zd+Mw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR8zd+Mw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3274C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753596593;
	bh=887iyVEM/XY3cMIv+p0xX3u+PSSXEj1c2Fx1SFLUXGk=;
	h=To:Subject:From:Date:From;
	b=UR8zd+Mw3/2wfAIxpGb0wSTqoPcGjmDqObil+xVXJXF7t6gPFda9TKa0oOVKP4Jf/
	 v97UhOtl6Y4s/uMLMKeQTzkaSvmgi6X206MYrLmC8szcJFk2rG3dBSZps/94XNKo0F
	 TkM4tqvXAHBhhxqE59CFZw7ZFZbaUqGpK+m2wo1AAfA+Qy/JfhbKcHaRtZC0TehXDm
	 j/d48N8GkOItuhGrvKsvy8NTx2fhjbEPqkuTETmxn/qeRnT81tVMUrbgrH2hPRt5tn
	 1gF2jiRZ/tUByUp8HCDgVmseMS5TeH1zktgHVFU6MHeiillFuHOAZyVM+83+fYi2hY
	 AlfIt+D3jbLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92135C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359659357.9461.10083293623003263300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a914eda66259c7ccd1862bf61889f2dbe96221ad2e0ec8a15ffbe53d6463a6
Date: Sun, 27 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753596593
