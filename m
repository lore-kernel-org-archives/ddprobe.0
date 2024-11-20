Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E241474B8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732131954; cv=none; b=UyOfYKi1d1YyYEa8N8kIzvn12uXfFXDUmfg2VjYUT/AepKcYCbyN5fmoKeSbdSoxCLtnInI+3FhDdhO05qFE0QBg1GIRvi6XWccmmtwYBJwt100i9/kWrCzQZHhrvDhrg+jFuAJoQqFO9Msx1jAymDneF66dCPv/h4yM4YURngI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732131954; c=relaxed/simple;
	bh=JXZIwoad0RarNC0iDRPkGF+Xuf/IlXa7I6RYMPQ9AeY=;
	h=To:Subject:From:Message-Id:Date; b=GBAmFBjJSZj8YzmRFwUpe+GuRtws2JuLSH3PX6qR64wMNqGGN5jUtXVUxC+gkYOubgNAmqlt4+uPLuP+nf0JBwhyEIGdgtsZqME/ZDYvnx8vtyiuDN7c/gj+TFu2KDXaG7yycPfPQyuvWbcOgZfwSTKs7xKzI69vAAbJmivTDhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmMVVk9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmMVVk9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF0C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732131953;
	bh=JXZIwoad0RarNC0iDRPkGF+Xuf/IlXa7I6RYMPQ9AeY=;
	h=To:Subject:From:Date:From;
	b=hmMVVk9GrNYINKKiD5QJX5h+dpqKImyCaF2c3187Sem2+XGNlwGAfbk3eWmyj+Bav
	 cCgGYfhatZetwIydO82O2u1eOGUw5GF2W0jNHZQ6JArPbhpyrrU5eOgyYZbc7dwdK5
	 niosAoI7DFbLR09+bPAWwKjaHIxtpWoXIZ0WBQysKlhWpObE3OTbBByf6V2fDgypeM
	 PjzABJyGYE92AxZMBHutXElWeOwMS342Zd9aZwdbW/QxbJ/HrsFSJnkd2g73mQ2Ua6
	 DoBEh6NCiCLYEY/kzt+/HBeJKGvvr4u5vpdbZfyWnnSuJ5F7KKGpJ//Nf+FE25/ray
	 fIB3fSMYgNlLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F52D743C6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213195360.2389.14641728689595297389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3a10516d216fc2c511a432887c4d280cff64ab8b0f9685d634edc634f6942d
Date: Wed, 20 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732131953
