Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F15D18E1F
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733654754; cv=none; b=T9vHDm0j5NG6ZSeX3YFPINHUjT10ix331SEldd/Uv+fejpQ/tlCrAASzB+/g6+EiRH42DuPlzL/47DLLAVzKuE+tWN+JfzYLoC3JPAF4c6coVF7GcQ//Z1eJBhS9DhztmATA7cB4FcS4QrA7v0w6UyhR7utYAQaIoGzTrskLlSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733654754; c=relaxed/simple;
	bh=2uOosnh5knrvODmifgseRoYF/HTIC1XXVt3GRraIsLo=;
	h=To:Subject:From:Message-Id:Date; b=gVdfr69Vt9+f+G2kAnN3eieeNCBmZqBqZYqko+lApL3olt7PdtHlxuv8CKdqKBUrlZV0ECsMr2jNJrArktF0R2Q7VDn2qbEtFKJ9bhrtzeJJar8swWt5i5E64fuCsHXSF2Bg6gTWh4yLEf2TYN1nRf4n0JZfXDOpNWRfaAMBlf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/VevOt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/VevOt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD48C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733654753;
	bh=2uOosnh5knrvODmifgseRoYF/HTIC1XXVt3GRraIsLo=;
	h=To:Subject:From:Date:From;
	b=M/VevOt9ZfqcBf73WlJV2eNOdwZoWrkThn7WWMQG8tiPeqJPnSuJ4jAvT7oVODRj0
	 gcRJ0nnju8+6/RLgO33/QzKx1vVTV29thjlbrnkZtkIChnuAn5St1XSj8ky7uI4kod
	 1mLjnlwZaRKBT5FCaxj6i/DsTtakhokt975UKfSZWfjp588EMIN3MnIy1LsomEUasB
	 Q+7Bk7XP1DSPwBYOz/8KeTvSeaXrGmNxWIL0kXT9oyoDwt5JeOS5oH4sVSkaUr5bOU
	 Eykw7sP6sCRYHKdg2zo1ci2Je+EcOU+qLkS+4eP2hv8RIYqkukW8pP9ygCbDetBrXS
	 /doZceWo0B3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B651CE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173365475371.2015.4154790650412467648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d5dd250e404376599cb7c87c4f4cb684f616b42806527cd6c45816059d6267
Date: Sun, 08 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733654753
