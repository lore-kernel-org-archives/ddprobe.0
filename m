Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382AD233134
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747807794; cv=none; b=HL7+A3sindw+/9azGNcHlSH3oE2+66RmqBAph8g+72li8EIDYFkQ+c4P+34BimvM91VMlUPnk5VQMPAGhzkObEMTuHSW78W80L6fGNVpmWHw2aY7PW12Qc8hG9/hbVtIlGxoZd+4tz8hQ1YGdoXHnN5a/2dgzgBWAYDThPIoxmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747807794; c=relaxed/simple;
	bh=iIo78w21jcbEynUaY1rfWaNxK+fxqZ6qL7X1NjLkcgc=;
	h=To:Subject:From:Message-Id:Date; b=rcve7CC7dy4xc4t+HMZc00EZjC2fxE87VJ3Wfy5FK0efOblxZDXOWyQRvVgTwG2zkaEU8jmkjb8znZ5drteo0ZlYPArnVAUyG4CmlUjF9QOLhC6YTQ03IfQeKcteZ1ow/f9ugGUz9iOxFV1w1bternRRIJa3iThfscahxBCt5fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXXU+j4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXXU+j4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E39DC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747807793;
	bh=iIo78w21jcbEynUaY1rfWaNxK+fxqZ6qL7X1NjLkcgc=;
	h=To:Subject:From:Date:From;
	b=cXXU+j4T60EetGY3RF2OdRL6t2rN5xXBt7VctxVtTlhWJYznvShalQiihaPYyjUo1
	 19j4WnGJgKdF8/I+bfMui0lQcF361gwep0xj/bJs3gggmFKuROQLsMm4CwzzI2x+Hp
	 qmfYt3VnmgFPIm1VYMVeWl0AOANgy3THWs213+1l8uJN7ecdSCrNZ/E4pF2QTUyq0M
	 zpk/U4LkoNkekRQPnramAhDiYOwypWSgirLzdwSVXMJTMupmjkz3AkinKrx+q3hlGM
	 +xbv0LQPdQOzYgvuP7rwmXcoz/T+Ozod4yCW3d1REFh9VPezYBxZvJyFh60r+owI/I
	 S4SKE3zp3eU1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C2C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780779357.5924.8794905821402612348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430cb3fe9733cc36c2e85b6f0fd916a5f4ea869c4d260c16fe5c3b2ac1e6f589
Date: Wed, 21 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747807793
