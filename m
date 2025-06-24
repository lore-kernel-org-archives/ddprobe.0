Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05133074B3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750783194; cv=none; b=UouF5vRKc3V/EHmJNABRX0yXy8T76RUMQdKLcsC9VSZkJqeaju3YFj01R77yhxgByU8joKjiVd4DRaRfBU1dQkHB/BiTJwQFEbTz4Zb+j1RZ38fUq1d/cwHH3jrJaI0TuLczNnsZOHJgoL3UaS8cJ3VJINyMsKkBpfV2pQO0LNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750783194; c=relaxed/simple;
	bh=GZ/5dJGDhw+q67H5kDUS+/MeGBT0rWKBaajlfJGd3T0=;
	h=To:Subject:From:Message-Id:Date; b=qUu/ZGmsEOd+FI9my4ogH+zoG4Tt4xrR/aZkt8Z5aJ/qvYe/8GBP7pVjwosjzqQ9RrftsJBfbjLzADt9rVLPiYe8XHuL5EXpYXKK9dI4Jfgi5Qqy0Q0lnKRclP3gB2Z+6BPt/MqPjdm+1VEL4yt3YPLdYo3os9Tys9AanvYeDBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1iy/HAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1iy/HAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E98AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750783193;
	bh=GZ/5dJGDhw+q67H5kDUS+/MeGBT0rWKBaajlfJGd3T0=;
	h=To:Subject:From:Date:From;
	b=I1iy/HAsaig8baPVA/1Fd7cwTj4tGjwSuo02JIzPQdFB+2Phrq/Si3eJBREuWlsTf
	 ybl1N7YQdP3+ZQDOjxITP+kRzLWT4T4zCA3K/on5MiYTh+GA98JjyW8HWgSLSUlngv
	 6qteXTfvONjO7DjxIttiUjs4E5sm3+MUaEOq4EKY9cp0zpKlghqLgduzfrrDlbdUqp
	 uI7NH57tbO13dRX1rD/apsmGOpQ2lLuoRyg7RDszD3eQ/eZi8CCe9JNSRV4bn2BmXE
	 osLj3Pkf9STGyqEAv7rgUC1KwTI0sKzNlIHcAWQZ0q7Ec0JzNcErkjJhoI8SqehJx8
	 qJjEahP+x/YoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F478C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078319357.17859.16900377157151824089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ac7ff24c66d1621ff7a64362129b7116364e2525ea8a31254f2db133dbc47d
Date: Tue, 24 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750783193
