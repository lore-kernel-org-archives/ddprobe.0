Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBA42BB15
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741466334; cv=none; b=X9YRTx5TpMHbWpw55vawSkAzRNNNBYQsDMZK0fRKpF11VomwSFDByHea8FUhthQhC9ZPfT3NlYneDaiMnw0aFGmVKXK7vsH1nX1vevC0BcQsjp02D3N6G2+i25APiJn19W1gXDWaOQRM53ujLHhY2uZX0XpNITwUvcTfYQiPV04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741466334; c=relaxed/simple;
	bh=mUiryevKE3ljFK5veymPrz95nJa09AuN7nSycXikG8Y=;
	h=To:Subject:From:Message-Id:Date; b=MijW7DiYVXhhXs+v04ZBdF5cPQAN5DbUlISz1h4/WUXe06Mh5Ac3+aOenuL52CBzlETP0w9y+oTL1/9q50HBsUpE6YbrAwosHR5GzPDAs8WuJ7+/NkiSypAp/OqwIs8SmMnLNwegnsIbTVQ0PlANW/7ZPbxLq4LHqJ4pGbsjc/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkP6Mwon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkP6Mwon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58A0C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741466333;
	bh=mUiryevKE3ljFK5veymPrz95nJa09AuN7nSycXikG8Y=;
	h=To:Subject:From:Date:From;
	b=UkP6MwonEzlAr/wW7SbsRtvBVXuo/QSp/l4lsO9ev3boDozxlUXPZ6WHwENHKVGzL
	 IUFi6sKHyX2dO+dUDlSqSqI8Rt0jw+bJdyHbeZXbwTIJVUtbAO7VTRAOaOyBqoKiDB
	 G/0RJM/lELRSmMPbGhzqUC5lo1lB505JkzApuXffWntEA+JVdDXfi5wAdl/QYODjRs
	 8PBZg0BtqUTmX2cqUd6zw+fE6E9U6EDXx4K6Tb83Hk+xd8j9YPJJWuq2ZPoIaE5mQk
	 bLFnCCMPhjsmI8kpX0ejCtRbh14rq+Lv5dfU5+groL89rIpDbQNS3NCzwqQU80q3v9
	 TbTcQuTswe5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B66C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146633367.12801.11085644704668539484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93db4755d3f135eac7e49c309a3203cafb078e6fa76779441a0f284a9ec6253
Date: Sat, 08 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741466333
