Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B1E241E7
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725595554; cv=none; b=J/WJhKkLBCZdD82Pz3PlEjhcvhpM/iFVKnAKMxox4hY5JKJBrs01wVe33Qjt4RNCW1sR190pC8dQxT6DSnfhFh4ukzB71k294OgMdMqTM2CKvwFjcGlHSqVKzgSw3toBYkqcDq3J3q/o/l+0RsgY2vA2yPpzqw4WXnIb0I4gOME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725595554; c=relaxed/simple;
	bh=CTobiiWfNZK5oHAR/wSXAZkVY3Bt+FuXWU1J6rb8QXY=;
	h=To:Subject:From:Message-Id:Date; b=QjaoRWznONkfB8CgCsC/P52IgvnhlhnxuwbqYYP3wXTKJA4lyl7p76vhiZ1P+k1/9pbY3Xy11tkWWJaFVP4kt8OOWRWEBpWhp4AG9xkcJ9zUnLx7ZWlwF9X/B/SBu1bW7f7nre9BHTPsjXCwMLf9pC3wpOj7YTE7yGyuhp46//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ag0M90M8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ag0M90M8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC905C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725595553;
	bh=CTobiiWfNZK5oHAR/wSXAZkVY3Bt+FuXWU1J6rb8QXY=;
	h=To:Subject:From:Date:From;
	b=ag0M90M86SBkA6E6Or9RYr+/ogrQxCGOQJT77XSUt39Vr1dOigIYq+GZ0DmFC7i49
	 iySznedZiVaqiJNdyRidEsPgg0eSY/HKZGUX0Fkd2W5MIcgTrddOPjcnlA1lU+Qbez
	 hgC31Z0n/R3K4segzGRJEdXcfUrFGTgj6kFyIiHze+2uiXy0TF2QuS0O4WL1NBsVHt
	 UNI7M0vswYFukvNmyPouCwdM42PE2N9et6VcWlWg7bsnDC3JiQa9fAwW3lAB6TQUUx
	 oYc5jDmBsSgcHBUE9I79GE+U4iocgNSLumzFwN1aj6BavphfBezSqNL3brJ8iZr/hI
	 PtWYYHwNgGCtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A50C54FC6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172559555360.11384.17164544318194544512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6549925f573c7e972f6d4bb665be3c9a90831ae4fd7867ff2df4f680d24fcad2
Date: Fri, 06 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725595553
