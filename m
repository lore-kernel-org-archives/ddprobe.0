Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BBB239085
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786068634; cv=none; b=Smr0kqL06y+0xLP4uQYBcgsKkebgUOD/OCCTJC65tHRpp6/ppWBb3B4oLa4Q1p/ynUxwMCZnJi+4bMIqVORhkuEI6f4y7Py1iJNU5DKiYkucrrXXcXBwdPbFQjwcTC/fsDiaTWZ0TPAh5RCaP+iT701SzRpnEdMOvvi2NVl1vas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786068634; c=relaxed/simple;
	bh=qpYVq7qXOIz79mYfmgAtKiMRfAHsmWLfEx4AWNeeFDM=;
	h=To:Subject:From:Message-Id:Date; b=YBuifCbTA5aKQUPYvwHXX3wU8OXE9/jtxPSFJjjHJiamjge/BQN6V9Na+TQC4u1Sn30s8PaK/tld+/emv89BB3np3Mx6WBSTDuieKfHnK4RsOZTzO6ot50fzKSlrjAi7Ti7071hkMtb8WV5mCyZQP8ueyGqDawlc4eTQ2rIlohs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THRcrELl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THRcrELl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE195C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786068633;
	bh=qpYVq7qXOIz79mYfmgAtKiMRfAHsmWLfEx4AWNeeFDM=;
	h=To:Subject:From:Date:From;
	b=THRcrELljZOSMBqzdmJcCbkO+NVu03TZaPIkEZ+/+NI8trrrYQBcjZRwh31sGfhYP
	 oYSczXCHuC2BdHdqbDomRGp37Al+cZ4cTOd3qsPKBOyENFJu33aTm6iu4nn5Cwl3PR
	 CWI67ko8sjB3u+e869xdu9cYX9FX0fiXr0ynUTT+zqUMIILPkEQDm3NsDdeVqOVjvx
	 7lYlfrpRU5n0Mdg9xKuL/4CFJAK9B5+5i34zjntrO3Yee5m8e7Apw1qhqu3xYchxU0
	 G2TteB7Ablc6GwGNQ5GEKrgBXi83/19XvjyWUMn03W0hw8mFV2gVcndOXfbnBW13cw
	 8nZY9G04KvL7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77A0C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606863370.22177.18311729985486701831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdba6bcdead881764540e51f4d95db5f9c79aaf4f26694d597161194ee14fddf
Date: Fri, 07 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786068633
