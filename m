Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF88224EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726085754; cv=none; b=trvndGoo+7ti3AsjFHoOthHJ6D/HOJjHYBchHq0EA3Ycbav11IDKBr1sw9IZw7nSfMYUUU0B7AAQ9RwT54QcV88J5t08N470yBlO+WMoulx0qGb2HbnWq4DparSXDHd97tX8lI0rrAkf2IsKPFfsfm+XecTi6mBBNbh8CnxU5Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726085754; c=relaxed/simple;
	bh=VYew0ryWabemeIrIunaj5v0EfLX0sIlJaKqMGV61kzI=;
	h=To:Subject:From:Message-Id:Date; b=gWuu3eQbOO1VEDlV9mOB/zGfcvgRMDauZJ6whuER20L69yKFcT0zGUuNdz94CjJ0CayU1PY2WOm0sS/FU4xiv4wwoYn4Ew+aJCamFAySNochZFWpCsxw+UYl5Sgny6u1fxtYJvy867Ny5Sb2+4gUYft7E4z34E3NLGymt/tl/Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7tPbHdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7tPbHdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5346C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726085753;
	bh=VYew0ryWabemeIrIunaj5v0EfLX0sIlJaKqMGV61kzI=;
	h=To:Subject:From:Date:From;
	b=c7tPbHdjar3Gtgrf//pQhxLYaZsKgYZmiC1ytGV2Gj0arHkacNv8dtGUCcntgx0re
	 tsYB7T8FVQgwf0GLW0HDFlWizFq4mWkI8R4nD/wlNxpxStj6vvwn1u5OSfsGoI09zu
	 YN3UnoV8EbGI5NrT1zF56laPW+/7zx1sLXmOamVUwcVSI4abwYEDEMYTD0lSdiWcOD
	 1GiAKUjjJBKC32ZEPZm03he07r0LP8S1eISPWFRAfJQFzUrQ2MsSrtj/t70Az/iZ0i
	 eWaE5G/S+KZweepF1SwrGERpnHB+7iMLqekEE8Qjz3AmlZoG2ksvNWS1Ve6KBWnJzP
	 Ik0G8PvShFpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CEEE57CF
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172608575359.13098.6668509954452938705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846d1fd5dfca14c02fe427df92819fca47435603468de16a3706e1436eeab8e1
Date: Wed, 11 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726085753
