Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CBC2E888A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765648974; cv=none; b=U/zMNI/xKM6/Bmyw9XFwnAvLbFAPnHpZl3wW0XBsrEvUww445unDGDCSS6QF/U6ZS9uWvj3ZVYpeW+ledkmIpnI5TRqvyO3nm+BIXrncBit3iQxosoux5Ka9kCB8XqFS7zOP5SvukSqRzXCnJZeil3TnZAMBbxPSi1JDElqc/PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765648974; c=relaxed/simple;
	bh=Brvx5YU8vfJ1ASkwKBVl9/AJkK73h3YBncoDAV4hOPY=;
	h=To:Subject:From:Message-Id:Date; b=Uy8Q6nRQMxjTnLMM0t18hwDRBWXwROYUKjReCjhAc2XJdW7BGYtzWYku80Us/NOf9dkIeSe16+xg+T7CuiqbFGKaLbky3czpAa+YogilOFJSGXcCiAowxZVheb84r+ilChtSknjIqosV0G0MxlT0TjWqEMXQ4dGj602tiv0nKSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1cshbLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1cshbLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9183C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765648973;
	bh=Brvx5YU8vfJ1ASkwKBVl9/AJkK73h3YBncoDAV4hOPY=;
	h=To:Subject:From:Date:From;
	b=c1cshbLfFcDzqiAtf7NVtN4NlfWgdY6yvrJRSMX4cqlXd13aTIrYgERjRqdaieshv
	 n+5PU57JhfkbUAFRxBchrqNGCFd5uD50aXB1/JzVKhqb49nZKJJEbKEGvwVkWWqfyf
	 FnaQJOmEbQHU43z/E6DAMN/BtszYJdUOLDnBRteK5oWvSXZ/S86/Z1zaxKOBcXHzzI
	 muczMQHT8fF67s7DhJDWfrW5LoZxvVas9CeWSWkeix8nrgIAxrGp6tGE6vAoT3u+o/
	 EmE70nX9MLAmDgTDkkUJ5/WKRbH437ek0Jws71XAbrJzZZySdKN89sGNzQ84bqO50q
	 oU8XUqwB/6AZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E7D5B15E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564897358.23714.10959667362339156432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d5e432106ed0639a01fa74c528cca6e85d78c5e42f4cd8c3e135d21a3b0992
Date: Sat, 13 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765648973
