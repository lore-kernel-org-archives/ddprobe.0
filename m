Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C371C3BFC
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743844794; cv=none; b=JYJlcRPVFf1vQG1kfeZBOTrT47L5irT9837j/iTWsKxn4/sObKEZOp20/5gOUUb9AQ5wQhB2AjIpWbhjUQ8iMZ26TPOjLTxMjYF6+WKpOXOjeDxJLiwK09nlpCCG05vjeySwj9AsMhbWOWTkDC3VtDgeTWo3VATofG2F3WBoaHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743844794; c=relaxed/simple;
	bh=4b4Q8AsC0rhfwVZOysbuBq0uzZwOcap0uzQwww1pEOI=;
	h=To:Subject:From:Message-Id:Date; b=vBXQ/eQy0B68gXFzh7inZ+VKEPTON62kAeVjZkLcCCe0q+GaCuKX6o8MYcEAeDbt0xXomEKscMfHPOxV1yqHz8YmQpYgmhqJT/IBiCnn2mWL/etpHT5LhdfASx61GE+otjJf2lmWb7BTQp9WAmN7OKNjbXK9B7FtB39ZKrBSQs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uwl994BQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uwl994BQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B346CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743844793;
	bh=4b4Q8AsC0rhfwVZOysbuBq0uzZwOcap0uzQwww1pEOI=;
	h=To:Subject:From:Date:From;
	b=Uwl994BQmxIQniGr/AqeQTngf80J+yLY4RyOmG1teEBJ1Dnl2RauJ4M8Gy3iYPstp
	 zL8m7aM78VM+WtG1eI9oVWCVHExL61Yjrt/5p+IHgObaw5Puh8JOcV/p7LByu3Yc76
	 VdXB/sHNCkd3bITtwQf/rHqK2JZv66L17CYAfc8yZEyHizK4H2tboJ24zQ8isprxrT
	 nxxZORoYF+NQj8L/AVEBGRDnkQ8hKnukS5o/ZM5unMoHa58en0IF6HN4M7nih4e9xq
	 NAwwV+XVZPhuURTfjzsHMjnYlaVpiOHJg/KlSuWde9HXD9mfTfgkzAJHkHsSsU34Is
	 0FwSoP7VvKCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92728C3601A
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384479359.30352.16469840812144920551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6551589ed4190341bd7f650e2ab429842cb2118bb937baa14ecfb4c830dfcd58
Date: Sat, 05 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743844793
