Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3221D10E0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749350394; cv=none; b=Fc7evr3M/a4CmhhhYsWbQm2AqGHkT3zKWoWE+xJe/C/5mgQmpFvY7O7lbQ/BQRUtVOWDXfDSIyq5E0lcrTDnL+2l4yv+ddtcWWFSyxJXc9q5oocvLsb0Ja+R0vlzbVY9XkIioa3uLGz2N7q68NlHx8AgDTPCQnBsH2hnXoa3nG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749350394; c=relaxed/simple;
	bh=6zbz3PL2obUznPN+YPg19bTCT1G3M5BUAoZtmFpYjS4=;
	h=To:Subject:From:Message-Id:Date; b=TMGOIcdBn/GCWLFwvI6bG9DCu7Db40Dp9Lemx5FucMHYfc5CH2vCjYv9ndKeoRwI+VV25H78PTGhpjeOuQWEBEO66U03ly1rnKDqe0xgmdaZeRmU3kJUA/yve7z05ygNgPcKng2I7dk0mztPdG2qyhXroQFzxJff//Owtxs6yeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvjbGkOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvjbGkOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749350393;
	bh=6zbz3PL2obUznPN+YPg19bTCT1G3M5BUAoZtmFpYjS4=;
	h=To:Subject:From:Date:From;
	b=cvjbGkOeJyEN3vZ6wwXZKj1gU30PGagbHO5acQTyJcDvJJv0VCa1wHdxvBQo5xUCn
	 2MWj64GHnGBpRLbbwSg1ojcU3W7K6BDV1M4hS0NsMFSUh5UT61P4Bna4YmyG1ihFCQ
	 CH9UYlXwnbrJ1uQ7AxVJqOButi0lE/CZgloII/3ToJf3vKMhsuWC1jMp9JbC/dTMDr
	 JXHDvhjpersIsUdl8Cf2kTF71H8g/LZyNIRAbTl7/PyZyhpPvv8yquHoxY9BLZYVTo
	 RKWJpcuIF6Hfue5NYPcoYj1aDfmv6q0hb+aP/eXCQySKqpxArpQXjT82xNQ9YZ9mz3
	 4beNv35aLltvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D5C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935039357.9603.8711007266471849084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5603783a94b407895874093aad9ced7d3b15b974aa049b5d80e1bb16cf45aa3e
Date: Sun, 08 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749350393
