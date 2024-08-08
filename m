Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A61118B471
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723136754; cv=none; b=iCOuSzRyjpGdgKwoyMfo1IqHRYtPqLtWAoDJgzz52W5x+Ulor1uas6zMBb4jY93lW56mQh7UWujvRIZ6tqB10FespDgNfqGOOZaShdrQ1i96H+b5x9QvIW3WdwH52y5uWRwR2wRqiw5U6Df18UkAAKok7NYX2EmFwK1z7QLIBqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723136754; c=relaxed/simple;
	bh=f2E3vgL6Andm7hAA1r/aFa7DHOxjJMm+ywpsdW9ZYPg=;
	h=To:Subject:From:Message-Id:Date; b=GwjJlBtYGArz8MRe6AjRcD+hWxYIUO07dSd2qJIX4E8ysqdkN3spxBI5sWJL+ZPJ0LVVMzJjQP6U56NI7Npa7Y6LIMcSrJODaIHLeF1WsEfAEkXszCssYsOgJLbXfQom5m1P4U0m1cQJPjAbIPTfXfgZxmMi/1WLVX0dRtJB2kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRjZmNWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRjZmNWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B414EC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723136753;
	bh=f2E3vgL6Andm7hAA1r/aFa7DHOxjJMm+ywpsdW9ZYPg=;
	h=To:Subject:From:Date:From;
	b=QRjZmNWqTFIWczEBh2k1UwZcn93PV0s5eSPIkZIhJ08dbIqFGCxwLfuL83+txEwFf
	 MudaGBX3aJciyx7emvykU0uV2tEQw5BzgOLQREEAGkgfanL07j9ImTD6sWyjNKklNM
	 em1BOFfK1xqCZE5yFJPLSqtWJ9cbJE2zQv35y5XtP2ROxZ4J96PVsRLKIooyweedbi
	 UoLyNp7MCEi6XXGkvgbZDIFfYvKhYvB+ArdD7+rSEWdgBfBFOpLUijIQOVsjPOhW0r
	 nvCpUWqL7Cv0DnEly0WHYBa0Xn8VLp8RCvCUOaGsb6kUv8kswmuGbID+cXaGF+tN5V
	 pZztCFoKHRScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A69C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313675366.9182.4807905903955738879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56674777b2451183bec8fd60dd2a34fe154ab2a2117f9ca21632cd1dafd5b3b5
Date: Thu, 08 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723136753
