Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513C5281530
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247594; cv=none; b=ucAZLaY53TmUphfgtnytaS0XMHJ1sG7/gi+XgHjLaS7F9D5egXIKQN7n+HyVZCT5g11S9WH/o1pwI2c/WPWf2F/rVhPyekSHI48preJHFoWs84WjP769dVV9t/NsJKA90GcFs2wlBlJCtsX2E5bTGMsHiiBVZVxGgXnqpMI4By0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247594; c=relaxed/simple;
	bh=0QS/hKpY1Z5roH34t0bMzxlhDwEfnXczwMbOKqh4BY8=;
	h=To:Subject:From:Message-Id:Date; b=ljC3i0eGUrT7CeLMWlx1UnbuZd71FEffHe7/VN/nB3OEcqgirJC75HoflIFVHOeogbLAeZA49/lscIgJ2iM8ohReF8w5ZgCa4YVbbCzjFnsoO1V33Dm9E+PTW2laezrgJKZsWPdU9nsyrc1GBMf6LGmzVZwfUvWDPlioQ1BixeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0akNFs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0akNFs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7377C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782247593;
	bh=0QS/hKpY1Z5roH34t0bMzxlhDwEfnXczwMbOKqh4BY8=;
	h=To:Subject:From:Date:From;
	b=s0akNFs0zqN6nKa2sIlewVXlAYgpXPE3o5xJj8Q6R/SH7u5cbAFvtGtKAJa7L39iO
	 4t4L2x/3sqQ0UvjUSUPH1xNM0OFDBDSJG46YsQiCmvOZOnfb/rBxyADeoI4fkyzyfK
	 u+pjakmpw8X5ckzYF67srhw+OVL4OGBNf17SCc/Lq83ym8qZ7ZfyLyMvePBZr9uf3U
	 J7s0nk8UE0qY4sxDVPrDN38+4b54j+/RU0GREDo4dwuGjabEXMVhwMQX+CgCZ3LEBn
	 raRC7KBssTs5wPynzhPIrG04DE/paa/DI9raFBoyHgI4ScdWIz/NLqddmI5eNPK+nL
	 rh7OqOJ+OHQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4ACCDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224759370.14278.17726892830169499426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e5df1c8318fa50f9f68adcf5847dc11ae77fc4804c447779b2dd07d53d29e6
Date: Tue, 23 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782247593
