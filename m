Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF9D29ACFD
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765711374; cv=none; b=XVeSg9tQpGX2gtDeEX8XAIK3WTIq1tdYI8le3fz0dMwgOn53LeXzgq4njXsNBQUAN4YqZld+WUSTcmbakW1vB19Wsa0JZibhUmyO8hYP1iiLCxsmvPruWy3XpFlOpnRP3Qu1W4U8YriWJjAZIcuoB//4TIOXyjoIE+p4QJzr8R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765711374; c=relaxed/simple;
	bh=2lh0KpmruEUG1vGHfS1i8hlyY3zgHSYviHJVmfOIAG0=;
	h=To:Subject:From:Message-Id:Date; b=u9+Q3Sj7kyFECqm1abZ8ImBHQLr53SS6NHMRbXP/KBuizSrewgfXLGivLSDrQFVrBoUCKtEBkqJxjoPpMRz2111PRBQBNBzgr1/f1PTcYFL1KQlTfZ4tls1OM6zOvI9NcOBRvlPbNzY90m++yVOMo8cDKwe1XoMMWZxu1+mPVOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5TCEf7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5TCEf7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B224FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765711373;
	bh=2lh0KpmruEUG1vGHfS1i8hlyY3zgHSYviHJVmfOIAG0=;
	h=To:Subject:From:Date:From;
	b=S5TCEf7vxUFUdIIgCIZyLFOYyFQnhkGE5GqhYW0PWkBlQgapzWiZ2OBh75PGNC1iw
	 VRW0WFNAJsqvOnexJ7g6enmccgmtclizfCpNR+COp0bqCJJHL/mjkpXUIMoi7D8Tnd
	 uGHMoFQA28CjmhjbW7BAkrbVii5eLsPytqoH00l3uP5cnUTTiEkwA177h0SCbzb7i5
	 QFTW3xS2ug/w8b9OIZkvEY791iySFrOXtdZjQghmPkRy5+BaQx4M7zsFZyZca67FbZ
	 HouYViHD6b5T/tGyKgoHwRSJA2+QMnsKYsSggv8NMjX2M9JDLWPm2BuX5ApbrIRvsB
	 7y+cgxK/5/HvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB51CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571137363.1338.16979041954734126193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c321f69e6ff8ff832c70b4630f119d4e622824544699e51b147b018e29c19a
Date: Sun, 14 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765711373
