Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B62211A14
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786852834; cv=none; b=PX+s/lpaAlkQTJZNA4jrQGEakVKu4uKEnJpRRhLa25YtaISK+DBZbbGnZBJQvGElIGlNqkFzXxYjhjrDdnw8YodtT6peyKkWDt5rnCliHQEuz+u3HzGREm5hP4HWCTeyib7oh774NqtVQqwYcJYMZlENOQhfuSozVS87lnzyB7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786852834; c=relaxed/simple;
	bh=2qCLXijGqwXlj2bXdDl3DulrM933arCTF82FsEoDsMA=;
	h=To:Subject:From:Message-Id:Date; b=gV+b8UIBKYPxgSw9bCSVqAsjV9HyuyXxzgxzrEJ6Ih/0h0KW5Amw8yOpWWVjgRu9HNugbYimezeqznEyTWnVwYFN/s6JX9ruo7f1YCH60scp7517bT3eIITu8S3X0Xango7R4QZsNiPs3a/TtjwlOzrms5SEaU/TSXHTkHbUHGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSe4rTPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSe4rTPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3782C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786852833;
	bh=2qCLXijGqwXlj2bXdDl3DulrM933arCTF82FsEoDsMA=;
	h=To:Subject:From:Date:From;
	b=lSe4rTPdEc8fTwpdZ+f7tDlaAVwn0Plr3EkfK+m7ckOOkCyI64uPZkfThp1Xjt+L2
	 i6lyCtIIr1920ntsJhUP3gKCZgdywkpbj1Jkqi8K0LqoZRB1CLpmU38mbM/Sonsv4e
	 LdkDcvWNMpCAEtI7vRdQVF2Gl9PfuCPChIHXATNX1KoKAde+JzlXv6l01s60hZ6mi6
	 gM2mQL3qHPMAEFx63lh6pSSBICROs1VNIJEGbBxYIfqky3lhwHMuDQd1SKxNi42eUz
	 6Rw9bEtwJ8CW3zTO/mit3jjWRJ51TLWHAmQ7yI8rD2jqmuZdjhBUR3KbFxZMFd/nla
	 8xhNAeYUbuVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0641C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685283368.26256.12055480884289573525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283363bc8d5ffbb7729d95878bca7d5124e3dd7357558d46438b60550beb435b
Date: Sun, 16 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786852833
