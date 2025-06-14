Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C66D1E3DEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749899994; cv=none; b=HPzeIaxPsi4orSpmKH8VMDfWb024WpyJkGv3VvwESfjoaclQdJFzZbrq+b+eM17Xl44elOuqJKYjZZ0ACEpRXpgx2YAtdMys0+V3JzyzjujcYn25t7BUtqqw7TPfdJkfLxmeu2j1pvYJep3kzO8Its4c4De34K3cx76L3BratmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749899994; c=relaxed/simple;
	bh=AGV5lN6H/YtXkLskZ0AqiGwq8Xz0pp3TDChKNsfpBJc=;
	h=To:Subject:From:Message-Id:Date; b=c7QbXIDjivTC0YykRpRC4q+sfqnb8ShtxhTKWRJEY0amKMW6I/hVTN9cP7gBORGvJJPS9598imWNPt7CTpYSmR6mRIBJa6857EaJ+h2oZn4rfP4ZvhA2Rcf913FpyOXp9H6nDn5ey1hrkdJ09fx92y3i5r4/Ld1k5qPNcIqlHQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyXbvsQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyXbvsQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A363AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749899993;
	bh=AGV5lN6H/YtXkLskZ0AqiGwq8Xz0pp3TDChKNsfpBJc=;
	h=To:Subject:From:Date:From;
	b=uyXbvsQvP86vKisambvephp0kmjHJiB8iVpxIY2XVj1Qd4kXe019HYajy6zgvgEZs
	 mhtqPD4yYwx5Gypt1HdoOcnPaDSZBh4mn2N6WvI4YCZQJOFUDTov8SX5rT8ZunvV6y
	 ARsa4H+ZgyFSuKL7a57qbYTQJDlLEzBKATsItFirX5DjcmdZLEeBRFVN00A1axixBH
	 mAE6mShmItl/ZDIAWrVQUHO7kL+tDYBPCzWr5LIYQNebodABqYq6krEWYXnFE84RqV
	 /bSnz9GUaE5qRHcEi5DPQXUj1THAj6Sq0LBI9QIJpjjsxVPf3ip3iTOC4BXRoIeXye
	 SSUUfK9DmD1RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3EC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989999358.12232.11797468419453966292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93065ea345d4c0eeec1539f6d713610bb8fe29d8c812df847ebcbbd302d048e7
Date: Sat, 14 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749899993
