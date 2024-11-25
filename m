Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135D01B6D0E
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732554354; cv=none; b=Io9RD7OZ6RvzSEvp2O/fRFDBfGDnvOk0Xh/Sy22j1ujiQtSAE5rz5tlbx9078YZg7Gl772vL+ZnyhbQaOhgdzymEadcNC9d1EHUu7fkKlpNzEmfKva8I0kF1CHaWRoLx3Kg5HLgiVFQ1+r9m87SueXK1b7quaKBVOG6Y5eMcelQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732554354; c=relaxed/simple;
	bh=WQvAxFjUq3liOwcT8fYbLFN4tHx09AXtV7vKcCtjAwo=;
	h=To:Subject:From:Message-Id:Date; b=C7DPzis4JmFcQbF7yqqbYid4Tl/sY6gW/Jf0Kk3RqClU2yXtsG7waWhd3PTvXNiMxcMOv8hMi9teEnzDVYXfDgmeeqDEE7kgQxiycQCQQD2t63ccrPy2wvielFmQyZpdJzkhYEUHN0pVHCaZROSYLQ4sI4yn1lLg8kdZugPjFwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPtTT+hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPtTT+hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76AEC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732554353;
	bh=WQvAxFjUq3liOwcT8fYbLFN4tHx09AXtV7vKcCtjAwo=;
	h=To:Subject:From:Date:From;
	b=mPtTT+hhTtdLfShaIL0ehez+f5PJpY5pstN1UDHaIwoRVjXtY4lLyVkiqlUDYN3sx
	 hNZJplIu9OaZE75vV57GRKmrGTZFJLIHd29PPA+OID3VCJRoR4HJf+GrU/aNdmCaoG
	 0rYmCRBauMEF3L+fYzTMOf9NlPiB+AzIaVw2BlZzoXHLvZYTuOaxJahW0O3qkSOecn
	 Tfk7xfzzNoEvIlkK5Lg4rneEQs5fXskbor+xw7azLeB1HIzt8TqYPztCbiVuIn84v+
	 KJ6HlyO79lC8ZOzm6AdL3tnKm43/pV37nGHP46MOApM0u/jB7hpfMnllU6dE3AZD3V
	 mzyXlAF/r0tyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91976D58D69
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255435357.3969.4258086443811608473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad4af4457965e6fda38d01a53e2f0334c856e5450f7056b2cc3627f07d5e158
Date: Mon, 25 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732554353
