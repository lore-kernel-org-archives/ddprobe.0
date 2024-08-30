Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263D341C79
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725052554; cv=none; b=WZ4dKfu8qjSy55pfSuQPWXud3KLWNy8vLnkSj2xyIQgRWI86G1/1k8yhiY7OyXd7gzM3wfbwLjtWzwHdWVBL9Tq2qB71dj9k0y0MaYXbhMM4cDy2eB6qDI7GXg2DHRZseKW/P2l06sQfV4dDrAviwxvrrrJ4615zw4Qe/htVXXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725052554; c=relaxed/simple;
	bh=N9aKzk+MjD/iQ+YamGeQgaPmejaSIOeeWWRBwTDTA1A=;
	h=To:Subject:From:Message-Id:Date; b=tT7eY2/pqP8LnTZYeAxLXmioskIjOp0B1RSCz2S3ZhS6ARsFE1LnsrDEOY6gpzXXm0+QcebORh0R6X5QP9Myesi8Ngj+Yw5+j00x8AY1Az5sNF5HL3lBZ6vzRAoTkr5BUaKobqy5RvkvZhiItrxqFvdBeA0jegS9GQevS3Q5SXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO/GFBav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO/GFBav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6FBC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725052553;
	bh=N9aKzk+MjD/iQ+YamGeQgaPmejaSIOeeWWRBwTDTA1A=;
	h=To:Subject:From:Date:From;
	b=IO/GFBavLfHa9vMbO6r0uIbfj4AsE7Urdl4ga4LvU7ladSuPfZ/EkBAtSBWwKTESm
	 bbsWGyCD3gH+ksDosU/9rTA0GRjI7RSB5aEbEQlu3RuYwpvMrsf2bzKOdwvxVKjvYg
	 crBZwzIEYQjILLBjoaiuYdfv2L8c0RdN4VjG3AW2msKGJjSZRvyA/PXdatYLhH9Oxh
	 +QkJAVmSqJEJF6drky44AD2c61lnFSgl9+GAL/F0HhTfW1zduqAMPH9vMZCqeFwckn
	 U8HDo1TIRTzDL9tHg1ATARzsafCZZ6b6/+fzatpkyVCUDftTZlNqXrkMOpfQ61YgNR
	 Rg6W6RetJxH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7E9CA101A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505255359.27408.10980333829907301678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d703e7fc735a5cb6a6b7ecfde19c5ba6d8f2ac976e715591cd8b9903c72f23
Date: Fri, 30 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725052553
