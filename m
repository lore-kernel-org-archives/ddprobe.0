Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE93237D428
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746485994; cv=none; b=Jtxk8jWK7JdSmDJDay2uLlXgKGKibepuY4y8+ktr7B0YV4k+gyUCwSHSnISsMbJNata9JEJXXrB+uZGkKxwt3TkXBR5zPOWZ6FiqEJU2QpWVwRBGwkpUaEa8grtXdhcb2d9qcA5Rkdsn02eGd5kzB1a4Nupal8l1ILj6Ai0oXM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746485994; c=relaxed/simple;
	bh=GLR3U2vKpHF1ndVytF76NXDMgrf2YaSZNJ+She2LUcU=;
	h=To:Subject:From:Message-Id:Date; b=UrtULKnOKVLyCaDa7VqchpNih1bs302X5GdXNd/h+zlqAOlwPns9B/Hqc/W2dutPXhve/fJdaVjI8Vl2agON8K7iCMn7Au9o44HbzsvbTdMGE11DkKjItEAlpGfUx56VYrczH8HxihUtOZlZhVXrDZM8W1OZmVhA/f8MNmy0Ln0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4R+0Onr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4R+0Onr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B45C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746485993;
	bh=GLR3U2vKpHF1ndVytF76NXDMgrf2YaSZNJ+She2LUcU=;
	h=To:Subject:From:Date:From;
	b=e4R+0OnrHGVowxdzJfj3pBNAPAn+qWVW+TxUXfzGuHwkdqao9+yRTMecwJLOR2vqe
	 FixWOZKHbyNFTohL41O1+l1l17mNkH30cs7ECY96M/BdzHpdRZmPo+ubmR4AJHBhp8
	 fE4RzJwuU+olwa7MiIokqDjoM6PrBZW0sLGW9pAIwhf2ySLA0Ml4pYXxGbI0GBrO2l
	 +LfHBa+104FQIBdREhS33KcVFG7iZoEen0jpmfoRjF4aIWeTHYIeqwMPlSymyvCQlP
	 cby1XltAfqO8urTya0a5yzN16rOQGtAzBFSTHr+8fY9UI9Clm7KyqYQSa/pE4njo6d
	 nWq5/tD8Mt04Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C217C3ABB9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648599362.6578.13920978562441028530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb0b1e9858abb9ec94fb9d34863ba0a4c1fd75bcdaeb47b394d6b9fe4b9f3a4
Date: Mon, 05 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746485993
