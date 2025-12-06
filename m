Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA431B983F
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765011774; cv=none; b=Ni9kA249ZdjaA8A85/Tz0rPzfy9j3rMnxTxCCFN9RPEW4onbb9Z4zsUWaW6V1RJpC7NAaOFFZPnQs1Wbm3VQZXSBvrBXmTlLCQ0l/Vp7+bHPxYrNmJ6Y3EKtGCMDdPPlfnRZnMARXgyd2bYEwYyxCN3CGNk009OvDIrtXe9mPBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765011774; c=relaxed/simple;
	bh=iK6Y5+4vtJp3U9wF5OEUUlHpdKNHn5BxUaKf9j6SepQ=;
	h=To:Subject:From:Message-Id:Date; b=eeuxjU9+obAHUvyvPdaWtrNdVHflrcmMjrV2Dc1lz+Qzh9uXdBkZQK4UaclCzYnino1enLvt6DL/acaBIMLnMc3+rudtK7aKc5OADsy00PLsYa1rHt2T5fJRVZI7etbR50iaM/P+S/BMSHoe7NDeUDTZ/isgmnoujaGYj0CgawM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3jRr7QI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3jRr7QI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A329CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765011773;
	bh=iK6Y5+4vtJp3U9wF5OEUUlHpdKNHn5BxUaKf9j6SepQ=;
	h=To:Subject:From:Date:From;
	b=V3jRr7QIgufGTNXww2sLtXz3l+YO8BgJFcGb9kyCrf2yOoIUhy/39rb9N4YXoIAFq
	 dSiA0hmBQwRbI94amyqJdghS6ViPDhB/whKTK+ikdP7/srX8d2A9hdA5OOAjZZgeaG
	 kq0WpDWzLWpdT88eRxtDsrdE9J0j++IScMboBV9HS6Gh9Rwr2qSGtXilwAmPOVxvuh
	 F9gfWXB6U5HqhRzAECIKZHaTKjpWDzzrRI8YfM60RIkb/bkBBOTS6r+owSu/YtgYa4
	 tDcgYuqJAotDH+QW9Halvz+5Bq8b6bScNv/Wdrao26HMHjTMQs6vyp6xJJfRFrwfwA
	 RQawLbbf80UDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187DD3B7C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501177358.18332.9648090770275448128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150e55be7893be4e8980529420d0f3bbba55a93a753aa450b7efe96f483aa809
Date: Sat, 06 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765011773
