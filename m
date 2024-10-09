Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1559932C85
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728465354; cv=none; b=tJBY3AVWmUq7wVEWkVMIj/Dj32vr6d6CdjGCMrZ6lPJEhfhKtiQH261v+C+xkuXhl7R2Q0sA049cQ8m++osfVNpPBhyJjEKnC8tPGK7nwqzZP4g5gWDM8ggwVt5aJg5ZJjeo1roKcpcyq0PZFNSuhHKT1b8huls707kKWN3apnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728465354; c=relaxed/simple;
	bh=95q3NOAPaX86RDropCi/rVAyQxzIqLUI6H2x75AJxOc=;
	h=To:Subject:From:Message-Id:Date; b=e4bbgT9HVpwC6BuQoGwqdFmiCV1cn9XCC+AeKocdqQgSVyZnejYGVK8gYHolGzxc+QxOCGwyyD9HFPlpKFAXh4YhPCfl7FFgux1FWopwIdnI6Byp3DBcmJ8dmVVyYs2gkydxiY2EGE/BtsG8HCLE6DvIcwuUqEQKemd37nCJ90o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js6DoEzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js6DoEzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3894C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728465353;
	bh=95q3NOAPaX86RDropCi/rVAyQxzIqLUI6H2x75AJxOc=;
	h=To:Subject:From:Date:From;
	b=js6DoEznvqXRXWKQmz9OXn8XQqcBpAaDoCp7+l3bjruGkYa9xexf2AymZ1NHmTC17
	 DSNcPxfRLh4pPyL2TTlwjOQbvGhQ257OwSPILYpEWCSkztwJOqM4xhUW8ItWifb+cD
	 ekEQlAMFlm+doOvKgzZFuP5VjHVPiolwT6YqTxT+P0n1gy1IzCQpLtDo1J1C1Pjoca
	 nO8q2R7rXeA2IhTiABglxjXHkHlKGK7pu80NQWjSRG+WGR9V1FNjzpKCzuKoiWRmep
	 J2wwgj6ickQxxCZZ0aeHT3RwJa73Wi8bkNMR3TzXxArTaltv9VxXLNgzgqpy/Gc1Jw
	 O8kceZJJO2xyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A60CED635
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846535358.4959.6762919092352855285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235e4181d3db64d2c20e0620b5063da8d1dbd8124c9d13b5029d3c75f8220718
Date: Wed, 09 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728465353
