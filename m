Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0D630F55E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760509196; cv=none; b=O6KJHLAFk/E77UWdkPLYZfWU3XJbnZSkiyNYaatD78xRBPG5FBWOF2adQzHcdwFWlnrYK4FtFgvOL1hoXJopmuk2BZuuhuyYkubyqLO0yppmecraDF5DQxbXEVI2E/7QaS+4O+a4mUQdTt0BACvsw9YhugUB46rEgSe5e8FdBJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760509196; c=relaxed/simple;
	bh=chkVLGm05G0HYk5KI5uG76Vkb6J+eOYYFp8B/wH+PB0=;
	h=To:Subject:From:Message-Id:Date; b=Gngn467slYYBak82QX/lZTC4WErGMfIX+bBjA/S20e52eNVCyimcuh97H5jwC9PkpLfkAPrDwaQVTphMXgYlRqFzpGErz9fbNC82SIPyhpEwS6S0SfYhPx2cq5kLI5QFCVYdiujWPShAm21Zd1+g1LRL0v0aB48umE82NGUG1TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbE2Eeq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbE2Eeq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DBFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760509193;
	bh=chkVLGm05G0HYk5KI5uG76Vkb6J+eOYYFp8B/wH+PB0=;
	h=To:Subject:From:Date:From;
	b=FbE2Eeq5YcCgtzZfR4H1IkHZOo2dz/J7onqR58bCDJ8aU5SE0b60df1YVK86dSF5U
	 6LY2BRuppZp7zi5ODMZTxlTB5atuiYcNlnZor+w7cc6TbNfe23in3a+bNqRkd22UEa
	 oiEEu5BZ2KX//9FX6l7Yq68625nL+ZU6k59VaAfWQgV5lhBK8n5KGrz13f6wZysB5o
	 HuO7533Wtvt48Y6/B+UFYUOInIJN25KU2Zr4mG3X5sX7XR2BQrlqJBlN23hSAmciB8
	 1HgjwPHqAHJ1dSVny0gu3FjGjm1r2VAqjHys4I+1Ygf8bQbIT7QSnZRb3Lj+1AUrb+
	 Oj6K0nv2quzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B7ECCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050919360.10827.10093902765367778371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbbcc530cc0467d408dfd5cfb0c7aa72830b22729ef2d76aabb8eebb0425c13
Date: Wed, 15 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760509193
