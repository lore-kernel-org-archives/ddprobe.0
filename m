Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5085E242D84
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790414434; cv=none; b=HInC6pvX0Mi3OOhldFWH5vHn90ZJX8g7xCKCqrsoZRXrg88MoPArQRsGTC7TUNITzQyzXaPJhJM3hDnGW/L2U/t37NzqKoQb8iivWOgXtGuswNAKKHvDAZm8oX4df3rruncFoDbO5PIYrrVnLaRAafeCmjyrpYnNUi2pGuDico8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790414434; c=relaxed/simple;
	bh=xIM9d4TAmkHMA8UtzzlCzzMTInDgenUh6iXcJgFiNhY=;
	h=To:Subject:From:Message-Id:Date; b=s1Ow1Hu6jWbkJvxx2DAtmQ0lOySaQVtg6LHpWClbGcUb6YGYIwLLIMMHfKRKod6Fc3cphkRO3+puijcl0vktMRO7kKhIKTUJCHhsq9r88fAM6Ln7/VBUuDRXMSE0s+JfP3UPAvUua3SK8oImkG3zQqqtZahJ3em2eSROzoG2cA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cw1hr6RC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cw1hr6RC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB1FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790414433;
	bh=xIM9d4TAmkHMA8UtzzlCzzMTInDgenUh6iXcJgFiNhY=;
	h=To:Subject:From:Date:From;
	b=cw1hr6RCZJnWTeJVpd2kXyrtqZlZf/SUYPrfmXdLTfFs/CeC2Yhwb8CEnh4pg8/xz
	 dJKlNieIHFlpniF6C+tvZ9LErSLTSl2Euua8Wbc5Ciymg9HwlFcSV2FNkCSCXVlEsi
	 8CxJ6kp1pf2iHjALpFtx7eI6wsT3EP/q9e1gIyK4uNgCSYGHONke5r/gDclboW7jnj
	 k/WSmvbfZg4N5Y3XLxQgkxWkCzb+nD1ySDhDwh+bHhdR+8xy2R9RBC83DluPz/rWlG
	 ArMjZeIkr76613LCPTYx79s4A6jM2sb3KAq8IRgbzsobvWv7mcfOvEcBNy11+DOiWs
	 8uBDUtaTmtqBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7AFC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041443369.18512.4103939937030112757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65648fa7c99efa81d8a2db530e328bd9a86ffc20d05170c01f4347b1bf3700b7
Date: Sat, 26 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790414433
