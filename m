Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A09826C3B3
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758593395; cv=none; b=IiID1skUmUtg+rzaNqd0MhSu+7d+linZIU6/Czrv3nD0INPnoXensquF2Pf8mS6QTcNSYZZsOtDF7TCRGyA1NI5HQForgy1x07nm0rxsv1yELfnoprhUxum1/4v5Oi14a7mG3y5T5Yv6InVtv2InrV52AN3N06kjXqgWA+62ROI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758593395; c=relaxed/simple;
	bh=HfNLVosL8nj/a9IkHlD7IdOx2Y+S4O/LFuwbEA4HVWU=;
	h=To:Subject:From:Message-Id:Date; b=M/qATXvSJS0wP1jIYvFkSe/UU47OnmDD0tdweYmyPh1Yz15QIyr+jfjYFb/kw73A7HIgOjWnqN3klBIjAzMMs6e4rGldVjg/mh6rxgh5+9mWcYvEcYZE4YDf+WWEyE965pM0yTIMQrl1QzPAAbNVtO7dTihJZm5cyas1X48XG1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQiB6xQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQiB6xQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFCC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758593393;
	bh=HfNLVosL8nj/a9IkHlD7IdOx2Y+S4O/LFuwbEA4HVWU=;
	h=To:Subject:From:Date:From;
	b=dQiB6xQMSLeZc7K62BRs0zwb9CEsXuT7oUnY0cm2G6yLW4cMe7jqUkkeVklAhVBYv
	 KG8u3eTGcims31wzAWN+kv9zHfalYPCSbvdjhop0IQa1+Gr6stnw/m84+Rhj2m2Vrj
	 sTFMd45/91ylm1sZv1835BSQ81pIiAd27Q1tSPlmWvlzQrd/eXYml+5LZnyDfbBP5Z
	 jRfO31HWjhhi2JgYKBSOenHv0DQz9TKuwBZFiw+OAC5Tcg9m3Jt8UUaITNXkXF2wpx
	 TUk4htArZrqMDdnWpU4mn80FhKgKrIZ85SfYBueFfzyH2FNc38GTUyA2r9YUuS/tF4
	 IGsPd3mx9T4uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6FCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859339359.32554.15635771186727643619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a88eaf8e5e37f9a547cc189bbc27732fb0056e6f62c392320135fcdecddf40
Date: Tue, 23 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758593393
