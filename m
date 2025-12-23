Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F23123A9B3
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766456034; cv=none; b=ZwS1LdxbvbylbdqnorlityldnH91MHm5JZxSEsuzyALNG52moxUE/mCyMJIGK7LUdUDM52VPiM2VjErzpO5CGyUFlaGd/QTwcRPJX1Z26WEhVhaNMNcOFt1CKIj9X2HJhfXjT6Ec2qAi6rHIBU/MDU39Zu/8QGOun5F+vAjYbUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766456034; c=relaxed/simple;
	bh=AT92TQbivBb6RHaNb6oG8wqTQSWtwDqhLbNKLcDSpHI=;
	h=To:Subject:From:Message-Id:Date; b=kSrTPwlUQj9DD+LSdAYooc8qIE8HUNN1eUeKKd7gwKbxzlaiJ6oXXgJ4mqoU/214VE2rf1ajXyBey3hGH2qT87EAGECYHs2VlTHEiuI4EBIqeFFoY7h7y6EXnLzN9jeJ3xFSQ9g+g0QIwRTygxqNfp8idqeHDTOJOgCVC/9CMrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDhLm92i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDhLm92i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF53C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766456033;
	bh=AT92TQbivBb6RHaNb6oG8wqTQSWtwDqhLbNKLcDSpHI=;
	h=To:Subject:From:Date:From;
	b=uDhLm92iAzcNw/LQjo7hFxePJqquScpea+hMJDs8vvjUXEx0mXuMq2hNsc9Pea6Tq
	 SoTVltF1gpbeDzrWdnf9IL4JW/YUENAJb1oi+dSkw+IvTX3Hs03sAvxrW216nrM+yp
	 JxpYYFFSLYpklzht//FBbzuU39wSmZcMDQpIXJAQAousm3lwEV6p39ZcIc2DRkOhj8
	 wtVRRsmCi7udpHxCDTjda1HXqOd53gUbGmFtQ2J0QLqtZID5QSLBf+UGNhzbI0Lbae
	 SuHlMXoFhpO17Z8E6ppO2criTWH6wzXMKlnIqt2hTpWkyTTSh5Kb1af9AP7L3cIKjE
	 Ll4+N5U+fTUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EDE6B26B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645603357.17652.6813630520744439824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7eb4cb2f2d1bc058fb74395f9f2df510796a1209df77af69e5c6d89fee6a6f
Date: Tue, 23 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766456033
