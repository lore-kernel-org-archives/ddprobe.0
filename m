Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1716C38DEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742185794; cv=none; b=t3Y0NpA3NBJtXqucPC7wh6Ozu3bTAAzqkZYj9npgiy+zjmXnr5I9KeNzOhX2VbBAhxJzgXrZBQcQ6FN7t+W3EtFUiAb3uwKByBdTT5+1GiCNTZqRMAuSoxjbXp+8Lgl/6YpR/0nuSnTQjnEnq6Kh+3990sm3bNbYQmUM+HEJf0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742185794; c=relaxed/simple;
	bh=7Q23lzxnrVykWWjhbEbp+gDuvzkr3gAO2gjmPHmd1o8=;
	h=To:Subject:From:Message-Id:Date; b=VKtbw97158LWgfiHhs5H8ihaqPt48vDRNxtk73FTb348WaKqib+yIbhsLSCVi+ysF5b4ZAzOIPh8/pqGnRV+n4VCTL78IO2wC+CkMaizlHVyVTrTHFsb7uZltiCrLh6bLog0UFDF7L4EnLo/IgW8WShj18vmoBHna5ZgMtctQ7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cpef73Ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cpef73Ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87BCC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742185793;
	bh=7Q23lzxnrVykWWjhbEbp+gDuvzkr3gAO2gjmPHmd1o8=;
	h=To:Subject:From:Date:From;
	b=Cpef73UrjL0I8dir8Cs3qeJoQeIZ/gFdDDsZ/VDZinuKgTLfMQimGpdVYvYBNJOgg
	 KFw4HCFnHFAHZFCMa0FCMVlWsGiBPX5ZFDKwgC6fcEc8atLWuvFt/h45Sqfcm2W2Is
	 qq1eKtcVM3OVE/G5v0NjFxvQCYpv5essWX9VvVu1sJpdp6gt3rrMwcCFUXU+erAAUE
	 IPTs8lZBNh3IPXYMEMJMmJWGPaAnVTK2KxG5Qo4MQa9LjDnBYgCL6gUlM/qo+qjj3O
	 1vE77/fZJZpYWqyT8Ko89FG/IlloHNGBm1EJrC8/tEyDqIWktDbb5+EqQ/RtNPq10U
	 vMiujVf1W4hxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B084CC28B30
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174218579367.24281.15022713770016599267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd4ff1ad456dc4a5ffdce37cb92e78b70b7bda9b4c48b7b9fb7f7abd53ef7ab
Date: Mon, 17 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742185793
