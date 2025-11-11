Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4AC342144
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762856994; cv=none; b=EIOC+4KXn7BH+D/n/pwcFpGkZAIOuHgPtrzBlwT3UW2MBgwmkD5KAwLm3uydtLXkapWoyNRf1jqgtpVVQngUIkS42JVYlRzz6O3KJ2+58oUS9bLsLPqQRROaXXPAbrH9MPEHJG4OZ6+UfPhuKEoxFG8tCYhmMZHEoqwyY+n3654=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762856994; c=relaxed/simple;
	bh=kyEuE0+vXb11KM13BL9lVNHxwilKi3mr+qJahqxjYu8=;
	h=To:Subject:From:Message-Id:Date; b=TQPO5xhcFixrui/v0uJMzVMzbkfeN9ugB0XKJuabDtcPZHRPLB8mTld9ltWhE3eh8bVfSY+oO9/W4xg6944+WiDNFaVQdSNcavbxrIpBtYLh6b5pM/Mv5XOLGZ83R/njSF02gj+ccV71so/d1ap0F6ha3s74aiRjlzSDJCIwxEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KO83cpIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KO83cpIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7BBC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762856993;
	bh=kyEuE0+vXb11KM13BL9lVNHxwilKi3mr+qJahqxjYu8=;
	h=To:Subject:From:Date:From;
	b=KO83cpIEF/h8w/wNbniivq2XIpS5FkR1EPIbkUFidY8SpkvProIu9EdH2i+KxnUiU
	 Us9YvlplOJiDr296HTcFLHU24YofdACJzOz8sa08/cN5wtrlHLm6wRIgax5hX9Z1Lt
	 atl5v67YjXpUmHWyEPrwkRWzC0i7twGGfNxf1eX1203MCB56RyeF6C3JzD9tv2ORV7
	 RgvWS3TTYgnJqO3etIubk6Y0AMmyGYwDspAlhv4J6XEBNidkGcuI6lj3rWpAJPH1UX
	 JO5L16h4YPvmHHYgrWZeFG2bptGKe8qDchq5uxMLYZ5i07zDse2LXZsfpNo00bEwWc
	 Vae/DTplW8h4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D61CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285699359.6629.7361256692009684215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e55afea678687d4824f9d91bb25024d18df6ec1b74b4e14e57f476c0be6985
Date: Tue, 11 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762856993
