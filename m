Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E313264F3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773791694; cv=none; b=Lu1sbRRzwTi06B9MI1vn6gcnBdegSWbfjsTiD6kEaqWsuLbETTje8iSieCX6/qOmxYUPZE6LVs7rWab0eOT2JPfSHTJIydIq3blCpPjdNl+Nhd0Kl++Etn1jkZ15gPw38UTjtBSLqWoXl6syOrdiZq/ZeOMXgTG4Ri8xlCGEy+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773791694; c=relaxed/simple;
	bh=9cMSapJQTDnoUvd/u4WVy4tc+036gDGJ9XFvzVja11Y=;
	h=To:Subject:From:Message-Id:Date; b=YEcLuum6f0bDyvq7gK0xyDjUgUUwVj0S2B+1Vfuf64aleyQwo6skddtXWo46WWW9SGqFax00uBVtoBWl+MueXlSRKrNABFshyalHIjnmqARnxTkmgZRKrJJbHN2d9EEKQmUyn0Pg7AxQn5qzs+/5dy23k29wPCH9nfw6WIZy7Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAnH3qLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAnH3qLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773791693;
	bh=9cMSapJQTDnoUvd/u4WVy4tc+036gDGJ9XFvzVja11Y=;
	h=To:Subject:From:Date:From;
	b=uAnH3qLEorvf5dZaiqChhSTkxuBy0fKefXZU+oYlCK8iGdBWm5/uEm9RBmYxFLdEx
	 810RX5VgEJ4k22z7xwB71jG5bdRn3CoQIEDIsdhh7cEE5Tx4ee1hsuQeZr1XGc3K2P
	 SNqUP7V0Do5yypTr63p8s7u+Jw4bkBJ7Ii1d4DmB7lDVZ+bJaME0BPp0UKdGAnXrc3
	 /FI6pUqS5fWKo78IxdB45xyMOgt9iOmDfWacKLutV+Ca4Xj/YFs8cdNHxzApDQ3MOL
	 5/P+zXA9WvK+a0BZKFAAFYLHDcKIgPRxJVCSX7EREHGhFAMlUlSCo78vBMjy4U1VYe
	 ZSSx++Vl/BkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1BFF6E9F
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379169357.2472.2896440826162828306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42653851d43bc52ad912e7521dfbb8276aaddcf25980ff35443e08ae59dd07f9
Date: Tue, 17 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773791693
