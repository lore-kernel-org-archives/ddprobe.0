Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FBE17B505
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782065194; cv=none; b=HcTZjYwvk4FQ+Q540kS2Vb5QZt4YBvWgisJgkfwDrnV2acgiyVwdqLR0iTrPu9RSrA8uDD0jF47CiY2yXWbHmG/V6NRH0J/zJTdYo+jwl3yaGeIf2GzlXkrNzg0lGtm7Lt9AUgtxIU0D1gbzFPs0FwcFo/99scPgv6hfsLqhJKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782065194; c=relaxed/simple;
	bh=r9TXooND3k+OgQ2LV2rT2LIL058B9/mAZ4h00dVD8zM=;
	h=To:Subject:From:Message-Id:Date; b=MSRXS91XH1ZHIXZfmF4TY6Ag03y/AnP3ylxmVhdjzEd3hQIKD4pJ176ku4ABH0S0ugJMuKgMLjLcu16ObNNfX6OaTE3McrScFNgQYRY4Oedx/mJy+hgIYprSApI6jfe7SZLWpexSIpJ13nOT+a5+PTOTfXz/qCPJWjgJno0CczY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oS35dGMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oS35dGMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FF9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782065193;
	bh=r9TXooND3k+OgQ2LV2rT2LIL058B9/mAZ4h00dVD8zM=;
	h=To:Subject:From:Date:From;
	b=oS35dGMehINz2Si0OzPEQ8+mePnNbhIs0TUWsMKryRdq0io9aNUg6536maBOhB0Du
	 jegwoxxsxwtZOYlhSVraiILHtP0rks+/4Cqg8wDALBnM1uEJo5Je88edAybce+TMY3
	 4p6HpdXPtV3yzWXDf/TQi+Hwzw+bzpkg5pxNkxlVLE8Kgrgj51J0bisHctlrvHVltg
	 AKkxI/1aeeize5xz8aBZUrLXnxKLP7pmODuM0vPUHz2g/e8pA35OXhZJrGsCyEo+y3
	 rnTomperqXz4BJILF1pL6Zhd6yRR3dmcsjK2npBIh1nefi679SuplNVNGqPEc/gSBn
	 ER7O8xLsqawnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83FBCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206519371.23857.16069470463375743646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e101016658d72b14c3aa762ca1add389bbd459637b4db3bbc6a710209f588ccd
Date: Sun, 21 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782065193
