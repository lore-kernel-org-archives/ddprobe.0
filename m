Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C86D11713
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762570194; cv=none; b=Mg5NgxHDhD3NnAWGuas/lRrO0ZnS/X/Dq51emPT8aZsjs1NdhLs1jEdM30HoW4q//R2wh3/rxTpmsk2jo4GFkA1zQ1P5jY6teY3DlbIH7+6CB3U8bDptVYoMK621qNhFeoF7JSnJmyV0k++EneBawv0JF0j0tZofwECrwiLlu48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762570194; c=relaxed/simple;
	bh=YLwakE+2uleeS6gbPVhiDOxT4rAXAwo5vj3GLFtjHuM=;
	h=To:Subject:From:Message-Id:Date; b=uV/qbOPvtpkIhls+whQ/yccUkcIaaH1Wtnos3ZW+jg94Jam1dnRUpbG6GpTeWAjTFxPw2g9SeAZ+FVwbQFlV+TYadNGmfw9P+icSvtokbFonSTj06R4SCpioPzkM+mWni1tOxaTNSOj8fce4e+EndcX+aYXDE9b9uOTvpfyr9Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNNmmq48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNNmmq48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EEBC116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762570193;
	bh=YLwakE+2uleeS6gbPVhiDOxT4rAXAwo5vj3GLFtjHuM=;
	h=To:Subject:From:Date:From;
	b=vNNmmq48YcFC+4HWjLjXRDK1ngHYCeGDMyzBQUllSnI+rBALMfoyKtLm9Ng3XhxXk
	 GSjCrxFvsuEGV5HuW+1yVFikje+mmlKahr7yada6nwwYLUxOcwBE4BrH6AFuYmYrfp
	 NNCj/ctlhnsIY8MQNYimAONpsMzo09oAsR1Rcw8i36x2S47TUUbIndNvUiJNcf7WXd
	 8gx6tbOgNJPkCkRE9g01F20ZhXHlu+a1RchOmXzK+1L6VUInMHULUsEBYGev/75Dgh
	 wddydsdnRQe8ynSQsZtcijGvYk8BKB5TnQ0aM3ta9o2Z5L9yf5VRUCIFRwl3ZatJ4l
	 XbKSZfwpNGB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972DBCCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257019361.617.17690552374090352932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45be12a3c28a5b72166eb70a4e2e660ccdd0ba0c46e4fe63be70e33d6e02ae25
Date: Sat, 08 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762570193
