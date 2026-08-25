Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C982390613
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787665834; cv=none; b=jHsxq2qj1eXcQVwWYC1uBIrs4LcECmo7xKVUpHu1A/gF1GjDuybYcvgmMA1/m12awNwS2GPgfDhkLZC2Lg6FTwW523jEwVojYzkZMA6BmBvMhPtR039vXJ26fATgaqxEvxWlv8wJsv3YRqgZQ5QGPLo7/aYG+fZcvR3Y5imiYUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787665834; c=relaxed/simple;
	bh=zyxKgM9TPJdAyf7aEZwP00L7NCJurn85dBXi+c+i5Ig=;
	h=To:Subject:From:Message-Id:Date; b=Pjhj/jR/pSnRG16hoWRQgmklwb26ZUNc9mK1Z7d9rOuRLaGjyEBN9quB97Ljp+9YGtvR8VTx+DM8NF++kg/wqtp29S/ml2rL639a0alHMZwBD+w+4AHe7A39s/su4Sit5rlGxVIsiMGjW/2gMXEdpV+lQWi8hU/wImvCuLAXL8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1gmS1S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1gmS1S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE255C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787665833;
	bh=zyxKgM9TPJdAyf7aEZwP00L7NCJurn85dBXi+c+i5Ig=;
	h=To:Subject:From:Date:From;
	b=g1gmS1S/kpZtKNsuZXwxY+8ZYl1ZjMGweLi87Wl+jeH37fPT2aYiVxVgJe06Whoxk
	 je94/AMv638+pJjKAamMbrQD90GcKr+udSrN5ZIVK3rzRJTWYciPxUNl/n9jvxdVRq
	 taq1zJPhReAGMch/eB0F82Z6olJURm/EpGcpl5ALr0NsybhgpV6fabnb+icUweJJVn
	 xAqobxqDDQiUcNTQJMFb1ZfK2jbclly29xxTsJpA09aXmWTWaCncO8wgNQ8MaiE3KX
	 HUfuiza61JtVwW/4NQK15STVonqU2uwWTsIVEsZggtccc/u3aZ9Nb2YVnSkwA4ofO0
	 TC/5wTnHeyluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB058C61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766583368.3336.4143064719025109920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e0b6d3a0957f72ce01ab2231939e89d48ba5bd8ffe199d1fe7859b45fc67b8
Date: Tue, 25 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787665833
