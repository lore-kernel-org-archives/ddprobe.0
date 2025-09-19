Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF2134BA29
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758245994; cv=none; b=DjqzwpqhnCF4nw8BbeGEqrocQida9HbtEBHsdH/qkYGxXnTYR1207gNddUhgikn3d0LK5DyDMb0sFIEanbWyWDHQ1Hw+PKJPgFh+oe33q3iVQnu/wEXsdBE8OnLL72cmzCKZHnCNtZ7wbqCp6Q7IlfD+LpZXIoLbk9SZ6tave/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758245994; c=relaxed/simple;
	bh=CXgPNrtF3mmG/3LUWlKPhJvXWEAU6nh2OPSykgOt/YY=;
	h=To:Subject:From:Message-Id:Date; b=Pq8nZIMddkQT35JoiuNdH3HVfAWnaTuFA4DD+oWwhFdY7fZrvrg6GcF0VttWP8ZDg7IReeUqPAy+QBXh8xPkdPzxRm33F6+vtUQmfrCTTF3Wm+BWRlJXcwyVrH0nHJs5QyPAiSaan0iTZoOt37aMXOGcytwwA+dCrRlOHAF9wrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzsWN8Wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzsWN8Wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758245993;
	bh=CXgPNrtF3mmG/3LUWlKPhJvXWEAU6nh2OPSykgOt/YY=;
	h=To:Subject:From:Date:From;
	b=LzsWN8Wf1eO2LtzD3qSvwmFzOIaofNEdmoC7aEU7pkQv0r9IdRoYu8QzEdZhimGY5
	 PHBjjr53+QJJ3Z45h5uQzh9pQrvKOj9KgUEefYLlB9djbyA0/UgIpf62FowAXm+ygG
	 6sw3hnO5C3g6fQ3udo3nDFL8GuO4wtbxiI3WW6KZVRMrnb9Z6symNcHhnRPlFneGXp
	 hbIhLqd2RhX0kEy5efGr+/hqMCJYt426+uligshTzllb4jrsUkVb0yha5zcEi54lC1
	 irmh5MK1rnHukMclCEd4IXBoGN/S8JM/DQS4cxaxnVvo8XyWgQW7CoTZUcIlHL44ts
	 qb/VG8wNZMZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC5CAC5A0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824599358.16521.4896432776725955958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c5aff4eab14edf5327b58c395e8478c1d49d7139bffd8c339437fcd7ebf841
Date: Fri, 19 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758245993
