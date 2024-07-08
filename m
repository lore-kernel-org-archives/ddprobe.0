Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDB74B5A6
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720427183; cv=none; b=oiRXOe2P/7HPAOk3fHHX4+d439bHIIKKecsQ522qhAoq5nHdvzp7KuMUYh7qThVvdHVZmcfXA7z5inyElNEMSWeRZ2Pdf28ObYdAx50XiAbHQVLf+yVFt579l8Dq7asP1dIoLmpjsJ8ebVrEl6TuqkpZLrlFk030pLiknxhcYHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720427183; c=relaxed/simple;
	bh=QvxhhF4FozPabaF6P5H4nmpzx5D1yzeJkzF12HkQ264=;
	h=To:Subject:From:Message-Id:Date; b=bBVVb6cPHqLdA0AxsNCusnIuUHz0CLC0Bzlw8Q/3+08vkt/RQx0z6ZeCt/VuhZz3sG86SCxuxX+/I4grOnYjEFQKFh7LngH8gkFh1CF/H30faG+OMLT9qzBYPOGjTnAnHUniDR/SH41VncVEvhOddbSIv3FW9I9CjBkoM0TTAKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy0sLGvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy0sLGvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF846C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720427182;
	bh=QvxhhF4FozPabaF6P5H4nmpzx5D1yzeJkzF12HkQ264=;
	h=To:Subject:From:Date:From;
	b=dy0sLGvbLdoe0ySJkmk/EPDgoE7xXcyV7wAjBGKjFWTkn9SQEhmDdShdyPrvMZ3gz
	 JBOA5i5Xn108v6uKdgZYqv/jJcTuwOTCEYaQSH42LAV3EVzF9r8++FTDfwocpxNDpL
	 kXwfUlZPN5to1I07VvUd5OLc7BEF6SSu3tLGPFBzPv0IQ38gJKWVqs8n1A1gHx/4ox
	 vTea0scfi3hdx3bI457T8d75Hn1qU+KRODoZ6DC5N+Y6SQIYSq7d7cOsgTWFo/Exmg
	 Itc6ASbiRWzeWLW56BXNt51CN7VVz9K+SoKPXQvg8L3+otnPH3T7LCvW3N3qJfaLt8
	 oizqAyw3ursHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB716C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042718282.2531.5150260541305504569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6203dd3f8e2ad806366c260e185dce7904358b56b16239751de0d10c50b3eb6
Date: Mon, 08 Jul 2024 08:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720427182
