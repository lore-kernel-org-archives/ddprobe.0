Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF6F14286
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737254754; cv=none; b=XRuZ02H9Y5dGw0/Tu4plTi+FNPUR3vFW4NPdrKlcvboEc+MKNZZTpSPZxOiYtYx4/Rk9h1Y0jApQK00M8ufAJVVT4nVOlfVnP2I6GvSc9fc+ychuOZIYMm8Xgb0s8G18K/PZzLvAiX+k84gkoRhphui1SbEuUahFlUYBMGRQoQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737254754; c=relaxed/simple;
	bh=a8S7uC0PfbwCTAAqAcNe/iaesfuE/yuhD59x8UEyJc0=;
	h=To:Subject:From:Message-Id:Date; b=TC/3hAqrXxJR8bIlQsd3mejpFZwEVdbD9wLhXL9GJQpfD1vhyKhwdX/rML5SS2hqSOBr6a0f6rucAaO6gbjuESsPzXRDlvUYV2kDXbsj+qpeM6XtfnGCsYHS1QJQIs0oluTFyW8Nrp9jkvmqc7/7btUfbytYIJZa5dyNxbPE0Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUaeNwbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUaeNwbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD73C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737254753;
	bh=a8S7uC0PfbwCTAAqAcNe/iaesfuE/yuhD59x8UEyJc0=;
	h=To:Subject:From:Date:From;
	b=LUaeNwbpx13rE1yXqcIvSE68YAhe/44AZXaNoG+SbHijUM3N12ChAHDCqiyvZBy+m
	 zr3RVfimuSxVF/O+WKjg4Ag7eO4c5M8zPWDG7GYY0w8ZanVafx63D6rbCs8tjT3Rlv
	 BjDiOx2oeKNmHO2OtHDPvSfhzq0YnShcxRK86ekp/zLenT+A2weZDx7JpvP0g/CTaQ
	 TVeiAt9KRgaGqB72SiKsFfuIIf0CG++m9Yy/JGBeq+ae/fUrK77m4KcuQiGeEauZx/
	 Tao+GawXnHLA5nBesHOZFPnGZ5YzuSHB/9aCeP0SRr+H9rpO6r+9oOpZn5vBYrzbuF
	 RgviTKUPtIG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC33C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725475359.16665.16792928295326643842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef83796bc074f4528dfa4102d5cbb2282ec05e5bc4c5a8c751e013cab6da7f2
Date: Sun, 19 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737254753
