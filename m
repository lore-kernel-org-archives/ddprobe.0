Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C94120ED
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738464354; cv=none; b=End2iRvA3x7YoVoonga3AU6A4FBz/OtrhpTM66gcJw13U4+h0J+rvlLJJc+rz737t+/cPolYi9b4cW1rINtejCZVf8LCU5Mlk3wgxpNACulQGiwDmSMcu2k788YieAae+5RbeMO/z+aeR+O4sitWumznKaRuGRzw3q+PhQBqPhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738464354; c=relaxed/simple;
	bh=1Q5i2LCSpuvQmP9qY75IzjRanPBNGJV41bFBUE8YM7Y=;
	h=To:Subject:From:Message-Id:Date; b=CjKAyxRZ3c56DqxNFfkusozaN2T5nrx4qDsP05t/aaxT+1KwgJELKQ92h6k0/gslUPBz0MKDIXZDA1OzdE77GBC44N5vTj+G+UYUWD/oEW8hd1hliGfQZAYaIDaP2PT7duFroMRQFEPXVPr8+Nmt9qdfZu2hsBQLB93Frj2/jPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoeHAVlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoeHAVlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61DFC4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738464353;
	bh=1Q5i2LCSpuvQmP9qY75IzjRanPBNGJV41bFBUE8YM7Y=;
	h=To:Subject:From:Date:From;
	b=CoeHAVlTigvCV+YbPM0CBi5VD4o36oVzW6A06qVQHY6dTg+4jG8/IwjCt87dQB8pM
	 cq6u6G8Hws7O8n0WfPUOgb2npv4wzntQTsu4YQYYhZT3JqY6mh43Qy02SZz8rCzsm6
	 IGJSPpeT8f1An3OCWv2fzlzwWoGvtw/Pi6fwp4w7HYyZ3z0Mbi1N/8r+Du6T7TG2fx
	 5SMOZqHNRTf7Wv1QFDoZUutdItranm+W0NHDRfhdnN/aXUyPeWHSzmBm4KiKQPQ7BD
	 /pg03erw0xDbs07D9u1vyEiJCzsIBr2NnOYxThpakBaF1yT6ESRXfY+xXexZfbWggC
	 cQ/7G0OklICTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1FAC0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173846435366.11872.12678434052977513247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196b0dcdf120816a7325a1e0d60578fda31f149870ee308dc9cdc75afeef203e
Date: Sun, 02 Feb 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738464353
