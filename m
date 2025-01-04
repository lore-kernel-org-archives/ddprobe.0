Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAE51C3F1C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736010954; cv=none; b=JKMki/tq104q2R71OLD+AuKRo6A1xniy/lXkmlzcNidBlvJAJvItLefGUgO4nAJzO4MRERXDMeBj1v6Xk9kthB+QeIDCV+Bt3hclEOpyNuxuLzfxTiv0qLuwVZhFrSnX0UbXx6u4auJZo6LEUbpkijmFH3Clse7Bw/Dcj+8kvy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736010954; c=relaxed/simple;
	bh=BKUTjQnNh3dbQBuS/8vDM2iTU6FVhYlVL8L9HCix1Xg=;
	h=To:Subject:From:Message-Id:Date; b=ZQ39+wdhZpYBUcpI+GkuBTUH/duZVqHIHNHzq50Ovqp8HXTCE4rZHtji8E1eQ/Q6btF9FlMMSB/FSg5Pdsv9fr+btVfPN4tjh1xvxiQxzVXn6l383DXEPBij9p2FQU/g/cZdT+T+anO8P4p0gCuoR+TndxWg53vi9sEz6MAceYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd/JY7Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd/JY7Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD7AC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736010953;
	bh=BKUTjQnNh3dbQBuS/8vDM2iTU6FVhYlVL8L9HCix1Xg=;
	h=To:Subject:From:Date:From;
	b=Rd/JY7IqUgBXxJ6IF5YHqP2pc/Z8QxNDge9VoJ2fi5DXBpXqrQJGLPSs1HZfFBYDK
	 ANouriQiJHqqX1yNj5T5i04lLz7ZyqZbMhkd9urchZym2O1wkaUctUa/KGu8GcLk6l
	 NTZAAw6aaZHrvChM2bY4UGeeV+tiYJZd+9TifcZGZAT2b3D4sX690xOP/dNSayvpBv
	 5biKcu6th4hI/5f4aSr++jCrRtvUuYeqjtDM/er/BrYCIwZIZZeaRc5SeYNQTfLfrh
	 Pnrm5vW8e+LUwfpzgX3JYsTY9Wf0wyulggqc/Urzk9JhZC+JfMW22YTsVHVU39WNM/
	 rUepH+4CfU5ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E5E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601095358.27049.7557252533849501111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0607684a5a2fef8c3b58c3512e00128d61e2f967c23988f32394dc4671a21dc
Date: Sat, 04 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736010953
