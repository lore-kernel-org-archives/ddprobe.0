Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A43CA4E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737834354; cv=none; b=Sls5GIT1mUo9duArzeZQWP60KxkRV+cy9b/1rWzx4sxI/sb6ZlYyIm1j45DVgojGpP0zdo/DDHroHbeKU+ccZZ22ADCCOd1eGt2tOEO+tt9QXk13a8TeiHI8MtGOGJwZ2e+HVM521rkFl4lnlfUQ7ealwJytGj4/gyosdotXjvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737834354; c=relaxed/simple;
	bh=0EbAUNep2MUirAd6azZiiLprxqdrdSdJlArGfhbDS54=;
	h=To:Subject:From:Message-Id:Date; b=S5GeZ6hfSVB4XfVol2pRRdQlzdXUUajx5ryDSeOd9CggMF0lKw1suA7WJU+yANBB+iTDMjceUjVLlo9NTrVFwXMen/JTwZNuMSAnH9CqDxx/Y2eMJsR3RSzcnghwdWGZTGFunMwJVMhcFK2CWY85Bh9BG9wzrglBIeubtLaHBqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMg61NUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMg61NUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A540BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737834353;
	bh=0EbAUNep2MUirAd6azZiiLprxqdrdSdJlArGfhbDS54=;
	h=To:Subject:From:Date:From;
	b=QMg61NUqzqQyydm5A57FB+jtxlel7xajyhY7pjmGSHy2rCdblJDNyvNFOGBg1VFEM
	 6zsuhZd5nlsg4oVn8mhXzmJcq+1D69FOlVWYxnokyIQNIyYSNmtdybs8x7XDzrXPXk
	 JlTEUitOatVlQAt+n/6lirWhMyHhZ5nze7kImL11y/eI0FP99x0LOAgmA9v1X5U2fn
	 T/iWvDqxqUUX/aij7V/yVKiqA6vubekRqa3GWol1vAK9BoAFfTelf+DpPfYGq1kTjr
	 5Ik3r3HbcwWgRVEuCe3k887gvWnlaMF9tB+18SrhMu59utYOlH6qjbpaZiVAJWEErn
	 uH07orEWB2F1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B70C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783435357.32448.11369551395844114893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea7e7fbf64c0e5bd753da5a00f24e47631f9733c51cb59062592f7f4c7ec401
Date: Sat, 25 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737834353
