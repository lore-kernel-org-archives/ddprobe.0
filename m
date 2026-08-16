Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706F13A4F3B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786888234; cv=none; b=JkyVoQUIh+1v89MOKuFRQqKjTFevygBTTBlHS8TuWfc335uKQV3tkMOC3d8CG4yBw5nJYOnfaWsj6PIiwor68HFrLxEc/AbqzwiVtHZMSSwOKF1ELrOb3+EJdr+v9GKv9ad1ZqWFF3GBzaARQsLAha2hg/IOR+KarX5rYpHF8yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786888234; c=relaxed/simple;
	bh=Ae25IN/8cOg13HkwRXil3bSZaj1RfmsKr8eFW7E4wVY=;
	h=To:Subject:From:Message-Id:Date; b=kxGskXkB6JHHE4IgbmOU+3eZSKbU1a9OKn9JHab0MHJDZcb8MM5iqBeVwi9ZJOeQlvEXfIgt/O4IgNrHBc96y7F20cYVnRh/8fcE9qOoIHSNkYo1QK3E7v+/+22zs9blDJH0BgTIGU41XG9eKrsm5hHPbIRpCNC5ml4I+W2et9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRbS/zFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRbS/zFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8973C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786888233;
	bh=Ae25IN/8cOg13HkwRXil3bSZaj1RfmsKr8eFW7E4wVY=;
	h=To:Subject:From:Date:From;
	b=jRbS/zFJd79sYAdmYEyVt9xUafCB6E4yQRh0W2TG4MqKiR8UiXQUxDW1AIW7azlzF
	 /ieu1j+EjiiL/USZYGXK6VGCXXJUY+v3BOwYNUzCRRbXE4KVnFGgsvk0BdNrHb+6Fa
	 wZKfql+UvY12dGFbUODUMC/1gHsSzWtstnZXXIgYfL8ktjnWdK8yqIKzhMOdhU5P0R
	 O/h1luKklATSICvbCZPdY9HPOjW7BNauOJG8+xVPCIExx06dSriy5hdt7Mp4R0pzZO
	 8exoRVjJ20xBNF25O4YrOOu38WQJ54koxPdK3C67PzLSVVityQdsO7r1CExxDLA4cW
	 4b+5ORFxanT/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD622C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688823368.18239.12428061624780703787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd8491cc656beb4cdb2ed81a56a76bcc3ed84cb12a2e3ac8062dc527d64a99c
Date: Sun, 16 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786888233
