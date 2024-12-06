Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BECD1CD1E1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733517354; cv=none; b=ETmFA8fZUOScuFxKf2DzrNw0WXeYVfz5ZIl4+DGdwLerrbdPDo+Zgo9vVwNIR/S43dVNtYKo1BHfqfIPaqtXG/TGKrLQQ6Hp2hyIhyBGZ0O/o89z4VdDdV3gtfeqjUigz+OkYaFgmio7mCrMXdMPGJOuZA4GhtkdLwHCYHRIxTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733517354; c=relaxed/simple;
	bh=yjZKfGfmnfPNhjOJ9tNtbN/n26sYY1qxhR7HXW6WwqA=;
	h=To:Subject:From:Message-Id:Date; b=T8M0uiYFcF018T7ouzFVgZCb3gWaDRbU/7zV6a60Y82roISug/A+IuF5kZ0iD4mOxRSWMvhDyaZ3qm2DYXIjmOJ2QZv89l+SOK8tn44ZIvd3BOSgHiiddaIiOmG+qQ5qtJhjxcCcOQShXZZRJHZ63vRIZ0h7ezc8JJxe33SZSX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/zhAMLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/zhAMLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E94C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733517353;
	bh=yjZKfGfmnfPNhjOJ9tNtbN/n26sYY1qxhR7HXW6WwqA=;
	h=To:Subject:From:Date:From;
	b=F/zhAMLfZ0wLpAgGjEuzx9g2YX1tmibzRPwc6+VZyktoJsTvFE6h/1O3HeK3NxnJX
	 YCBc62IiIYo9K++1Ikv8mdp+WwfIWXfsIolp5tOUtxPPEXikA7weUUfhoCQESdhfCn
	 JyiqAm32QvARs4RIffa5zngFwtkbsbS95z81tT6V/YMkYkQf2cticmoBWb+XA2ABxj
	 yjbVnzsXHe2LfImOachOwK1QVWlDR9JgvFjpKnBXHg3gzOBnJUYA8sI+0yHjP+zRGF
	 FIIh6xKHgeefsuGg+TExDs1ZXqWTHyDcF/0RafGocg7MFntE1/xN/0Klw0nzahniH0
	 /EedVyPPoDj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C78E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351735362.28352.3232310734002005615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c814342b60ce89cc2f5a2e98fb22029f51a7e6655f9038e415862a92abfbb12d
Date: Fri, 06 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733517353
