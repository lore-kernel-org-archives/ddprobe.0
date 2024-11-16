Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263DFB64A
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731744354; cv=none; b=Y5NJZJEsgpHk8dhitvEkJR36Ek8F+9Mt5FXc7RgJ9n99PfjHJB779G0CsumO3EI22QMqLEqKAUP+HKgMj+ZOovCVYqjkCPHLiLZd8WyAGusa4bATMBDFTIPdWVQK5SXz+joExC0BX5p2YH9dEt72L5ZC3lTTklpd5GJaskqedYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731744354; c=relaxed/simple;
	bh=PsuqlQ9wOvKgemHtYBb4Oee7M+AFXlU1SUI1Rr14UQ8=;
	h=To:Subject:From:Message-Id:Date; b=kzDsJuiDrkzKj22fzlrObgxHe1cA4ddJ/ImIGaso7J5179aH5SOfMofJYt+gslb96HbFs8gZrwJO0X+j7ym4kiWDtbzAokpE4xGPltdXCbopWVLKcTjQyOl4IHkLBmQT1AerWPO+H6jUAHpKQK217c7B3eLw61glUKZ7HiOMmEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYk+vWpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYk+vWpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CE9C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731744353;
	bh=PsuqlQ9wOvKgemHtYBb4Oee7M+AFXlU1SUI1Rr14UQ8=;
	h=To:Subject:From:Date:From;
	b=pYk+vWpWjaKUD1QFlJJBpR8ccUXjwqsvKw6qjB3130HsT5WHFq4RzbKU8obwTuVoQ
	 gT1ay2zuq/G6MwoWyzXU2/V9YlANGJh7Pfxy+eLU4yer/oAQdS9XtUCnpRqPzGkPoc
	 Qxh0Hc0qX8rOOzhOk+egWoTRFy0ND464gohhHp0PJ71ABU0ke+m90s5hqd7bYlRFxm
	 IpduaQBmaREWm1VSrRuXeBIZJ3X+7lLHjVUhgjXYWoF/tZ9BtG0yTXlR2w1K0Rv85f
	 uUB4Dq590cf+2XLP8awfOQ5WH+IKWQnNn4fbkm4S4GRBQmMIFnePRAdNZyhRADU5iS
	 wxC5F3kg3WdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9735AD68BD2
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173174435358.12553.432333672176957069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df46abd8aa799617baeb3f81a19ab73172782813fa911d3022db41f332d3186b
Date: Sat, 16 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731744353
