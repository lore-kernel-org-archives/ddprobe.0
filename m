Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25253188596
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777712254; cv=none; b=fDGu99qGwyT45AtOls06wtiW2Ok6Cwl69IonZAKmNSvvBjJly3/bSpn3Jiguf+kHz4T3o5wkU3yZPoV7p7vnH/yzb6t1nbBzD+WEeUBT3xx0KYXAUIM7ou+vZKEB/RpNu1TwYWHF1tZHi+zGCcHr4Z5kl1kZl3XDxcrm1pk5aNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777712254; c=relaxed/simple;
	bh=h1F74T54hR4Y66qc7XrMonDDERX6RG58AVmfTsQxu5U=;
	h=To:Subject:From:Message-Id:Date; b=WfuJ2NstYZFA/9WnX0PtU8F0bCvQuvEThMO6wDuAOtSt51L1eLthcF9Ufi4VCS/z/Q7i8ZYAi8vCe+VAozRz+MWKrpi7Xid5coPa8tby91GcNd5X2yt5N8LfMYwJCFNEj5+XjPIyNOfTIPA5f9D9jrN9H+J6MMZAH+zP+xIyEl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV6aucDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV6aucDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68FBC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777712253;
	bh=h1F74T54hR4Y66qc7XrMonDDERX6RG58AVmfTsQxu5U=;
	h=To:Subject:From:Date:From;
	b=AV6aucDzO5PGSJOSqE8Uk5i69lpA44/cVe9mSJvJmjZT9xU2wXf02uhmmD9NVaAOy
	 SVqsmlFsl45b05QFa/TxYo+zvU11aUcqdM9WRyJTuXwpjz7fusx+In4CX8VPojUxuU
	 P6YEfuzf8yYnaf+RIPuCMMjtY8qkgvFrfzL5bOVwwplPjJJaTRvkw2b+1+871AMRem
	 jELk6OPyULa4Ve7XG5yKPryINjbeuWFHDIbi625HIIdcuL8g93ZI4oThdKK5iFB66r
	 RvTFsimzdqnLwjWUJDTYRDGFa0K2EVyNk4m7twYSdCAkEi+7y5gLg44ekX2sDMWd/D
	 L2+Tu/2TzTrfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9600CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771225368.11082.10832069105173781931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952e671a462f952ddd23a0865218197c9602391dff3998234cd0f734119971cc
Date: Sat, 02 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777712253
