Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C3F1F418D
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761578994; cv=none; b=f17+IfZNi5227MqvhSQ7OidOu9AgToLvHSscRPpcANT0NBe0HXLIc/NTyVuJObpxiYDZqUh6f9/TotvFSa9HBmjND56/B8+xulbrjmycjCKHTpku5b8iX32IUGOl7m0nZ+Z5HKjjx6kkCIZ9ZD3MkACAqULxOLbrzQTwk2rSAHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761578994; c=relaxed/simple;
	bh=VGFcZTQ10045wPvR8Bxzisl943SBjMDPWWRzzbOjbDE=;
	h=To:Subject:From:Message-Id:Date; b=n+nR9ckyug+7uxVg3ebmjzRuw70C8r5tfyCANQW71R/E9y0Ww9Bnub9DJSCEYjuZdliu8eNA2nkkj3FF3rA8fnk0xDih+yIaSu1usO6Q3UWuTCVrrZw7bzivyjnjFFtUr3skfEa3sQj/RwfQFXpmrjS9sN640wmWAV7t/tmjoSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6udCuf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6udCuf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761578993;
	bh=VGFcZTQ10045wPvR8Bxzisl943SBjMDPWWRzzbOjbDE=;
	h=To:Subject:From:Date:From;
	b=q6udCuf9+FV6o5x9PpQzCOhDHp/M0IX6l9yy/5Hw1ibffZX3A/xwKZ7d2/3+OUaug
	 WHeqhRLzxOnCFFbfLMnpcMVUm8AQb248FsZl8Jew3wFnsxY2iWdbfXL5HKzH0ehZJT
	 5PDJgHPDjXyMkpGZC0HQh8DyQFzEV6TU1BwpW0moVnaNmKtb2lsH1E0wivYNCk9FC4
	 Zi3yiFLfSE21HI2p5K13ui7D8yUkq89OZa8mjK6BldBq3SlI/XQhfRDkkE58PeivLe
	 kTrTGrR77HGDO0suq1/OzDjoSZu5Xh0lVQX3ASgsrlF9+9lsw6r7D+4F4eMS/vQZG2
	 xmwlEysbWKkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F4CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157899358.6248.13627895974832049651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fd08735cc80bf14df170c36a3cae0df33f29cf2f3767f52b29bc7299b97356
Date: Mon, 27 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761578993
