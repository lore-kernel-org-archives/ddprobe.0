Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BC3224883
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748521793; cv=none; b=bK43uuEf9mh4WRedfza8nAEZAieuIfY3xqBh3aOIP3YezuljHu3xOX2VD1xM7XQAwMZMZMKEuj+fqimyBEPk+Z/FlZtqyH56JgVREe6N3GFjecfWi1AT9cbPsYEeFYl+DMHJMjU2GDdsSvXvmuWSMqULfCfwz2lEIMuuKjtVZso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748521793; c=relaxed/simple;
	bh=/TZUdZHCZqY1eRAe53bPVv+jHI4ZWIyETJUoc8puGno=;
	h=To:Subject:From:Message-Id:Date; b=IvJ/cS9S7Ysh6ukhDVct8PRoq2TE9n+AVEN3m3j76kF2Ds7ORPC56UI6aK6lkGfeKgHKlJ0UmuJFwLmWGOL9wp0fW9mfvbUtwjfxFQV61jR0V5NlX7VJIflQnn2+w8TKTU+HeNE5MRzUAp8he/8kWbp9lUydR+OtdjE+qIZmD70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq64KRfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq64KRfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA47C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748521793;
	bh=/TZUdZHCZqY1eRAe53bPVv+jHI4ZWIyETJUoc8puGno=;
	h=To:Subject:From:Date:From;
	b=Oq64KRfQyfvsjcIvGImJr1GKnE5TPpf5VKjT/wn1GJhr0VQ4AjTQRJJA+puESk9Fq
	 YMzgS9AuubRJrNt5XRO5Uk3ByRHncxn75h63OcktzLgmHPkNfqNU6+u6d1sCRZIEJH
	 UTjT5O20Bb9ARDUJ4BH/+UdOnVJjPRcTp6UWP52SbBTZrSB9jVUf33tsEKdOwIDYJd
	 d9+w64HhOM98Hb0cZMUTsA1wnEetOGxCV+/t2oQlkG2jB5VYDOLVqC8ewmeCCqyh6a
	 XODwRo1n1PK9OvFb6eTVGXfcPdd0KHEL2sNUPIKqfJ15zIQ5CNdRFf+2EhxXcBlCq+
	 m7aenRzfnrYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E45DC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852179357.23989.15080158972512305130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43164390eb27f0132099094005be60bf327a363aadc062041abf946c50571dd0
Date: Thu, 29 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748521793
