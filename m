Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16812377543
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769687634; cv=none; b=je6qqN8gpmK6eQdtEchoubX/YX217af2oYBtsc0vvcFK/tb9kzGt0fwsp6Cjz8o4+94n22bgIp2HjHCsdIZZ2XlrTn8HLGq9nL6I3sr317pK6GDU3Ko3cYNH3bmqoCCB9diPd4Kf2a1A70Ak9ueQ1A1U35SQisJs+lwFbLL8PgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769687634; c=relaxed/simple;
	bh=JkHlK0JRmGMg1q+BnnKThMq0m1CQkWRDP4ZY6sFGGho=;
	h=To:Subject:From:Message-Id:Date; b=lny7PEmJnjA1jq6NveIE6Dm1IK0SVYGUEaGNC4P3zqysno4DSIsBFjCWweYDnQVKo+gvwlajqpxa4sOhZvlOxldeV41oXCU3AmSoRBguIV7yB6xxXVXzc3u3IoxBAFKHojCnWPD70UbxbOGGUEfBlYE/b5PqXwlZR9PZ7NrNRzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gspter3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gspter3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769687633;
	bh=JkHlK0JRmGMg1q+BnnKThMq0m1CQkWRDP4ZY6sFGGho=;
	h=To:Subject:From:Date:From;
	b=gspter3RoP9yE8uvEnUKXODwoujOUU4KZyxmOrbiTJVKbATdW40d7GKoyWmORb4Dl
	 oQJ3ZPkm/KYaeq3V6MAnQy+ar61aMTZ+NvhhynOX+YrPheT5R7qEpf3ORbYfEKy+m0
	 0FIiOzhIIYj1aIeW7zg5L6wC1Rj3eLFEbwJDyy0lnX4ns9erL+RKcbUtIoYW977lSc
	 IS3xQqfKbqLQUOTt5dDX07UmrJG5OcDU1m7r1MOrkw6nleH4e2cv1q+bsyRo78LmRH
	 Hw0vwtfuL4uC25qKkLBUj7wsLIlmuVB+kMD2Dk8LiAxOKUoHt2rzhHEenbXAO2NkBi
	 4ycwXy27GwypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CAED6100E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968763358.24475.3858236750907003207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cbee05d63e4708cdb3c9a235408e1aa3352b0188de2907261785045c673210
Date: Thu, 29 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769687633
