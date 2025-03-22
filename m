Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F0B1A270
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742661594; cv=none; b=Ay47uyaq6rsZxrnFGnawidn+huWnODkB2WtcANmL3jahIEjdu4/H9NF4RgxvVbzDUCltK0JiJTelJhyvU7JaCtJ2iEysFStev3/YFHKkfbp6+hNna9FKANTIx7LzCA2vXNcOIgoU/Fwt97t0c0wSKkbRz54NQM0rRbDxKXevfFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742661594; c=relaxed/simple;
	bh=CgzNoWrctNcqku68kFa3nXwnQacCTIeFzOIYFBstrxI=;
	h=To:Subject:From:Message-Id:Date; b=PPkobz9hzHB1pYPUm4JoLiXM5NewGcO92aJuf9DlA39n2WVbO+0mLaj+hDsQIYcIHSaFSGjpWNLkOc5wBsHfJMRVlteTDRjkQ85LqLQgLlqTsaaW/8cw5VP/9hpq1DY07lS/JfR08LRt+JU0ajUQOY3EglM4aFf6RiX9NyyIEQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEpE+oNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEpE+oNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1EAC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742661593;
	bh=CgzNoWrctNcqku68kFa3nXwnQacCTIeFzOIYFBstrxI=;
	h=To:Subject:From:Date:From;
	b=KEpE+oNRv7r4Fx2JcMiOsSc+GIPbRQqZWuYsSN5+Vh36V6LNu+RbOcBxoP8g/oz1J
	 GXazIPFGgDuIoXcyyXIcKC4M+FEDIyfM3LVifhDe0w9dFv5WC5dbbaPehJeDv+rf5s
	 ucAitvWDUuby2y7J8RFXO/citl42FAQSKmmmkLUK/u4YTj4b7UpzG7nYX4NFL1OwT8
	 KiC5hlg0KCqp2J0rKCjO/EuV71ktk0GfArHPh6RZ1Rbgb/vI1YfsbPdexSE6jeIMfN
	 pqe6gnprTjXy/HC841msGO3aPeg1VyqTcnGU9cUDHgNuG2PHSEEeF/Mn9W97UmteyC
	 B5rUmXAIQeCRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E157C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266159362.15054.53014462984522474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc8163ec1118cf54c3755a3b507b6774569272731765ed81529a86833d260c8
Date: Sat, 22 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742661593
