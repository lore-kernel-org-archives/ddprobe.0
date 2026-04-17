Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284D61FF7C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776428254; cv=none; b=onIFXlnjzYcfnNKvQaBgDNBKZhTTpawPlblxN/I3L2mZGvtWw78RQuXkrNxIgsGfHOO2z6zXxV7r4Hbmg61nMQ2HOjlFvDvJ0cnx00x/6TBh9ej8yRbMKHOqFzpYnHcs618Uy6TxHxlWHbit55AxVrRrMM0pe0wyv1GmZdYY/EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776428254; c=relaxed/simple;
	bh=VkdmlhJfoP//y2CNu5RQDw8qcsxKx2j+MDHXX1JMRo4=;
	h=To:Subject:From:Message-Id:Date; b=AGgKO1tj4bXAHA+VDiy3Z2W0qGfgKPR8//wn9uEjIFBLyNJCHeNehaNnNBXpG5VTDWRKslW7X6w1va00B3W9cc5iivFjQ87z8cANuiqA+u+hACWT82c1TzTX+WWBlqcJxWvhlQ7ivJK0+ir2CR10aec9r05GD2ptVG1MOS4Hu1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fd9evs/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fd9evs/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC72DC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776428253;
	bh=VkdmlhJfoP//y2CNu5RQDw8qcsxKx2j+MDHXX1JMRo4=;
	h=To:Subject:From:Date:From;
	b=fd9evs/miv9F/F+CzVicY08yYwBr39MpaKl3Ot82ONh9eacB3arSpnXtG8bRKkxXW
	 PZaIoWrDkc+Bn94pWvZpuhR5MIJ/u5Y+yU02BwEpEvhiSQP40GzQE7GbNCxnSLIrix
	 Mux2kEkWGcgukJo2DIahaUN+Zg1ap/NVg5JXeWgk4V1FCy3zWzOOmBWEuZCF3XQecO
	 mBPMImgyAKeQOyQ13NtWJtthK9nxvIlnh86fERDbA9jkfcF7JvEstbABN5ECwypKv7
	 FB1WQOCbH24iOmOJlOj09nZS9s4BVCSYDvxOjHRrCmpHRYwQ6J7kttf87CWsi2iJnb
	 Aq/f9RQ5SRHXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC77F43699
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642825369.9725.16216396117993347104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4955e42e4788db9fd383e8c64ab5128239263f7b4ec256f006e6c416edc9eb5c
Date: Fri, 17 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776428253
