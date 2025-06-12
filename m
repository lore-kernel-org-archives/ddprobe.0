Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EC55FB95
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749760193; cv=none; b=h1+rT+dO/F+wcA1LfWZH44JWkvrl0EY2BTzuBQyVXHrhTskzQ4oFhA6TBFFmqKosxsefjh5bEN/3CcjHO6MX5Je2eweEdBka5Q4S2XUO3AjcMSg4L6B6qLPm99TWqVRiUiG97Oi7/1aQh/bmvQrhycce4ssPdQCOrDbpsB1vOMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749760193; c=relaxed/simple;
	bh=OPHvUyeJlF3t4+Hy17WcOsly4ZGEyXrMrKV/Ov7ClDI=;
	h=To:Subject:From:Message-Id:Date; b=AvtEBNDUBi7+1+ar1YXQNHf3YreJv/TA9m7P0yYYncta3KXemX2O6rt83Z9kOOohLhf/PTmKoeicvYOSvKJcAf31RBzHxY0VFtHOsrH/Dy1Mr9OZXfYrW3VI0hF9IDbN1u73AzWvcsffGeXVW5bS1IwEw9i+a5kg+SOmgvECyJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgNdNdld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgNdNdld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749760193;
	bh=OPHvUyeJlF3t4+Hy17WcOsly4ZGEyXrMrKV/Ov7ClDI=;
	h=To:Subject:From:Date:From;
	b=QgNdNdldbBpn4yugcrayPeS3gf2IvCue202pn+vZNrlIZ56uIYfJ6Fq4SLuboS2Wa
	 qPLp1MI9S4rwGC56d2VOIm1W4IpY69D6QpKOelEvwYzGrMl0l68wrXQB1TdVVnuEB/
	 7WOpGz9NechZSPWUx1RWZ0gF1BenChdOWPXWn9yzAi+Y01T0Un5PCLBoqtBfyJKEY5
	 YAPn1AaMnIFoJAl/3iTxIO2fIW/EqVdoa/anXjz8xuksPoUTwfrnffjn9RRipooQUd
	 z+yyCDEaul8pBiQRnXIIPtkyxPZHIRbKMNW8xoqNNpfTcllOzcK5SK/8gqV5HlaSl0
	 FU7K+lmK4JM2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF31C71149
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976019358.8645.18296406485511717045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7acc9b7f214ae2282b152cc522b688e12c89e47646babf19d301183c331a7f
Date: Thu, 12 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749760193
